<?php

namespace App\Http\Controllers;

use Flash;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\Category;
use App\Models\Practice;
use App\Models\Client;
use Mail;
use Validator;



class PagesController extends Controller
{
    /** @var  PagesRepository */
    private $pageRepository;


    public function landing(){
        // $latest_supreme_judgements = Blog::where('status', true)->where('category_id', 7)->orderBy('id', 'desc')->take(3)->get();

        $latest_supreme_judgements = DB::table('blog_category')
                                        ->join('blogs', 'blog_category.blog_id', '=','blogs.id')
                                        ->join('categories', 'blog_category.category_id', '=', 'categories.id' )
                                        ->where('blogs.status', '=', true)
                                        ->where('categories.id', '=', 7)
                                        ->take(3)->get();
        // dd($latest_supreme_judgements);
        return view('pages.landing')->with('latest_supreme_judgements', $latest_supreme_judgements );

    }
    /**
     * Handling all blog posts
     */
    public function blogposts(){

        $cats = Category::all();
        $blogs = Blog::where('status', true)->orderBy('id', 'desc')->paginate(5);
        $recentposts = Blog::where('status', true)->orderBy('id', 'desc')->take(3)->get();
        $archives = Blog::select('monthYear')->distinct()->get();

        return view('pages.blogposts')->with('blogs', $blogs)
        ->with('recentposts', $recentposts)
        ->with('cats', $cats)
        ->with('archives', $archives);
    }
    /**
     * Method handling single post
     */
    public function blogpost($id){

        $blog = Blog::find($id);
        $recentposts = Blog::where('status', true)->orderBy('id', 'desc')->take(3)->get();
        if (empty($blog)) {
            Flash::error('Post not found');

            return redirect(url('/blogposts'));
        }
        return view('pages.blogpost')->with('blog', $blog)
        ->with('recentposts', $recentposts);
    }
    /**
     * Method handling individual category
     */
    public function blogcat($id){

        $cats = Category::all();
        $cat = Category::find($id);
        // $blogcats = Blog::where('status', true)->where('category_id', $id)->orderBy('id', 'desc')->paginate(5);

        $blogcats= DB::table('blog_category')
                    ->join('blogs', 'blog_category.blog_id', '=','blogs.id')
                    ->join('categories', 'blog_category.category_id', '=', 'categories.id' )
                    ->where('blogs.status', '=', true)
                    ->where('categories.id', '=', $id)
                    ->paginate(5);
        // dd($blogcats);
        $recentposts = Blog::where('status', true)->orderBy('id', 'desc')->take(3)->get();
        $archives = Blog::select('monthYear')->distinct()->get();
        if (empty($cat)) {
            Flash::error('Posts to this category not found');

            return redirect(url('/blogposts'));
        }
        return view('pages.blogcat')->with('blogcats', $blogcats)
        ->with('cat', $cat)
        ->with('cats', $cats)
        ->with('recentposts', $recentposts)
        ->with('archives', $archives);
    }
    /**
     * Method handling category search
     */
    public function catSearch(Request $request){

        $id = $request->category;
        $cats = Category::all();
        $cat = Category::find($id);
        $recentposts = Blog::where('status', true)->orderBy('id', 'desc')->take(3)->get();
        $archives = Blog::select('monthYear')->distinct()->get();
        if (empty($cat)) {
            Flash::error('Posts to this category not found');

            return redirect(url('/blogposts'));
        }
        return view('pages.blogcat')->with('blogcats', $blogcats)
        ->with('cat', $cat)
        ->with('cats', $cats)
        ->with('recentposts', $recentposts)
        ->with('archives', $archives);
    }
    /**
     * Method handling contact page
     */
    public function contact(){

        return view('pages.contact');
    }
    /**
     * Method handling feedback page
     */
    public function feedback(){

        return view('pages.feedback');
    }
    /**
     * handling practices method
     */

    public function ourpractices(){
        $forTitles = Practice::all();
        $practices = Practice::paginate(5);
        return view('pages.practices')
        ->with('practices', $practices)
        ->with('forTitles', $forTitles);
    }
    /**
     * method handling the practice
     */

    public function practice($id){
        $forTitles = Practice::all();
        $practice = Practice::find($id);
        return view('pages.practice')->with('practice', $practice)->with('forTitles', $forTitles);
    }

    /**
     * method to send email
     */

    public function clientMsg(Request $request){

        $request_copy = $request;
        //define rules for validation
        $rules= array(
            'email'=> 'email',
            'phone'=> 'size:11',
            'subject' => 'required',
            'message' => 'min: 10',
            'enquiry'  => 'exclude_unless: info, true|required',
            'info'  => 'exclude_unless: enquiry, true|required'
          );
        $validator = Validator::make($request->all(), $rules);
        if($validator->fails()){
          return redirect(url('/feedback'))->withInput()->withErrors($validator);
        }

            //create Client
            $client = New Client;
            $client->name =$request_copy->input('name');
            $client->msg_subject =$request_copy->input('subject');
            $client->phone =$request_copy->input('phone');
            $client->email =$request_copy->input('email');
            $client->enquiry =$request_copy->input('enquiry');
            $client->info =$request_copy->input('info');
            $client->message =$request_copy->input('message');
            $client->save();

            $data = array(
                'client_name'=> $request->name,
                'client_phone'=>  $request->phone,
                'client_email'=> $request->email,
                'msg_subject'=>  $request->subject,
                'client_message' =>   $request->message
            );
            
            Mail::send('emails.enquiry', $data, function($message) use ($data) {
            
                $message->from($data['client_email']);
                $message->to('willydbd@yahoo.com');
                $message->subject($data['msg_subject']);
            });
            Flash::success('We would get back to you soon.Cheers!.');
            return redirect(url('/feedback'));

    }
    /**
     * method handling search query
     */

    public function search(Request $request){
        $cats = Category::all();
        $search = $request->search;
        $blogs = Blog::where('title', 'LIKE', '%' .$search.'%')->orWhere('body', 'LIKE', '%' .$search.'%')->paginate(5);
        // $blogs->dd();

        $recentposts = Blog::where('status', true)->orderBy('id', 'desc')->take(3)->get();
        $archives = Blog::select('monthYear')->distinct()->get();

        return view('pages.search')->with('blogs', $blogs)
        ->with('recentposts', $recentposts)
        ->with('search', $search)
        ->with('cats', $cats)
        ->with('archives', $archives);
    }
    /**
     * Handling archived search posts
     */
    public function archivedPosts(Request $request){

        $monthYear = $request->archived;
        $cats = Category::all();
        $blogs = Blog::where('status', true)->where('monthYear', $monthYear)->orderBy('id', 'desc')->paginate(5);
        $recentposts = Blog::where('status', true)->orderBy('id', 'desc')->take(3)->get();
        $archives = Blog::select('monthYear')->distinct()->get();

        return view('pages.blogposts')->with('blogs', $blogs)
        ->with('recentposts', $recentposts)
        ->with('cats', $cats)
        ->with('archives', $archives);
    }

    // archivedPosts
}

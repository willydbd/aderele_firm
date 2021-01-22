<?php

namespace App\Http\Controllers;

use Flash;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\Category;
use App\Models\Practice;

class PagesController extends Controller
{
    /** @var  PagesRepository */
    private $pageRepository;
     

    public function landing(){
        $latest_supreme_judgements = Blog::where('status', true)->where('category_id', 7)->orderBy('id', 'desc')->take(3)->get();
        
        return view('pages.landing')->with('latest_supreme_judgements', $latest_supreme_judgements ); 
        
    }
    /**
     * Handling all blog posts
     */
    public function blogposts(){
        
        $blogs = Blog::where('status', true)->orderBy('id', 'desc')->paginate(5);
        $recentposts = Blog::where('status', true)->orderBy('id', 'desc')->take(3)->get();
        // $archives = Blog::select('created_at')->format('F, Y')->get();
        // $archives = $archives->distinct()->get();
        return view('pages.blogposts')->with('blogs', $blogs)
        ->with('recentposts', $recentposts)
        ;     
        // ->with('$archives', $$archives)
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
        
        $categories = Category::all();
        $cat = Category::find($id);
        $blogcats = Blog::where('status', true)->where('category_id', $id)->orderBy('id', 'desc')->paginate(5);
        $recentposts = Blog::where('status', true)->orderBy('id', 'desc')->take(3)->get();
        // if (empty($blog)) {
        //     Flash::error('Posts to this category not found');

        //     return redirect(url('/blogposts'));
        // }
        return view('pages.blogcat')->with('blogcats', $blogcats)
        ->with('cat', $cat)
        ->with('categories', $categories)
        ->with('recentposts', $recentposts);     
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

}

@include('pages.header')

<div class="blog-body">
      <div class="row">
        <div class="blog col-md-9">
            <span>Blogs</span>
            <hr>
            <!-- blog loop starts here -->
            @foreach($blogs as $blog)
            <small class="month-archived">Monthly Archives: {{ $blog->created_at->format('F, Y')}}</small>
            <div class="post-date">Posted: {{ $blog->created_at->format('M d, Y')}}</div>
            @include('flash::message')
            <div class="post-title">
              <a href="{{ url('/blogpost/'.$blog->id) }}">{{ $blog->title }}</a>
            </div>
            <div class="print_share">

                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_inline_share_toolbox"></div>
            </div>
            <div class="blog-post">
              <p>{!! \Illuminate\Support\Str::limit($blog->body, 350, $end='...') !!}
                <a href="{{ url('/blogpost/'.$blog->id) }}">Read full post »</a>
              </p>

            </div>
            <div class="post-cat">
              Posted in
              <a href="{{ url('/blogcat/'.$blog->category_id) }}">{{$blog->category['name']}}</a>

            </div>
            <div class="last-line">
              <hr>
            </div>
            @endforeach
            <!-- blog loop ends here -->
          {{ $blogs->links() }}
        </div>

          <div class="related-post col-md-3">
            <div class="row">
            <div class="related-line">
              <hr>
            </div>
            <div class="related-header">
              Our emphasis is on resolving our clients matters with flexible payment options that enables clients with financial difficulties pay on success of their case.
            </div>
            <hr>
            <div class="connect-us">
              Connect with Us
              <a href="https://www.linkedin.com/in/adewale-aderele-bb454b203/" target="_blank"><i class="fa fa-linkedin" style="font-size:18px;"></i></a>&nbsp
              <a href="https://twitter.com/aderele_o" target="_blank"><i class="fa fa-twitter" style="font-size:18px;"></i></a>
            </div>
            <div class="connect-us-underline">
              <hr>
            </div>
            <div class="search-blog">
              <form method="" action="">
                <div class="form-group">
                  <label for="search_blog">SEARCH BLOG POST</label>
                  <input name="search_blog" type="text" class="form-control" id="search_blog" placeholder="Search blog">
                </div>
              </form>
            </div>
            <hr>
            <div class="recent-post-all-blogs">
              <span style="color: #ff8000;">RECENT POST</span>
              <ul>
                @foreach($recentposts as $recentpost)
                <li><a href="{{ url('/blogpost/'.$recentpost->id) }}">{{ $recentpost->title}}</a></li>
                @endforeach
              </ul>
            </div>
            <hr>
            <div class="select-archived-blog">
              <form method="" action="">
                <div class="form-group">
                  <label for="archives">ARCHIVES</label>
                  <select class="form-control" name="archived">
                  @foreach($blogs as $blog)
                    <option value="">{{ $blog->created_at->format('F, Y')}}</option>
                  @endforeach
                  </select>
                </div>
              </form>
            </div>
            <hr>
            <div class="select-catogery">
              <form method="" action="">
                <div class="form-group">
                  <label for="category">CATEGORIES</label>
                  <select class="form-control" name="category">
                  <option value="">Select Category</option>
                    @foreach($blogs as $blog)
                    <option value="">{{ $blog->category['name']}}</option>
                    @endforeach
                  </select>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@include('pages.footer')

@include('pages.header')

<div class="blog-body">
      <div class="row">
        <div class="blog col-md-9">
            <span>Blog</span>
            <hr>
            <!-- blog loop starts here -->
            <div class="post-date">Posted: {{ $blog->created_at->format('M d, Y')}}</div>
            <div class="post-title">
              <a href="#">{{ $blog->title }}</a>
            </div>
            <div class="print_share">
                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_inline_share_toolbox"></div>
            </div>
            <div class="blog-post">
              <p>{!! $blog->body !!}</p>
            </div>
            <div class="post-cat">
              Posted in
              <a href="#">{{$blog->category['name']}}</a>

            </div>
            <div class="last-line">
              <hr>
            </div>
            <div class="view-post-blog">
              <a href="{{ url('/blogposts') }}"> View posts <i class="fa fa-angle-double-right" style="font-size:18px;"></i></a>
            </div>
            <!-- blog loop ends here -->
        </div>
        <div class="related-post col-md-3">
          <div class="related-line">
            <hr>
          </div>

          <div class="recent-post-all-blogs">
            <span style="color: #ff8000;">RECENT POST</span>
            <ul>
            @foreach($recentposts as $recentpost)
              <li><a href="{{ url('/blogpost/'.$recentpost->id) }}">{{ $recentpost->title}}</a></li>
              @endforeach
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
@include('pages.footer')

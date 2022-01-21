@include('pages.header')

<div class="row">
      <div class="col-md-3">
    <div class="practice-list">
      <div class="practice-title">
        Our Practice
      </div>
          @foreach($forTitles as $title)
          <p><a href="{{ url('/practice/'.$title->id) }}">{{ $title->name }}</a></p>
          @endforeach
  
    </div>
  </div>
    <div class="practice col-md-7">
    <div class="practice-body">
      <div class="row">
          <span>PRACTICE</span>
                  
            <div class="practice-read">
              
              <div class="practice-title-msg">
                <h5> <b>{{ $practice->name }}</b></h5> 
              </div>
              
                <p>
                <div class="share-media">
               <!-- Go to www.addthis.com/dashboard to customize your tools -->
               <div class="addthis_inline_share_toolbox" data-title="{{ $blog->description }}"></div>
              </div>
                {!! ($practice->description) !!}</p>
              
            </div>
           
        </div>
      </div>
    </div>
    
  </div>
  </div>
</div>

  @include('pages.footer')
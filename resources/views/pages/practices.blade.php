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
          <div class="practice-intro">
            <b>Our Practice</b> <br>
            Our practice comprises all aspects of civil litigation, Criminal Defence, Judicial Review, Debt Recovery, Taxation, Construction Dispute, Appeals, and Procurement. Whether through litigation or corporate counseling, we are often asked to solve our clients' most urgent needs.
          </div>
            <br>
            <div class="share-media">
               <!-- Go to www.addthis.com/dashboard to customize your tools -->
               <div class="addthis_inline_share_toolbox"></div>
            </div>
            @foreach($practices as $practice)
            <div class="practice-read">
              
              <div class="practice-title-msg">
                <a href="{{ url('/practice/'.$practice->id) }}" >{{ $practice->name }} <i class="fa fa-angle-double-right" style="font-size:16px;"></i></a>
              </div>
                <!-- <p>{{ strip_tags($practice->description) }}</p> -->
              <p>{!! \Illuminate\Support\Str::limit($practice->description, 350, $end='...') !!}
                <a href="{{ url('/practice/'.$practice->id) }}">Read more »</a></p>
              
            </div>
            @endforeach
        </div>
      </div>
      {{ $practices->links() }}
    </div>
    
  </div>
  </div>
</div>

  @include('pages.footer')
<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="HandheldFriendly" content="True">
  <meta name="MobileOptimized" content="320">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
  <link rel="icon" href="{{ URL::asset('images/icon.png')}}" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" id="font-awsome-css" href="https//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awewome.min.css">
  <link rel="stylesheet" id="googleFonts-css" href="https://fonts.googleapis.com/css?family=Lato%3A400%2c700%2C700%2C400italic%2C700italic">
  <!-- <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,600|Josefin+Slab:400,600" rel="stylesheet">
  <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css"> -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="{{ URL::asset('css/main.css') }}" />

  <title>Aderele Firm</title>
</head>

<body>
  <div class="main-header">
    <div class="container col-md-8 col-md-offset-2">
      <div class="row">
        <div class="topnav" id="myTopnav">

      <div class="row">
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
        <div class="firm-name" >
          <!-- <div class="col-md-7">
          </div> -->
          <div class="">
            <img class="" src="images/header.png" alt="" style=""> 
              {{-- <h4> <b>A.O. ADERELE & ASSOCIATES</b> </h4> --}}
          </div>
        </div>


      </div>
      <a href="{{ url('/')}}" class="active">HOME</a>

      <a href="{{ url('/ourpractices')}}">PRACTICE</a>
      <div class="dropdown">
      <button class="dropbtn">BLOG
      <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="{{ url('/blogcat/3') }}">CONTRACT</a>
        <a href="{{ url('/blogcat/1') }}">COMMERCIAL</a>
        <a href="{{ url('/blogcat/2') }}">CRIMINAL</a>
        <a href="{{ url('/blogcat/5') }}">GENERAL</a>
        <a href="{{ url('/blogcat/4') }}">TAXATION</a>
        <a href="{{ url('/blogcat/6') }}">WILLS & PROBATE & INHERITANCE</a>
      </div>
      </div>
      <a href="{{ url('/contact')}}">CONTACT</a>

      </div>
      <div class="firm-name-bgScreen" >
        <!-- <div class="col-md-7">
        </div> -->
        <div class="">
          <!-- <img class="" src="images/header.png" alt="" style="width: 250px;"> -->
            <h4> <b>A.O. ADERELE & ASSOCIATES</b> </h4>
        </div>
      </div>

      </div>
    </div>
    </div>
    <div class="container col-md-8 col-md-offset-">

    <div class="row">
      <hr>
    </div>

    <div class="header">
      <div class="row">
        <div class=" col-xs-12 col-md-6">
          <div class="header-left">
          <div class="">
            <p>Focused, skillful legal representation to solve your most difficult problems</p>
          </div>
          </div>
          <div class="row">
            <hr>
          </div>
          <div class="header-top-read">
              <span>
                <b>Need Our Services To Recover Debt?</b>
              </span>
               <div class=""><a href="{{ url('/contact') }}">We are here to help!</a></div>
               <div>
                 <p>For information regarding how we can help you recover your debt,
                 <a href="{{ url('/feedback') }}">click here</a> </p>
               </div>
               <div class="">
                 <p>Read our latest debt recovery Posts <a href="{{ url('/blogcat/8') }}">here</a></p>
               </div>
          </div>
          <div class="row">
            <hr>
          </div>
          <div class="header-left-bottom">
            <span> <b>Recent Posts on Supreme Court Jugdements</b></span>

            <div class="recent_news">

              @foreach($latest_supreme_judgements as $supreme)
                <p><a href="{{ url('/blogpost/' .$supreme->blog_id) }}">{{ $supreme->title }}</a></p>
              @endforeach


            </div>

            <div class="view-all-post">
              <a href="{{ url('/blogposts') }}"><b>View All Posts</b></a>
            </div>
          </div>

        </div>
        <div class="header-intro col-xs-12 col-md-6">
          <div class="header-right">
            <p>Schlam Stone & Dolan is a preeminent boutique law firm with the experience, creativity, and problem-solving skills to get successful results quickly and efficiently. Our attorneys are seasoned litigators, transactional lawyers, and counsellors who have honed their skills at New York’s elite big firms and in public service, including many who have held leadership positions at U.S. Attorneys’ and District Attorneys’ offices.</p>
            <p>Our experience allows us to staff cases leanly, so that clients get maximum value. At the same time, we value collegiality and collaboration, allowing each of us to draw on the entire firm’s knowledge and experience. This combination lets us give you the crucial insights necessary to get the results you need in the most efficient way possible.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <hr>
    </div>
    <div class="footer">
      <div class="row ">
        <div class="col-md-9">
          <span>Copyright &copy; {{ date('Y')}} Aderele Firm.  All rights reserved.</span> &nbsp

        </div>
        <span class="footer-social pull-left">
          SOCIAL MEDIA:
          <a href="https://www.linkedin.com/in/adewale-aderele-bb454b203/" target="_blank"><i class="fa fa-linkedin" style="font-size:28px;"></i></a>&nbsp
          <a href="https://twitter.com/aderele_o" target="_blank"><i class="fa fa-twitter" style="font-size:28px;"></i></a>

        </span>
      </div>
    </div>
    </div>
    </div>
    <script type="text/javascript" src="{{ URL::asset('js/script.js') }}">
    /* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */

    </script>
</body>
</html>

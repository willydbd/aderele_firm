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

  <link rel="stylesheet" href="{{ URL::asset('css/header.css') }}">

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
                <!-- <img class="" src="images/header.png" alt="" style="width: 370px;"> -->
                  <h4> <b>A.O. ADERELE & ASSOCIATES</b> </h4>
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
          <!-- <img class="" src="images/header.png" alt="" style="width: 410px; "> -->
            <h4> <b>A.O. ADERELE & ASSOCIATES</b> </h4>
        </div>
      </div>
      </div>
    </div>
  </div>
  <div class="container col-md-8 col-md-offset-2">

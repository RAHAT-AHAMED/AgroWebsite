@extends('front.layout.app')
@section('main_content')
<style>
   .home_bg{ background-image:url('uploads/slide1.jpg'); }
   .col_half { width: 49%; }
   .col_third { width: 32%; }
   .col_fourth { width: 23.5%; }
   .col_fifth { width: 18.4%; }
   .col_sixth { width: 15%; }
   .col_three_fourth { width: 74.5%;}
   .col_twothird{ width: 66%;}
   .col_half,
   .col_third,
   .col_twothird,
   .col_fourth,
   .col_three_fourth,
   .col_fifth{
   position: relative;
   display:inline;
   display: inline-block;
   float: left;
   margin-right: 2%;
   margin-bottom: 20px;
   }
   .end { margin-right: 0 !important; }
   /* Column Grids End */
   .wrapper { width: 980px; margin: 30px auto; position: relative;}
   .counter { background-color: #ffffff; padding: 20px 0; border-radius: 5px;}
   .count-title { font-size: 40px; font-weight: normal;  margin-top: 10px; margin-bottom: 0; text-align: center; }
   .count-text { font-size: 13px; font-weight: normal;  margin-top: 10px; margin-bottom: 0; text-align: center; }
   .fa-2x { margin: 0 auto; float: none; display: table; color: #4ad1e5; }
   .button2 {
   background-color: transparent;
   color: black;
   border: 2px solid black;
   padding: 10px 20px;
   }
   .button3 {
   background-color: transparent;
   color: white;
   border: 2px solid white;
   padding: 10px 20px;
   }
</style>
<div class="page-top">
   <div class="bg"></div>
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <h2>Donate</h2>
         </div>
      </div>
   </div>
</div>
<div class="page-content">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="text-center">
               <h2>Donations make a huge difference to Haller’s impact in Kenya.</h2>
               <br>
               <p style="font-size:20px;">
                  In particular, helping to educate rural farming communities on healthy and sustainable living. <br> Please support our work and donate to Haller today. <br><br>
                  <img src="{{ asset('uploads/donate.svg') }}" alt="" srcset="">
               </p>
            </div>
         </div>
      </div>
   </div>
</div>
{{-- #ed8a03; --}}
<div style="height:450px; background-color:#ed8a03;">
   <div class="container">
      <div class="row">
         <div class="col-md-6 d-flex align-items-center justify-content-end" style="background-color: #ed8a03; color:white;">
            <div class="pd-4" style="padding-left: 25px;">
               <h3>£25 will stock one dam with a guppies, which eat mosquito larvae and can help </h3>
               <button class="btn btn-warning btn-lg button3 mt-3" style="margin-left:360px; color:white;"> <a style="color:white;" href="{{ route('lets_donate') }}">Donate Now</a> </button>
            </div>
         </div>
         <div class="col-md-6" style="background-color: #ed8a03; height:450px;">
            <div class="">
               <img class="d-flex align-items-center justify-content-start" src="{{ asset('uploads/photo-1586771107445-d3ca888129ff (1).jpg') }}" style="width:640px;height:450px; margin-left:-20px;">
            </div>
         </div>
      </div>
   </div>
</div>
<div style="height:450px; background-color:#ed8a03;">
   <div class="container">
      <div class="row">
         <div class="col-md-6" style="background-color: #ed8a03; height:450px;">
            <div class="d-flex align-items-center justify-content-end">
               <img src="{{ asset('uploads/photo-1586771107445-d3ca888129ff (1).jpg') }}" style="width:650px;height:450px; margin-right:-4px;">
            </div>
         </div>
         <div class="col-md-6 d-flex align-items-center justify-content-end" style="background-color: #ed8a03; color:white; ">
            <div class="mt-5">
               <h3>£10 will provide one family with start-up seeds so they can begin farming organically and sustainably.</h3>
               <button class="btn btn-warning btn-lg button3 mt-3" style="color:white;"> <a style="color:white;"  href="{{ route('lets_donate') }}">Donate Now</a> </button>
            </div>
         </div>
      </div>
   </div>
</div>
<div style="height:450px; background-color:#ed8a03;">
   <div class="container">
      <div class="row">
         <div class="col-md-6 d-flex align-items-center justify-content-end" style="background-color: #ed8a03; color:white;">
            <div class="pd-4" style="padding-left: 30px;">
               <h2>£80 will “Teach a man to fishes” with a 2-day aquaculture training session for the whole community.</h2>
               <button class="btn btn-warning btn-lg button3 mt-3" style="margin-left:340px; color:white;"> <a style="color:white;"  href="{{ route('lets_donate') }}">Donate Now</a> </button>
            </div>
         </div>
         <div class="col-md-6" style="background-color: #ed8a03; height:450px;">
            <div class="">
               <img class="d-flex align-items-center justify-content-start" src="{{ asset('uploads/photo-1586771107445-d3ca888129ff (1).jpg') }}" style="width:640px;height:450px; margin-left:-20px;">
            </div>
         </div>
      </div>
   </div>
</div>
@endsection
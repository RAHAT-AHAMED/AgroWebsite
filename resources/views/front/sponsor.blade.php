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
            <h2>Sponsor</h2>
         </div>
      </div>
   </div>
</div>
<div class="page-content">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div>
               <h2>Sponsor a Haller Journey</h2>
               <br>
               <p style="font-size:20px;">
                  You can sponsor any step of a Haller Journey within a specified community; from the digging of a dam, well and bio-loo, to supplying fish and tree seedlings or on-going farmer training. There is also the option of supporting the Haller Farmers App specifically. <br><br>
                  <button class="btn btn-warning btn-lg button2" style="">Visit Our Vimeo</button>
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
         <div class="col-md-6 d-flex align-items-center justify-content-end" style="background-color: #ed8a03;ed; color:white;">
            <div class="pd-4" style="padding-left: 30px;">
               <h2>Sponsor a Haller Journey</h2>
               <p style="font-size:19px; padding-left:60px;">
                  See how you can make a difference
               </p>
               <button class="btn btn-warning btn-lg button3" style="margin-left:210px;"> <a style="color:white;" href="{{route('sponsor_details')}}">View Details</a> </button>
            </div>
         </div>
         <div class="col-md-6" style="background-color: #ed8a03; height:450px;">
            <div class="">
               <img class="mt-5 mb-5 d-flex align-items-center justify-content-start" src="{{ asset('uploads/photo-1586771107445-d3ca888129ff (1).jpg') }}" style="max-width:100%;">
            </div>
         </div>
      </div>
   </div>
</div>
<div style="height:400px; background-color:#ed8a03;">
   <div class="container">
      <div class="row">
         <div class="col-md-6" style="background-color: #ed8a03; height:400px;">
            <div class="d-flex align-items-center justify-content-end">
               <img class="mt-5 mb-5" src="{{ asset('uploads/photo-1495107334309-fcf20504a5ab.jpg') }}" style="width:100%;">
            </div>
         </div>
         <div class="col-md-6 d-flex align-items-center justify-content-end" style="background-color: #ed8a03; color:white; padding-right: 20px;">
            <div class="mt-5">
               <h2>Example of Haller Journey Sponsorship</h2>
               <p style="font-size:15.5px;">Addax & Oryx</p>
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
               <h2>Sponsor a Haller Journey</h2>
               <p style="font-size:19px; padding-left:60px;">
                  See how you can make a difference
               </p>
               <button class="btn btn-warning btn-lg button3" style="margin-left:210px;"> <a style="color:white;" href="{{route('sponsor_details')}}">View Details</a> </button>
            </div>
         </div>
         <div class="col-md-6" style="background-color: #ed8a03; height:450px;">
            <div class="">
               <img class="mt-5 mb-5 d-flex align-items-center justify-content-start" src="{{ asset('uploads/farmer-fields-hero.jpg') }}" style="width:100%;">
            </div>
         </div>
      </div>
   </div>
</div>
@endsection
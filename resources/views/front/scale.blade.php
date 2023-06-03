@extends('front.layout.app')
@section('main_content')
<div class="page-top">
   <div class="bg"></div>
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <h2>Scale</h2>
         </div>
      </div>
   </div>
</div>
<div class="page-content">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div>
               <h2>Haller Farmers, transforming landscapes and empowering communities.</h2>
               <br>
               <p>
                  Smallholder farmers living across Africa often have little access to the knowledge, skills, infrastructure and tools that they need to thrive. In Kenya alone, there are more than 5 million smallholder farmers and the majority live on fragile and unproductive land in areas out of reach from the services of agricultural extension workers. <br><br>
                  The Haller Farmers app allows us to scale up our impact by leveraging the increasing penetration of mobile technology across Africa to promote sustainable growth across both landscapes and communities. <br><br>
                  Haller Farmers puts 60+ years of farming expertise directly into the hands of smallholder farmers, sharing proven agricultural knowledge based on what has been tried and tested at the Haller Training & Demonstration Farm and then implemented successfully on the ground by our communities. All of the techniques that we share are low cost and organic, making them widely replicable.  <br><br>
                  Haller Farmers is now available to download for free, from the App and Google Play Stores and does not use up phone storage, data bundles or wifi. Once downloaded, the articles that you have already browsed while online, will also be available when not connected to WiFi or data. Please note that you must browse your desired articles when connected to WiFi or data before going fully offline.  <br><br>
                  Haller Farmers provides smallholder farmers across Africa with the following information: <br><br>
                  Our vision is to create choice for smallholder farmers across Africa, enriching eco-systems and creating better-empowered lives. You can download Haller Farmers here. <br><br>
               </p>
               <div id="carouselExampleControls" class="carousel slide mb-3" data-bs-ride="carousel">
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <img src="{{ asset('uploads/2fe18bd1dffb74dfc28d718c877b5583.Haller-Farmers-for-web-04-2048x1366.webp') }}" class="d-block w-100" alt="...">
                     </div>
                     <div class="carousel-item">
                        <img src="{{ asset('uploads/ed3ba52774a2057432292d8dee8f193e.Haller-Farmers-for-web-01-2048x1365.webp') }}" class="d-block w-100" alt="...">
                     </div>
                  </div>
                  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                  </button>
                  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                  </button>
               </div>
            </div>
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
               <h2>Impact Story: How Haller Farmers has helped changed Patricia’s life for the better.</h2>
               <p style="font-size:19px;">The Haller Farmers app helped Patricia (50) to regenerate her land and make it farmable again.
                  With the proceeds, she has built a house with electricity and access to water for her husband and seven children.  She is also putting food on the table. In 2011, the Ministry of Agriculture named Patricia Farmer of the Year. “My husband is retired now so I am looking after the family. He is very proud of me”
               </p>
            </div>
         </div>
         <div class="col-md-6" style="background-color: #ed8a03; height:450px;">
            <div class="">
               <img class="mt-5 mb-5 d-flex align-items-center justify-content-start" src="{{ asset('uploads/Patricia-1.jpg') }}" style="width:100%;">
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
               <iframe width="500" height="300" class="mt-5" src="https://www.youtube.com/embed/DPLz6sX5hHA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
         </div>
         <div class="col-md-6" style="background-color: #ed8a03; color:white; padding-right: 20px;">
            <div class="mt-5">
               <h2>Meet Eunice, a successful smallholder farmer living outside of Mombasa, Kenya.</h2>
               <p style="font-size:15.5px;">In Kenya 80% of people have access to some form of farmable land. Although the soil is rich and fertile for farming, many plots of land stand empty or with failed crops.Eunice has found success in maximising her crop yield by using the open-source Haller Farmers App.</p>
            </div>
         </div>
      </div>
   </div>
</div>
<div style="height:80px; background-color:#ebc800;">
   <div class="container">
      <div class="row">
         <div class="col-md-7" style="background-color: #ebc800; height:80px;">
            <div class="d-flex align-items-center justify-content-center mt-4">
               <p style="color:white; font-size:17px;"><b>EXPLORE STAGE 4 OF THE HALLER JOURNEY: HEALTH, EDUCATION & ENTERPRISE.</b> </p>
            </div>
         </div>
         <div class="col-md-5 mt-3" style="background-color:#ebc800; color:white;">
            <button class="button button5" style="">EXPLORE: HEALTH, EDUCATION & ENTERPRISE</button>
         </div>
      </div>
   </div>
</div>
@endsection
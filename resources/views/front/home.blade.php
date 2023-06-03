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
   .button5 {
   background-color: transparent;
   color: white;
   border: 2px solid white;
   padding: 10px 20px;
   }
   .button5:hover {
   background-color: white;
   color: black;;
   border: 2px solid white;
   padding: 10px 20px;
   }
</style>
<!-- Slider Portion -->
<div class="slider">
   <div class="slide-carousel owl-carousel">
      <div class="item" style="background-image:url(uploads/agriculture_slide_1.webp);">
         <div class="bg"></div>
         <div class="text">
            <h2>Agriculture is our pride</h2>
            <p>
               Most agricultural production in Bangladesh is characterized as traditional subsistence farming. Bangladesh produces a variety of agricultural products such as rice, wheat, corn, legumes, fruits, vegetables, meat, fish, seafood, and dairy products.
            </p>
            <div class="button">
               <a href="{{ route('about') }}">Read More</a>
            </div>
         </div>
      </div>
      <div class="item" style="background-image:url(uploads/slide_2.jpg);">
         <div class="bg"></div>
         <div class="text">
            <h2>Growth in Agriculture</h2>
            <p>
               The sustainability of conventional agriculture in Bangladesh is under threat from the continuous degradation of land and water resources, and from declining yields due to indiscriminate use of agro-chemicals.
            </p>
            <div class="button">
               <a href="">Read More</a>
            </div>
         </div>
      </div>
   </div>
</div>
<!--// Slider Portion -->
<div style="height:400px; background-color:#027db3;">
   <div class="container">
      <div class="row">
         <div class="col-md-6" style="background-color: #027db3; height:400px;">
            <div class="d-flex align-items-center justify-content-end">
               <iframe width="500" height="300" class="mt-5" src="https://www.youtube.com/embed/DPLz6sX5hHA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
         </div>
         <div class="col-md-6" style="background-color: #027db3; color:white; padding-right: 20px;">
            <div class="mt-5">
               <h2>Discover Haller’s new film, showcasing our work and impact to date in Kenya.</h2>
               <p style="font-size:15.5px;">In the film, our team tells the story of Haller; from Dr. Haller’s life’s work in restoring degraded quarried landscapes, to supporting smallholder famers in Kenya to transform their livelihoods, and exploring what the future holds for Haller as the threats of climate change become ever more apparent.</p>
               <button class="button button5" style="">Visit Our Vimeo</button>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- Counter Section --> 
<div class="wrapper">
   <div style="height:200px;">
      <h2 class="text-center mb-5">Creating an impact across Bangladesh</h2>
      <div class="counter col_fourth hover_style_home" style="background-color: whitesmoke;">
         <h2 class="timer count-title count-number" data-to="96500" data-speed="1500"></h2>
         <p class="count-text ">Patient treatments <br> delivered</p>
      </div>
      <div class="counter col_fourth" style="background-color: whitesmoke;">
         <h2 class="timer count-title count-number" data-to="21000" data-speed="1500"></h2>
         <p class="count-text ">Trees planted by<br>  Haller communities</p>
      </div>
      <div class="counter col_fourth" style="background-color: whitesmoke;">
         <h2 class="timer count-title count-number" data-to="54" data-speed="1500"></h2>
         <p class="count-text ">Mombasa communities have undertaken the Haller Journey</p>
      </div>
      <div class="counter col_fourth end" style="background-color: whitesmoke;">
         <h2 class="timer count-title count-number" data-to="569" data-speed="1500"></h2>
         <p class="count-text ">Our Total<br>  Members</p>
      </div>
   </div>
</div>
<!-- // Counter Section --> 
<!-- Unnecessary dummy code -->
<div class="home-rooms">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <h2 class="main-header"></h2>
         </div>
      </div>
      <div class="row">
      </div>
      <div class="row">
         <div class="col-md-12">
            <div class="big-button">
            </div>
         </div>
      </div>
   </div>
</div>
<!--// Unnecessary dummy code -->
<!-- Testimonial Portion -->
<div class="testimonial" style="background-image: url(uploads/testimonial_bg.jpg)">
   <div class="bg"></div>
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <h2 class="main-header">Meet Our Team</h2>
         </div>
      </div>
      <div class="row">
         <div class="col-12">
            <div class="testimonial-carousel owl-carousel">
               @foreach ($testimonials as $testimonial)
               <div class="item">
                  <div class="photo">
                     <img style="width:100px; height:100px;" src="{{ asset('uploads/'.$testimonial->photo) }}" alt="No Img">
                  </div>
                  <div class="text">
                     <h4>{{ $testimonial->name }}</h4>
                     <p>{{ $testimonial->designation }} </p>
                  </div>
                  <div class="description">
                     <p>
                        {{ $testimonial->comment }} 
                     </p>
                  </div>
               </div>
               @endforeach
            </div>
         </div>
      </div>
   </div>
</div>
<!--// Testimonial Portion -->
<div style="height:450px; background-color:#027db3;">
   <div class="container">
      <div class="row">
         <div class="col-md-6 d-flex align-items-center justify-content-center" style="background-color: #027db3; color:white;">
            <div class="pd-4" style="padding-left: 30px;">
               <h2>Our Work: The Haller Journey</h2>
               <p style="font-size:19px;">We help smallholder farmers improve water security and revitalise barren soil – kick-starting natural processes that make land fertile, farmable and the foundation for stronger communities. We call this process the Haller Journey.</p>
               <button class="button button5" style="">More About Work</button>
            </div>
         </div>
         <div class="col-md-6" style="background-color: #027db3; height:450px;">
            <div class="">
               <img class="mt-5 mb-5 d-flex align-items-center justify-content-start" src="{{ asset('uploads/photo-1586771107445-d3ca888129ff.jpg') }}" style="width:100%;">
            </div>
         </div>
      </div>
   </div>
</div>
<script>
   (function ($) {
   $.fn.countTo = function (options) {
   options = options || {};
   
   return $(this).each(function () {
   // set options for current element
   var settings = $.extend({}, $.fn.countTo.defaults, {
   from:            $(this).data('from'),
   to:              $(this).data('to'),
   speed:           $(this).data('speed'),
   refreshInterval: $(this).data('refresh-interval'),
   decimals:        $(this).data('decimals')
   }, options);
   
   // how many times to update the value, and how much to increment the value on each update
   var loops = Math.ceil(settings.speed / settings.refreshInterval),
   increment = (settings.to - settings.from) / loops;
   
   // references & variables that will change with each update
   var self = this,
   $self = $(this),
   loopCount = 0,
   value = settings.from,
   data = $self.data('countTo') || {};
   
   $self.data('countTo', data);
   
   // if an existing interval can be found, clear it first
   if (data.interval) {
   clearInterval(data.interval);
   }
   data.interval = setInterval(updateTimer, settings.refreshInterval);
   
   // initialize the element with the starting value
   render(value);
   
   function updateTimer() {
   value += increment;
   loopCount++;
   
   render(value);
   
   if (typeof(settings.onUpdate) == 'function') {
   	settings.onUpdate.call(self, value);
   }
   
   if (loopCount >= loops) {
   	// remove the interval
   	$self.removeData('countTo');
   	clearInterval(data.interval);
   	value = settings.to;
   	
   	if (typeof(settings.onComplete) == 'function') {
   		settings.onComplete.call(self, value);
   	}
   }
   }
   
   function render(value) {
   var formattedValue = settings.formatter.call(self, value, settings);
   $self.html(formattedValue);
   }
   });
   };
   
   $.fn.countTo.defaults = {
   from: 0,               // the number the element should start at
   to: 0,                 // the number the element should end at
   speed: 1000,           // how long it should take to count between the target numbers
   refreshInterval: 100,  // how often the element should be updated
   decimals: 0,           // the number of decimal places to show
   formatter: formatter,  // handler for formatting the value before rendering
   onUpdate: null,        // callback method for every time the element is updated
   onComplete: null       // callback method for when the element finishes updating
   };
   
   function formatter(value, settings) {
   return value.toFixed(settings.decimals);
   }
   }(jQuery));
   
   jQuery(function ($) {
   // custom formatting example
   $('.count-number').data('countToOptions', {
   formatter: function (value, options) {
   return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
   }
   });
   
   // start all the timers
   $('.timer').each(count);  
   
   function count(options) {
   var $this = $(this);
   options = $.extend({}, options || {}, $this.data('countToOptions') || {});
   $this.countTo(options);
   }
   });
</script>
@endsection 
{{------------------------------------- End Section --------------------------------------------}}
@extends('front.layout.app')
@section('main_content')
<div class="page-top">
   <div class="bg"></div>
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <h2>{{ $single_room->name }}</h2>
         </div>
      </div>
   </div>
</div>
<div class="page-content room-detail">
   <div class="container">
      <div class="row">
         <div class="col-lg-8 col-md-7 col-sm-12 left">
            <div class="room-detail-carousel owl-carousel">
               <div class="item" style="background-image:url({{ asset('uploads/'.$single_room->featured_photo) }});">
                  <div class="bg"></div>
               </div>
               @foreach ($single_room->rRoomPhoto as $single_room_photo)
               <div class="item" style="background-image:url({{ asset('uploads/'.$single_room_photo->photo) }});">
                  <div class="bg"></div>
               </div>
               @endforeach
            </div>
            <div class="description">
               <p>
                  {!! $single_room->description !!}
               </p>
            </div>
            <div class="amenity">
               <div class="row">
                  <div class="col-md-12">
                     <h2>Amenities</h2>
                  </div>
               </div>
               <div class="row">
                  @php
                  $arr = explode(',',$single_room->amenities);
                  for ($j=0; $j < count($arr); $j++) 
                  { 
                  $temp_row = \App\Models\Amenity::where('id',$arr[$j])->first();
                  echo '
                  <div class="col-lg-6 col-md-12">
                     ';
                     echo '
                     <div class="item"><i class="fa fa-check-circle"></i>&nbsp;'.$temp_row->name.'</div>
                     ';
                     echo '
                  </div>
                  ';
                  }
                  @endphp
               </div>
            </div>
            <div class="feature">
               <div class="row">
                  <div class="col-md-12">
                     <h2>Preview Video</h2>
                  </div>
               </div>
            </div>
            <div class="video">
               <iframe width="560" height="315" src="https://www.youtube.com/embed/{{ $single_room->video_id }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
         </div>
         <div class="col-lg-4 col-md-5 col-sm-12 right">
            <div class="sidebar-container" id="sticky_sidebar">
               <div class="widget">
                  <h2>Price</h2>
                  <div class="price">
                     {{ $single_room->price }}$
                  </div>
               </div>
               <div class="widget">
                  <h2>Buy this Item</h2>
                  <form action="{{ route('cart_submit') }}" method="post">
                     @csrf
                     <input type="hidden" name="room_id" value="{{ $single_room->id }}">
                     <div class="form-group mb_20">
                        <input type="number" name="qty" class="form-control" min="1" max="30" placeholder="Quantity">
                     </div>
                     <button style="margin-top: -20px;" type="submit" class="book-now">Add to Cart</button>
                  </form>
               </div>
               <div class="widget">
                  <h2>Other Categories</h2>
                  <div class="price">
                     @foreach ($global_rooms as $room_name)
                     @if ($single_room->id == $room_name->id)
                     @continue
                     @endif
                     <p style="line-height: 0.5cm; font-size:17px;" class="">
                        <a style="" href="{{ route('room_detail',$room_name->id) }}">{{ $room_name->name }}</a>
                     </p>
                     @endforeach
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
@endsection
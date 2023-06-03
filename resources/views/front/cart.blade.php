@extends('front.layout.app')

@section('main_content')
<div class="page-top">
    <div class="bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Add To Cart</h2>
            </div>
        </div>
    </div>
</div>
<div class="page-content">
    <div class="container">
        <div class="row cart">
            <div class="col-md-12">
                

                @if(session()->has('cart_room_id'))

                <div class="table-responsive">
                    <table class="table table-bordered table-cart">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Serial</th>
                                <th>Photo</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Subtotal</th>
                            </tr>
                        </thead>
                        <tbody>

                            @php
                            $arr_cart_room_id = array();
                            $i=0;
                            foreach(session()->get('cart_room_id') as $value) {
                                $arr_cart_room_id[$i] = $value;
                                $i++;
                            }

                            $arr_cart_qty = array();
                            $i=0;
                            foreach(session()->get('cart_qty') as $value) {
                                $arr_cart_qty[$i] = $value;
                                $i++;
                            }

                        
                            $total_price = 0;

                            for($i=0;$i<count($arr_cart_room_id);$i++)
                            {
                                $room_data = DB::table('rooms')->where('id',$arr_cart_room_id[$i])->first();


                            @endphp
                            


                                
                                <tr>
                                    <td>
                                        <a href="{{ route('cart_delete',$arr_cart_room_id[$i]) }}" class="cart-delete-link" onclick="return confirm('Are you sure?');"><i class="fa fa-times"></i></a>
                                    </td>
                                    <td>{{ $i+1 }}</td>
                                    <td><img src="{{ asset('uploads/'.$room_data->featured_photo) }}"></td>
                                    <td>
                                        <a href="{{ route('room_detail',$room_data->id) }}" class="room-name">{{ $room_data->name }}</a>
                                    </td>
                                    <td>${{ $room_data->price }}</td>
                                    <td>
                                    @php
                                        echo '$'.$room_data->price*$arr_cart_qty[$i];
                                    @endphp
                                    </td>
                                </tr>


                            @php
                            
                            $total_price = $total_price+($room_data->price*$arr_cart_qty[$i]);
                            
                            } 
                            
                            @endphp
                            <tr>
                                <td colspan="8" class="tar">Total:</td>
                                <td>${{ $total_price }}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>


                @else

                <div class="text-danger mb_30">
                    Cart is empty!
                </div>

                @endif

            </div>
        </div>
    </div>
</div>
@endsection
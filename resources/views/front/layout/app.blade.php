<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
        <meta name="description" content="">
        <title>Agriculture Website</title>        
		
        <link rel="icon" type="image/png" href="{{ asset('dist-front/uploads/favicon.png') }}">

        <!-- All CSS -->
        @includeIf('front.layout.styles')
        
        <!-- All Javascripts -->
        @includeIf('front.layout.scripts')

        <link href="https://fonts.googleapis.com/css2?family=Karla:wght@400;500&display=swap" rel="stylesheet">


    </head>
    <body>
        
        <div class="top">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 left-side">
                        <ul>
                            <li class="phone-text">+799566448</li>
                            <li class="email-text">rahat35-2999@diu.edu.bd</li>
                        </ul>
                    </div>
                    <div class="col-md-6 right-side">
                        <ul class="right">
                            <li class="menu"><a href="{{ route('cart') }}">Cart🛒</a></li>
                            <li class="menu"><a href="{{ route('checkout') }}">Checkout</a></li>
                            <li class="menu"><a href="{{ route('customer_signup') }}">Sign Up</a></li>
                            <li class="menu"><a href="{{ route('customer_login') }}">Login</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="navbar-area" id="stickymenu">

            @include('front.layout.navbar')

        </div>


        <!-- Website Content Loads From Here -->
        @yield('main_content')


        <!-- Frontend Footer -->
        @include('front.layout.footer')


		
        <script src="{{ asset('dist-front/js/custom.js') }}"></script> 
        
        

        <!-- iziToast functionality code here -->
        @if ($errors->any())
            @foreach ($errors->all() as $error)
                <script>
                    iziToast.error({
                        title: '',
                        position: 'topRight',
                        message: '{{ $error }}',
                    });
                </script>
            @endforeach
        @endif

        
        @if(session()->get('error'))
            <script>
                iziToast.error({
                    title: '',
                    position: 'topRight',
                    message: '{{ session()->get('error') }}',
                });
            </script>
        @endif

        @if(session()->get('success'))
            <script>
                iziToast.success({
                    title: '',
                    position: 'topRight',
                    message: '{{ session()->get('success') }}',
                });
            </script>
        @endif
        
        <!--// iziToast functionality code here -->


        
        <script>
            (function($){
                $(".form_subscribe_ajax").on('submit', function(e){
                    e.preventDefault();
                    $('#loader').show();
                    var form = this;
                    $.ajax({
                        url:$(form).attr('action'),
                        method:$(form).attr('method'),
                        data:new FormData(form),
                        processData:false,
                        dataType:'json',
                        contentType:false,
                        beforeSend:function(){
                            $(form).find('span.error-text').text('');
                        },
                        success:function(data)
                        {
                            $('#loader').hide();
                            if(data.code == 0)
                            {
                                $.each(data.error_message, function(prefix, val) {
                                    $(form).find('span.'+prefix+'_error').text(val[0]);
                                });
                            }
                            else if(data.code == 1)
                            {
                                $(form)[0].reset();
                                iziToast.success({
                                    title: '',
                                    position: 'topRight',
                                    message: data.success_message,
                                });
                            }
                            
                        }
                    });
                });
            })(jQuery);
        </script>
        <div id="loader"></div>



   </body>
</html>
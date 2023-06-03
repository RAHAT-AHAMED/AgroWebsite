<style>
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
  transition: 0.5s;
}
</style>
<div class="footer">
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="item">
                <img src="{{ asset('uploads/agriculture-logo-06.png') }}" alt="" style="width:97%; height:100px;">
            </div>
        </div>
        <div class="col-md-3">
            <div class="item">
                <img src="{{ asset('uploads/footer_logo_2.webp') }}"  style="width:100%;">
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="item ">
               <a href="{{ route('donate') }}"><button class="button button5" style="margin-left: 30px;margin-top: 5px;">Donate Now</button></a> 
            </div>
        </div>

        <div class="col-md-3">
            <div class="item">
                <h2 class="heading">Newsletter</h2>
                <p>
                    In order to get the latest news and other great items, please subscribe us here: 
                </p>
                <form action="{{ route('subscriber_send_email') }}" method="post" class="form_subscribe_ajax">
                    @csrf
                    <div class="form-group">
                        <input type="text" name="email" class="form-control">
                        <span class="text-danger error-text email_error"></span>
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Subscribe Now">
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>
</div>

<div class="copyright">
Copyright 2023, RahatAhmed. All Rights Reserved.
</div>

<div class="scroll-top">
<i class="fa fa-angle-up"></i>
</div>
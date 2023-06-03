<!-- Menu For Mobile Device -->
<div class="mobile-nav">
    <a href="index.html" class="logo">
        <img src="uploads/sm_5ace062b08f53.jpg" alt="">
    </a>
</div>


<!-- Menu For Desktop Device -->
<div class="main-nav" style="height:100px;">
    <div class="container">
        <nav class="navbar navbar-expand-md navbar-light">
            <a class="navbar-brand" href="{{ route('home') }}">
                <img src="uploads/Agriculture-Logo-Clipart-PNG.png" alt="">
            </a>
            <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">        
                    <li class="nav-item">
                        <a href="{{ route('home') }}" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:void;" class="nav-link dropdown-toggle">Our Work</a>
                        <ul class="dropdown-menu">
                            <li class="nav-item">
                                <a href="{{ route('wash') }}" class="nav-link">Wash</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('grow') }}" class="nav-link">Grow</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('scale') }}" class="nav-link">Scale</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('health') }}" class="nav-link">Health, Education and Enterprise</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:void;" class="nav-link dropdown-toggle">Get Involved</a>
                        <ul class="dropdown-menu">
                            <li class="nav-item">
                                <a href="{{ route('donate') }}" class="nav-link">Donate</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('sponsor') }}" class="nav-link">Sponsor</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li class="nav-item">
                        <a href="javascript:void;" class="nav-link dropdown-toggle">Business</a>
                        <ul class="dropdown-menu">
                            @foreach ($global_rooms as $room_name)
                                <li class="nav-item">
                                    <a href="{{ route('room_detail',$room_name->id) }}" class="nav-link">{{ $room_name->name }}</a>
                                </li>
                            @endforeach
                        </ul>
                    </li>
                    
                    <li class="nav-item">
                        <a href="javascript:void;" class="nav-link dropdown-toggle">More</a>
                        <ul class="dropdown-menu">
                            <li class="nav-item">
                                <a href="{{ route('contact') }}" class="nav-link">Contact</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('faq') }}" class="nav-link">Faq</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('about') }}" class="nav-link">About</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('photo_gallery') }}" class="nav-link">Photo Gallery</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('privacy_policy') }}" class="nav-link">Privacy policy</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
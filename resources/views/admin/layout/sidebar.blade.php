<div class="main-sidebar">
<aside id="sidebar-wrapper">
    <div class="sidebar-brand">
        <img src="{{ asset('uploads/ad_logo.png') }}" style="width:100%;height:150px; margin-top:-30px;" alt="" srcset="">
    </div>
    <div class="sidebar-brand sidebar-brand-sm">
        <a href="index.html"></a>
    </div>

    <ul class="sidebar-menu mt-3">

        <li class="active"><a class="nav-link" href="{{ route('admin_home') }}"><i class="fas fa-hand-point-right"></i> <span>Dashboard</span></a></li>


        <!-- Customer -->
        <li class="{{ Request::is('admin/customers') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_customer') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Customers"><i class="fa fa-user-plus"></i> <span>Customers</span></a></li>


        <!-- Orders -->
        <li class="{{ Request::is('admin/order/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_orders') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Orders"><i class="fa fa-cart-plus"></i> <span>Orders</span></a></li>


        <!-- Instrument -->
        <li class="nav-item dropdown
        {{ Request::is('admin/amenity/*')||Request::is('admin/room/*') ? 'active' : '' }}">
            <a href="#" class="nav-link has-dropdown"> <i class="fa fa-hotel" aria-hidden="true"></i> <span>Instrument</span></a>
            <ul class="dropdown-menu">
                <li class="{{ Request::is('admin/amenity/show') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_amenity_show') }}"><i class="fas fa-angle-right"></i> Amenities</a></li>
                <li class="{{ Request::is('admin/room/show') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_room_show') }}"><i class="fas fa-angle-right"></i>Instruments</a></li>
            </ul>
        </li>


        <!-- Subscribers -->
        <li class="nav-item dropdown {{ Request::is('admin/subscriber/show')||Request::is('admin/subscriber/send-email') ? 'active' : '' }}">
            <a href="#" class="nav-link has-dropdown"><i class="fa fa-users"></i><span>Subscribers</span></a>
            <ul class="dropdown-menu">

                <li class="{{ Request::is('admin/subscriber/show') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_subscriber_show') }}"><i class="fa fa-angle-right"></i> All Subscribers</a></li>

                <li class="{{ Request::is('admin/subscriber/send-email') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_subscriber_send_email') }}"><i class="fa fa-angle-right"></i> Send Email</a></li>
            </ul>
        </li>


        <!-- Testimonial -->
        <li class="{{ Request::is('admin/testimonial/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_testimonial_view') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Testimonial"><i class="fa fa-briefcase"></i> <span>Testimonial

            
        <!-- Photo Gallery -->
        <li class="{{ Request::is('admin/photo/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_photo_view') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="Photo Gallery"><i class="fa fa-camera"></i> <span>Photo Gallery</span></a></li>


        <!-- Faqs -->
        <li class="{{ Request::is('admin/faq/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_faq_view') }}" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-title="FAQ"><i class="fa fa-bolt"></i> <span>FAQ</span></a></li>

      
    </ul>
</aside>
</div>
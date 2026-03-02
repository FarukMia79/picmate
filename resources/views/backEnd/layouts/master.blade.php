<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />

    <title>@yield('title') - {{$generalsetting->name}}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="#" />

    <!-- Bootstrap css -->
    <link href="{{asset('backEnd/')}}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- App css -->
    <link href="{{asset('backEnd/')}}/assets/css/app.min.css" rel="stylesheet" type="text/css" />
    <!-- icons -->
    <link href="{{asset('backEnd/')}}/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- toastr css -->
    <link rel="stylesheet" href="{{asset('public/backEnd/')}}/assets/css/toastr.min.css" />
    <!-- custom css -->
    <link href="{{asset('backEnd/')}}/assets/css/custom.css" rel="stylesheet" type="text/css" />
    <!-- Head js -->
    @yield('css')
    <script src="{{asset('backEnd/')}}/assets/js/head.js"></script>
  </head>

  <!-- body start -->
  <body data-layout-mode="default" data-theme="light" data-layout-width="fluid" data-topbar-color="dark" data-menu-position="fixed" data-leftbar-color="light" data-leftbar-size="default" data-sidebar-user="false">
    <!-- Begin page -->
    <div id="wrapper">
      <!-- Topbar Start -->
      <div class="navbar-custom">
        <div class="container-fluid">
          <ul class="list-unstyled topnav-menu float-end mb-0">
            <li class="dropdown d-inline-block d-lg-none">
              <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <i class="fe-search noti-icon"></i>
              </a>
              <div class="dropdown-menu dropdown-lg dropdown-menu-end p-0">
                <form class="p-3">
                  <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username" />
                </form>
              </div>
            </li>

            <li class="dropdown notification-list topbar-dropdown">
              <a class="nav-link dropdown-toggle waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <i class="fe-bell noti-icon"></i>
                <span class="badge bg-danger rounded-circle noti-icon-badge">6</span>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-lg">
                <!-- item-->
                <div class="dropdown-item noti-title">
                  <h5 class="m-0">
                    <span class="float-end">
                      <a href="#" class="text-dark">
                        <small>View All</small>
                      </a>
                    </span>
                    Orders
                  </h5>
                </div>

                <div class="noti-scroll" data-simplebar>
                  <!-- item-->
                  <a href="#" class="dropdown-item notify-item active">
                    <div class="notify-icon">
                      <img src="" class="img-fluid rounded-circle" alt="" />
                    </div>
                    <p class="notify-details">Md. Faruk</p>
                    <p class="text-muted mb-0 user-msg">
                      <small>Invoice : 42759</small>
                    </p>
                  </a>

                  <!-- item-->
                </div>

                <!-- All-->
                <a href="#" class="dropdown-item text-center text-primary notify-item notify-all">
                  View all
                  <i class="fe-arrow-right"></i>
                </a>
              </div>
            </li>

            <li class="dropdown notification-list topbar-dropdown">
              <a class="nav-link dropdown-toggle nav-user me-0 waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <img src="{{asset(Auth::user()->image)}}" alt="user-image" class="rounded-circle" />
                <span class="pro-user-name ms-1"> {{Auth::user()->name}} <i class="mdi mdi-chevron-down"></i> </span>
              </a>
              <div class="dropdown-menu dropdown-menu-end profile-dropdown">
                <!-- item-->
                <div class="dropdown-header noti-title">
                  <h6 class="text-overflow m-0">Welcome !</h6>
                </div>

                <!-- item-->
                <a href="{{route('dashboard')}}" class="dropdown-item notify-item">
                  <i class="fe-user"></i>
                  <span>Dashboard</span>
                </a>

                <!-- item-->
                <a href="#" class="dropdown-item notify-item">
                  <i class="fe-settings"></i>
                  <span>Change Password</span>
                </a>

                <div class="dropdown-divider"></div>

                <!-- item-->
                <a
                  href="{{ route('logout') }}"
                  onclick="event.preventDefault();
                  document.getElementById('logout-form').submit();"
                  class="dropdown-item notify-item"
                >
                  <i class="fe-log-out me-1"></i>
                  <span>Logout</span>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                  @csrf
                </form>
              </div>
            </li>

            <!--<li class="dropdown notification-list">-->
            <!--    <a href="javascript:void(0);" class="nav-link right-bar-toggle waves-effect waves-light">-->
            <!--        <i class="fe-settings noti-icon"></i>-->
            <!--    </a>-->
            <!--</li>-->
          </ul>

          <!-- LOGO -->
          <div class="logo-box">
            <a href="{{url('admin/dashboard')}}" class="logo logo-dark text-center">
              <span class="logo-sm">
                <img src="{{asset($generalsetting->white_logo)}}" alt="" height="50" />
                <!-- <span class="logo-lg-text-light">UBold</span> -->
              </span>
              <span class="logo-lg">
                <img src="{{asset($generalsetting->dark_logo)}}" alt="" height="50" />
                <!-- <span class="logo-lg-text-light">U</span> -->
              </span>
            </a>

            <a href="{{url('admin/dashboard')}}" class="logo logo-light text-center">
              <span class="logo-sm">
                <img src="{{asset($generalsetting->white_logo)}}" alt="" height="50" />
              </span>
              <span class="logo-lg">
                <img src="{{asset($generalsetting->white_logo)}}" alt="" height="50" />
              </span>
            </a>
          </div>

          <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
            <li>
              <button class="button-menu-mobile waves-effect waves-light">
                <i class="fe-menu"></i>
              </button>
            </li>

            <li>
              <!-- Mobile menu toggle (Horizontal Layout)-->
              <a class="navbar-toggle nav-link" data-bs-toggle="collapse" data-bs-target="#topnav-menu-content">
                <div class="lines">
                  <span></span>
                  <span></span>
                  <span></span>
                </div>
              </a>
              <!-- End mobile menu toggle-->
            </li>

            <li class="dropdown d-none d-xl-block">
              <a class="nav-link dropdown-toggle waves-effect waves-light" href="{{route('home')}}" target="_blank"> <i data-feather="globe"></i> Visit Site </a>
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>
      </div>
      <!-- end Topbar -->

      <!-- ========== Left Sidebar Start ========== -->
      <div class="left-side-menu">
        <div class="h-100" data-simplebar>
          <!--- Sidemenu -->
          <div id="sidebar-menu">
            <ul id="side-menu">
              <li>
                <a href="{{url('admin/dashboard')}}" data-bs-toggle="collapse">
                  <i data-feather="airplay"></i>
                  <span> Dashboard </span>
                </a>
              </li>

              <li>
                <a href="#sidebar-orders" data-bs-toggle="collapse">
                  <i data-feather="shopping-cart"></i>
                  <span> Orders </span>
                  <span class="menu-arrow"></span>
                </a>
                <div class="collapse" id="sidebar-orders">
                  <ul class="nav-second-level">
                    <li>
                      <a href="#"><i data-feather="file-plus"></i> All Order</a>
                    </li>
                  </ul>
                </div>
              </li>
              <!-- nav items -->
              <li>
                <a href="#siebar-product" data-bs-toggle="collapse">
                  <i data-feather="database"></i>
                  <span> Products </span>
                  <span class="menu-arrow"></span>
                </a>
                <div class="collapse" id="siebar-product">
                  <ul class="nav-second-level">
                    <li>
                      <a href="{{route('products.index')}}"><i data-feather="file-plus"></i> Product Manage</a>
                    </li>
                    <li>
                      <a href="{{route('categories.index')}}"><i data-feather="file-plus"></i> Categories</a>
                    </li>
                    <li>
                      <a href="{{route('subcategories.index')}}"><i data-feather="file-plus"></i> Subcategories</a>
                    </li>
                    <li>
                      <a href="{{route('childcategories.index')}}"><i data-feather="file-plus"></i> Childcategories</a>
                    </li>
                    <li>
                      <a href="{{route('brands.index')}}"><i data-feather="file-plus"></i> Brands</a>
                    </li>
                    <li>
                      <a href="{{route('colors.index')}}"><i data-feather="file-plus"></i> Colors</a>
                    </li>
                    <li>
                      <a href="{{route('sizes.index')}}"><i data-feather="file-plus"></i> Sizes</a>
                    </li>
                    
                    <li>
                      <a href="{{route('products.price_edit')}}"><i data-feather="file-plus"></i> Price Edit</a>
                    </li>
                    
                  </ul>
                </div>
              </li>
              <!-- nav items end -->

              <li>
                <a href="#sidebar-product-review" data-bs-toggle="collapse">
                  <i data-feather="star"></i>
                  <span> Reviews </span>
                  <span class="menu-arrow"></span>
                </a>
                <div class="collapse" id="sidebar-product-review">
                  <ul class="nav-second-level">                   
                    <li>
                      <a href="#"><i data-feather="file-plus"></i> Pending Reviews</a>
                    </li>
                    <li>
                      <a href="#"><i data-feather="file-plus"></i> Create</a>
                    </li>
                    <li>
                      <a href="#"><i data-feather="file-plus"></i> All Reviews</a>
                    </li>
                  </ul>
                </div>
              </li>
              <!-- nav items end -->
              
              <li>
                <a href="#sidebar-users" data-bs-toggle="collapse">
                  <i data-feather="user"></i>
                  <span> Users </span>
                  <span class="menu-arrow"></span>
                </a>
                <div class="collapse" id="sidebar-users">
                  <ul class="nav-second-level">
                    <li>
                      <a href="#"><i data-feather="file-plus"></i> User</a>
                    </li>
                    <li>
                      <a href="#"><i data-feather="file-plus"></i> Customers</a>
                    </li>
                  </ul>
                </div>
              </li>
              <!-- nav items -->
              <li>
                <a href="#siebar-sitesetting" data-bs-toggle="collapse">
                  <i data-feather="settings"></i>
                  <span> Site Setting </span>
                  <span class="menu-arrow"></span>
                </a>
                <div class="collapse" id="siebar-sitesetting">
                  <ul class="nav-second-level">
                    <li>
                      <a href="{{route('settings.index')}}"><i data-feather="file-plus"></i> General Setting</a>
                    </li>
                    <li>
                      <a href="#"><i data-feather="file-plus"></i> Contact</a>
                    </li>
                    <li>
                      <a href="#"><i data-feather="file-plus"></i> Shipping Charge</a>
                    </li>
                    <li>
                      <a href="#"><i data-feather="file-plus"></i> Order Status</a>
                    </li>
                  </ul>
                </div>
              </li>
              <!-- nav items end -->
              <li>
                <a href="#siebar-banner" data-bs-toggle="collapse">
                  <i data-feather="image"></i>
                  <span> Banner & Ads </span>
                  <span class="menu-arrow"></span>
                </a>
                <div class="collapse" id="siebar-banner">
                  <ul class="nav-second-level">
                    <li>
                      <a href="{{route('banner_category.index')}}"><i data-feather="file-plus"></i> Banner Category</a>
                    </li>
                    <li>
                      <a href="{{route('banners.index')}}"><i data-feather="file-plus"></i> Banner & Ads</a>
                    </li>
                  </ul>
                </div>
              </li>
              <!-- nav items end -->
            </ul>
          </div>
          <!-- End Sidebar -->

          <div class="clearfix"></div>
        </div>
        <!-- Sidebar -left -->
      </div>
      <!-- Left Sidebar End -->

      <div class="content-page">
        <div class="content">
          @yield('content')
        </div>
        <!-- content -->

        <!-- Footer Start -->
        <footer class="footer">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-12 text-end">&copy; {{$generalsetting->name}} <a href="https://wa.me/8801790647979" target="_blank">Faruk</a></div>
            </div>
          </div>
        </footer>
        <!-- end Footer -->
      </div>
    </div>
    <!-- END wrapper -->

    <!-- Right Sidebar -->
    <div class="right-bar">
      <div data-simplebar class="h-100">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs nav-bordered nav-justified" role="tablist">
          <li class="nav-item">
            <a class="nav-link py-2" data-bs-toggle="tab" href="#chat-tab" role="tab">
              <i class="mdi mdi-message-text d-block font-22 my-1"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link py-2" data-bs-toggle="tab" href="#tasks-tab" role="tab">
              <i class="mdi mdi-format-list-checkbox d-block font-22 my-1"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link py-2 active" data-bs-toggle="tab" href="#settings-tab" role="tab">
              <i class="mdi mdi-cog-outline d-block font-22 my-1"></i>
            </a>
          </li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content pt-0">
          <div class="tab-pane" id="chat-tab" role="tabpanel">
            <form class="search-bar p-3">
              <div class="position-relative">
                <input type="text" class="form-control" placeholder="Search..." />
                <span class="mdi mdi-magnify"></span>
              </div>
            </form>
          </div>

          <div class="tab-pane" id="tasks-tab" role="tabpanel">
            <h6 class="fw-medium p-3 m-0 text-uppercase">Working Tasks</h6>
          </div>
          <div class="tab-pane active" id="settings-tab" role="tabpanel">
            <h6 class="fw-medium px-3 m-0 py-2 font-13 text-uppercase bg-light">
              <span class="d-block py-1">Theme Settings</span>
            </h6>

            <div class="p-3">
              <div class="alert alert-warning" role="alert"><strong>Customize </strong> the overall color scheme, sidebar menu, etc.</div>

              <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Color Scheme</h6>
              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="layout-color" value="light" id="light-mode-check" checked />
                <label class="form-check-label" for="light-mode-check">Light Mode</label>
              </div>

              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="layout-color" value="dark" id="dark-mode-check" />
                <label class="form-check-label" for="dark-mode-check">Dark Mode</label>
              </div>

              <!-- Width -->
              <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Width</h6>
              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="layout-width" value="fluid" id="fluid-check" checked />
                <label class="form-check-label" for="fluid-check">Fluid</label>
              </div>
              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="layout-width" value="boxed" id="boxed-check" />
                <label class="form-check-label" for="boxed-check">Boxed</label>
              </div>

              <!-- Menu positions -->
              <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Menus (Leftsidebar and Topbar) Positon</h6>

              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="menu-position" value="fixed" id="fixed-check" checked />
                <label class="form-check-label" for="fixed-check">Fixed</label>
              </div>

              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="menu-position" value="scrollable" id="scrollable-check" />
                <label class="form-check-label" for="scrollable-check">Scrollable</label>
              </div>

              

              <!-- size -->
              <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Left Sidebar Size</h6>

              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="leftbar-size" value="default" id="default-size-check" checked />
                <label class="form-check-label" for="default-size-check">Default</label>
              </div>

              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="leftbar-size" value="condensed" id="condensed-check" />
                <label class="form-check-label" for="condensed-check">Condensed <small>(Extra Small size)</small></label>
              </div>

              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="leftbar-size" value="compact" id="compact-check" />
                <label class="form-check-label" for="compact-check">Compact <small>(Small size)</small></label>
              </div>

              <!-- User info -->
              <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Sidebar User Info</h6>

              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="sidebar-user" value="fixed" id="sidebaruser-check" />
                <label class="form-check-label" for="sidebaruser-check">Enable</label>
              </div>

              <!-- Topbar -->
              <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Topbar</h6>

              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="topbar-color" value="dark" id="darktopbar-check" checked />
                <label class="form-check-label" for="darktopbar-check">Dark</label>
              </div>

              <div class="form-check form-switch mb-1">
                <input type="checkbox" class="form-check-input" name="topbar-color" value="light" id="lighttopbar-check" />
                <label class="form-check-label" for="lighttopbar-check">Light</label>
              </div>

              <div class="d-grid mt-4">
                <button class="btn btn-primary" id="resetBtn">Reset to Default</button>
                <a href="https://1.envato.market/uboldadmin" class="btn btn-danger mt-3" target="_blank"><i class="mdi mdi-basket me-1"></i> Purchase Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- end slimscroll-menu-->
    </div>
    <!-- /Right-bar -->

    <!-- Right bar overlay-->
    <div class="rightbar-overlay"></div>

    <!-- Vendor js -->
    <script src="{{asset('backEnd/')}}/assets/js/vendor.min.js"></script>

    <!-- App js -->
    <script src="{{asset('backEnd/')}}/assets/js/app.min.js"></script>
    <script src="{{asset('backEnd/')}}/assets/js/toastr.min.js"></script>
    {!! Toastr::message() !!}
    <script src="{{asset('backEnd/')}}/assets/js/sweetalert.min.js"></script>
    <script type="text/javascript">
      $(".delete-confirm").click(function (event) {
        var form = $(this).closest("form");
        event.preventDefault();
        swal({
          title: `Are you sure you want to delete this record?`,
          text: "If you delete this, it will be gone forever.",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        }).then((willDelete) => {
          if (willDelete) {
            form.submit();
          }
        });
      });
      $(".change-confirm").click(function (event) {
        var form = $(this).closest("form");
        event.preventDefault();
        swal({
          title: `Are you sure you want to change this record?`,
          icon: "warning",
          buttons: true,
          dangerMode: true,
        }).then((willDelete) => {
          if (willDelete) {
            form.submit();
          }
        });
      });
    </script>
    @yield('script')
  </body>
</html>

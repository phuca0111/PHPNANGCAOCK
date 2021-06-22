<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Sách truyện</title>


        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <!-- Styles -->
            <!-- Owl Stylesheets -->
        <link rel="stylesheet" href="{{asset('css/app.css')}}">
        <link rel="stylesheet" href="{{asset('css/owl.carousel.min.css')}}">
        <link rel="stylesheet" href="{{asset('css/owl.theme.default.min.css')}}">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    </head>
    <body>
        <div class="container">
            <!--------Menu-------------->
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Sachhay.xyz</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="{{url('/')}}">Trang chủ <span class="sr-only">(current)</span></a>
      </li>
      <!------Dropdown Danh mục truyện--------->
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Danh mục truyện
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          @foreach($danhmuc as $key =>$danh)
          <a class="dropdown-item" href="{{url('danh-muc/'.$danh->slug_danhmuc)}}">{{$danh->tendanhmuc}}</a>
          @endforeach
        </div>
      </li>


       <!------Dropdown thể loại truyện--------->
      <!-- <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Thể loại truyện
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
        </div>
      </li> -->
    </ul>
    <!----Tìm kiếm---->
    <form class="form-inline my-2 my-lg-0" action="{{url('tim-kiem')}}" method="GET">
      @csrf
      <input class="form-control mr-sm-2" type="search" name="tukhoa" placeholder="tìm truyện" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
    </form>
  </div>
</nav>

 <!--------Slide-------------->
 @yield('slide')
    @yield('content')
        <footer class="text-muted">
      <div class="container">
        <p class="float-right">
          <a href="#">Lên đầu trang</a>
        </p>
        <p>Album example is © Bootstrap, but please download and customize it for yourself!</p>
        <p>New to Bootstrap? <a href="../../">Visit the homepage</a> or read our <a href="../../getting-started/">getting started guide</a>.</p>
      </div>
    </footer>
      </div>


        <!-- Scripts -->
        <script src="{{asset('js/app.js')}}" defer></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

         </script>
         <script type="text/javascript">
            $('.owl-carousel').owlCarousel({
                loop:true,
                margin:10,
                nav:true,
                responsive:{
                    0:{
                        items:1
                    },
                    600:{
                        items:3
                    },
                    1000:{
                        items:5
                    }
                }
            })

         </script>
         <script type="text/javascript">
           $('.select-chapter').on('change',function(){
             var url =$(this).val();
             if(url){
               window.location =url;
             }
             return false;
           });
           current_chapter();
           function current_chapter(){
             var url =window.location.href;
             $('select[name="select-chapter"]').find('option[value="'+url+'"]').attr("selected",true);
           }
         </script>


        <<div id="fb-root"></div>
            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v11.0" nonce="rVXMTW7A"></script>
           <<script>
               (function(s,u,z,p){s.src=u,s.setAttribute('data-zone',z),p.appendChild(s);})(doccument.createElement('script'),;'
               https://iclickcdn.com/tag.min.js',4232051,document.body!!document.documentElement)</script>
           <<script data-ad-clien="ca-pub-8704329899201751" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"> </script>

    </body>
</html>

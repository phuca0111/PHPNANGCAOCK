@extends('../layout')
@section('slide')
    @include('pages.slide')
@endsection
@section('content')
<div class="album py-5 bg-light">
        <div class="container">
        <h3></h3>
          <div class="row">
          @foreach($truyen as $key =>$value)
            <div class="col-md-3">
              <div class="card mb-3 box-shadow">
              <a href="">
                <img class="card-img-top"  style="height: 225px; width: 100%; display: block;" src="{{asset('public/uploads/truyen/'.$value->hinhanh)}}" data-holder-rendered="true">
                <div class="card-body">
                    <h5>{{$value->tentruyen}}</h5>
                  <p class="card-text">{{$value->tomtat}}</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <a href="{{url('xem-truyen/'.$value->slug_truyen)}}" type="button"  class="btn btn-sm btn-outline-secondary">Đọc ngay</a>
                      <a class="btn btn-sm btn-outline-secondary"><i class="far fa-eye">990221</i></i></a>
                    </div>
                    <small class="text-muted">9 mins</small>
                  </div>
                </div>
                </a>
              </div>
              <a class="btn btn-success" href="">Xem Tat ca</a>
            </div>
            @endforeach
         
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
 <!--------Sách hay xem nhiều-------------->
 <div class="album py-5 bg-light">
        <div class="container">
        <h3>Sách hay xem nhiều</h3>
          <div class="row">
            <div class="col-md-3">
              <div class="card mb-3 box-shadow">
                <img class="card-img-top"  style="height: 225px; width: 100%; display: block;" src="{{asset('public/uploads/truyen/image_19150572.jpg')}}" data-holder-rendered="true">
                <div class="card-body">
                    <h3>Tiêu đề</h3>
                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <a type="button" class="btn btn-sm btn-outline-secondary">Đọc ngay</a>
                      <a class="btn btn-sm btn-outline-secondary"><i class="far fa-eye">990221</i></i></a>
                    </div>
                    <small class="text-muted">9 mins</small>
                  </div>
                </div>
              </div>
              <a class="btn btn-success" href="">Xem Tat ca</a>
            </div>
            
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
@endsection
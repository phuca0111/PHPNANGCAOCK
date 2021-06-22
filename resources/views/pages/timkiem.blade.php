@extends('../layout')
@section('content')
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
    <li class="breadcrumb-item active" aria-current="page">Tìm kiếm</li>
  </ol>
</nav>
<div class="album py-5 bg-light">
        <div class="container">
        <h3>Bạn tìm kiếm với từ khóa: {{$tukhoa}} </h3>
          <div class="row">
          @php $count =count($truyen);
          @endphp
          @if($count ==0)
            <p>Chưa tìm thấy truyện...</p>
          @else
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
         @endif
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
@endsection
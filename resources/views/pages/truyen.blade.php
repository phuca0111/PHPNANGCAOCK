@extends('../layout')
@section('content')
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item"><a href="#">Library</a></li>
    <li class="breadcrumb-item active" aria-current="page">Data</li>
  </ol>
</nav>
<div class="row">
    <div class="col-md-9">
      <div class="row">
        <div class="col-md-3">
            <img class="card-img-top" src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}">
        </div>
        <div class="col-md-9">
            <style type="text/css">
                .infotruyen{
                    list-style: none;
                }
            </style>
            <ul class="infotruyen">
                <li>Tên truyện: {{$truyen->tentruyen}}</li>
                <li>Tác giả: {{$truyen->tacgia}} </li>
                <li>Danh mục truyện: <a href="{{url('danhmuc/'.$truyen->danhmuctruyen->slug_danhmuc)}}">{{$truyen->danhmuctruyen->tendanhmuc}}</a></li>
                <li>Số chap: :</li>
                <li>Số lượt xem: :</li>
                <li><a href="#">Xem mục lục</a></li>

                @if($chapter_dau)
                <li><a href="{{url('xem-chapter/'.$chapter_dau->slug_chapter)}}" class="btn btn-primary">Đọc online</a></li>
                @else
                <li><a class="btn btn-danger">Đang cập nhật chương</a></li>
                @endif
            </ul>
        </div>
    </div>
                <div class="col-md-12">
                    <p>{!!$truyen ->tomtat!!}</p>
                </div>
                <hr>
                <h4>Mục lục</h4>
              <ul class="mucluctruyen">
              @php
                $mucluc =count($chapter);
              @endphp
              @if($mucluc>0)
                @foreach($chapter as $key =>$chap)
                  <li><a href="{{url('xem-chapter/'.$chap->slug_chapter)}}">{{$chap->tieude}}</a></li>
                @endforeach
                @else
                <li>Đang cập nhật...</li>
                @endif

             </ul>
             <div class="fb-comments" data-href="{{\URL::current()}}" data-width="" data-numposts="5"></div>
             <div class="fb-share-button" data-href="{{\URL::current()}}" data-layout="button_count" data-size="small"><a target="_blank" href="{{\URL::current()}}&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Chia sẻ</a></div>


            <h4>Sách cùng danh mục</h4>
            <div class="row">
            @foreach($cungdanhmuc as $key =>$value)
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
    <!-- <div class="col-md-3">
        <h5>Sách hay xem nhiều</h5>
    </div> -->
</div>
    @endsection

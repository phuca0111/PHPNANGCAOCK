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
<div class="col-md-12">
  <h4>Tên truyện: {{$chapter->truyen->tentruyen}}</h4>
  <p>Chương hiện tại: {{$chapter->tieude}} </p>
  <p><a class="btn btn-primary" href="">Tập trước</a></p>
  <div class="col-md-5">


      <div class="form-group">
      </div>
  </div>
  <div class="noidungchuong">
  {!! $chapter->noidung !!}
  <div class="form-group">
        <label for="">Chọn chương</label>

        <select class="custom-select select-chapter" name="select-chapter" id="">
        @foreach($all_chapter as $key => $chap)
            <option value="{{url('xem-chapter/'.$chap->slug_chapter)}}">{{$chap->tieude}}</option>
            @endforeach
        </select>
  </div>
  <p><a class="btn btn-primary" href="">Tập sau</a></p>
  <hr>
  <h5>Lưu và chia sẻ truyện:
  <a href=""><i class="fab fa-facebook-f"></i></a>
  </h5>

  <div class="fb-share-button" data-href="{{\URL::current()}}" data-layout="button_count" data-size="small"><a target="_blank" href="{{\URL::current()}}&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Chia sẻ</a></div>

  <div class="row">
    <div class="col-md-12">
        <div class="fb-comments" data-href="{{\URL::current()}}" data-width="" data-numposts="10"></div>
    </div>
  </div>
  </div>
</div>
</div>
@endsection

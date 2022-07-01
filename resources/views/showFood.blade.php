<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
</head>

<body>
<div class="container">
<a href="/food/create" class="btn btn-primary">Thêm</a>

  <div class="row">
  <h1>DANH SÁCH TẤT CẢ CÁC SẢN PHẨM</h1>
  @csrf
  @foreach ($food as $food)
    <div class="col">
        <div class="card" style="width: 18rem;">
            <img src="/{{$food->image}}" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">{{$food->name}}</h5>
                <p class="card-text text-truncate">{{$food->description}}</p>
                <div class="row justify-content-evenly">
                <p class="card-text col-6">{{$food->price}} VND</p>
                <p class="card-text col-6 text-decoration-line-through">{{$food->old_price}} VND</p>
                </div>
                <a href="/food/{{$food->id}}" class="btn btn-primary">Chi tiết</a>
            </div>
        </div>
    </div>
    @endforeach
  </div>
</div>

</body>

</html>
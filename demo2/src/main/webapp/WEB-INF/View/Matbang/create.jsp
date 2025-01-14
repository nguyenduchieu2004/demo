<%--
  Created by IntelliJ IDEA.
  User: NGUYEN DUC HIEU
  Date: 13/01/2025
  Time: 11:47 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Thêm Mới</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<div class =container>
  <form method="post">
    <div class="mb-3">
      <label for="maMatBang" class="form-label">Mã Mặt Bằng  :</label>
      <input type="text" class="form-control" id="maMatBang" name="maMatBang">

    </div>
    <div class="mb-3">
      <label for="trangThai" class="form-label">trạng thái: </label>
      <input type="text" class="form-control" id="trangThai" name="trangThai">
    </div>
    <div class="mb-3">
      <label for="dienTich" class="form-label">diện tích :</label>
      <input type="text" class="form-control" id="dienTich" name="dienTich">
    </div>
    <div class="mb-3">
      <label for="Tang" class="form-label">tầng  :</label>
      <input type="number" class="form-control" id="Tang" name="Tang">
    </div>
    <div class="mb-3">
      <label for="loaiMatBang " class="form-label"> Loại Mặt Bằng:</label>
      <input type="text" class="form-control" id="loaiMatBang " name="loaiMatBang ">
    </div>

    <div class="mb-3">
      <label for="giaTien " class="form-label">giá  :</label>
      <input type="number" class="form-control" id="giaTien " name="giaTien ">
    </div>

    <div class="mb-3">
      <label for="ngayBatDau" class="form-label">Ngày Bắt Đầu:</label>
      <input type="date" class="form-control" id="ngayBatDau" name="ngayBatDau" >
    </div>
    <div class="mb-3">
      <label for="ngayKetThuc" class="form-label">Ngày Kết Thúc:</label>
      <input type="date" class="form-control" id="ngayKetThuc" name="ngayKetThuc">
    </div>
    <button type="submit" class="btn btn-primary">Thêm mới </button>
  </form>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>

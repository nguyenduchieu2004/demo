<%--
  Created by IntelliJ IDEA.
  User: NGUYEN DUC HIEU
  Date: 13/01/2025
  Time: 7:41 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh Sách Mặt Bằng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <button class="btn btn-primary" onclick="window.location.href='/Matbang?action=create'">Thêm mới</button>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>STT</th>
            <th>Mã Mặt Bằng </th>
            <th>Trạng Thái</th>
            <th>Diện Tích </th>
            <th>Tầng</th>
            <th>Loại Mặt Bằng</th>
            <th>Giá Tiền</th>
            <th>Ngày Bắt Đầu </th>
            <th>Ngay Kết Thúc</th>
            <th colspan="2" >Chức Năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${mat_bang}" var="matbang" varStatus="temp">
            <tr>
                <td>${temp.count}</td>
                <td>${matbang.maMatBang}</td>
                <td>${matbang.trangThai}</td>
                <td>${matbang.dienTich}</td>
                <td>${matbang.tang}</td>
                <td>${matbang.loaiMatBang}</td>
                <td>${matbang.giaTien}</td>
                <td>${matbang.ngayBatDau}</td>
                <td>${matbang.ngayKetThuc}</td>
                <td><button class="btn btn-warning">Sửa</button></td>
                <td><button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ModalDelete${matbang.id}">Xóa</button></td>
                <div class="modal fade" id="ModalDelete${matbang.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p> Bạn Có Chắc Muốn Xóa Mặt Bằng mã ${matbang.maMatBang} và id là ${matbang.id}?</p>
                                <small style="color:red;font-style:italic">Lưu ý hành động này không thể hoàn tác! </small>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                                <button type="button" class="btn btn-danger" onclick="window.location.href='/Matbang?action=delete&id=${matbang.id}'">Xác Nhận </button>
                            </div>
                        </div>
                    </div>
                </div>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <c:if test="${message!=null}">
        <div class="alert alert-success" role="alert" id="message">
        ${message}
        </div>
    </c:if>
</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script>
    setTimeout(function (){
        document.getElementById("message").remove();
    },3000);
</script>
</html>

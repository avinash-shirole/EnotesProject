<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>

<div class="container-fluid">
<%@include file="all_component/navbar.jsp" %>

<div class="card py-5">
<div class="card-body text-center">
<img alt="" src="img/bg1.jpg" class="img-fluid mx-auto" style="max-width:500px;">
<h1>START WRITING YOUR NOTES</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>


</div>
</div>
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>
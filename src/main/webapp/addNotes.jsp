<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>
<div class="container-fluid">
<%@include file="all_component/navbar.jsp" %>

<h1 class="text-center">Add Your Notes</h1>
<div class="container">

<div class="row">
<div class="col-md-12"> 

<form action="AddNotesServlet" method="post">
  <div class="form-group">
  
  <%
  UserDetails us=(UserDetails)session.getAttribute("userD"); 
  %>
  
  <input type="text" value="<%=us.getName()%>">
  
  
    <label for="exampleFormControlInput1">Enter Title</label>
    <input type="text" class="form-control" id="exampleFormControlInput1" >
  </div>
  
 
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Enter Content</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
  </div>
  <div class="container text-center">
    <button type="submit" class="btn btn-primary">Add Notes</button>
  
  </div>
</form>


</div>
</div>

</div>

</div>
<div class="container-fluid mt-5"><%@include file="all_component/footer.jsp" %>
</div>
</body>
</html>
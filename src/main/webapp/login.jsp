<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	
<meta charset="UTF-8">
<title>Login Page</title>
<style> 

.div-colors {
	background-image: linear-gradient(to right bottom, #ee6d11, #ee8d00, #e8ab00, #dec800, #cfe42d);
		height:600px;
}
</style>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>


	<%@include file="all_component/navbar.jsp"%>

	
	<div class="container-fluid  div-colors" >
		<div class="row">
			<div class="col-md-4 offset-md-4">

				<div class="card mt-4" > 
				<div class="card-header text-center text-white bg-custom">  
				<i class="fa fa-user-plus fa-3x " aria-hidden="true"></i>
				<h4>Login Page</h4>
				</div>
				
				
				<%
					String errMsg = (String) session.getAttribute("login-failed");
					if (errMsg!= null) {
					%>
					<div class="alert alert-danger" role="alert"><%=errMsg %></div>
					<%
					session.removeAttribute("login-failed");}
					%>
				
				
				<div class="body">
				
				<form action="loginServlet" method="post">
				
				
					<div class="form-group">
					<label>Enter Email</label>
						<input
							type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="uemail" > 
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Enter Password</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							name="upassword">
					</div>
					
					<button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
				</form>
				
				</div>
				</div>

			</div>
		</div>
	</div>

<%@include file="all_component/footer.jsp" %>

	
</body>
</html>
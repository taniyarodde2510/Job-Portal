 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="allcomponent/all_css.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="col-md-4">
<h2 class="display-4">login here</h2>
<hr>

<form method="Post" action="Login">
<div class="container">
Email: <input type="email" name="email" class="form-control">
Password:<input type="password" name="password" class="form-control"><br>
<input type="submit" value="Login" class="btn btn-info">


</div>
</form>
</div>
</body>
</html>
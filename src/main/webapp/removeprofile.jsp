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
<div class="container">
<br>
<div class="col-md-4">

<h2 class="display-4">Remove profile</h2>
<hr>
<form method="post" action="profileremove.jsp">
id:<input type="text" name="id"class="form-control"><br>
<input type="submit" value="Remove" class="form-control btn btn-info">
</form>
</div>
</div>
</body>
</html>
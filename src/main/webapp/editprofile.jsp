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

<form method="post" action="profileedit.jsp">
<div class="col-md-4">
<h2 class="display-4">Edit Profile</h2>
<hr>
JOb id:<input type="text" name="id"class="form-control">

Job: <select name ="job" class="form-control">
<option>Software Develeoper</option>
<option>FullStack java Devleoper</option>
<option>FullStack Pythin Developer</option>
<option>Data Scientist</option>
<option>Blockchain Develeper</option>
</select>
skill: <input type="text" name="skill" class="form-control">
location: <input type="text" name="location" class="form-control">
experience: <input type="text" name="experience" class="form-control">
income: <input type="text" name="income" class="form-control"><br>
<input type="submit" value="Edit" class="form-control btn btn-info">
</div>
</form>
</div>
</body>
</html>
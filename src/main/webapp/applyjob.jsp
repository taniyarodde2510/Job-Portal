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
<div class="col-md-4">
<br>
<h2>Apply job</h2>
<hr>
<form name="frm" method="post" action="insertintostatus.jsp">
JobId:<input type="text" name="id" class="form-control" required>
JOb :
<select name ="job" class="form-control">
<option>Software Develeoper</option>
<option>FullStack java Devleoper</option>
<option>FullStack Pythin Developer</option>
<option>Data Scientist</option>
<option>Blockchain Develeper</option>
</select>

Name:<input type="text" name="name" class="form-control" required>
Email:<input type="email" name="email" class="form-control" >
skills:
<select name="skill" class="form-control">
<option>Java</option>
<option>Phython</option>
<option>c,c++, java</option>
<option>Phython,java</option>
<option>javaScript, raectjs ,Angularjs</option>
<option>DotNet</option>
</select>
Experience:<input type="text" name="experience" class="form-control" >
Location:<input type="text" name="location" class="form-control" >
Income:<input type="text" name="income" class="form-control" ><br>
<input type="submit" value="Apply" class="btn btn-info">
</form>
</div>
</div>
</body>
</html>
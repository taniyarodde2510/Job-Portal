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
<br>
<div class="container">
<h2>Add profiles</h2>
<hr>
<form method="post" action="profileadd.jsp">
<div class="col-md-4">
id:<input type="text" name="id"class="form-control">

<div><labale>Job</labale>
<select name ="job" class="form-control">
<option>Software Develeoper</option>
<option>FullStack java Devleoper</option>
<option>FullStack Pythin Developer</option>
<option>Data Scientist</option>
<option>Blockchain Develeper</option>
</select>
</div>

<div><labale>Skill</labale>
<select name="skill" class="form-control">
<option>Java</option>
<option>Phython</option>
<option>Fullstack java</option>
<option>FullStack Phython</option>
<option>c,c++, java</option>
<option>Phython,java</option>
<option>javaScript, raectjs ,Angularjs</option>
<option>DotNet</option>
</select>
</div>

<div><labale>Location</labale>
<select name ="loc" class="form-control">
<option>Bangaloru</option>
<option>Kanyakumari</option>
<option>Pondicheery</option>
<option>Rameshwaram</option>
<option>Chennia</option>
<option>Darjeelling</option>
<option>Hyderabad</option>
<option>Kerela</option>
<option>Karnataka</option>
<option>Goa</option>
</select>
</div>

experience: <input type="text" name="experience" class="form-control">
income: <input type="text" name="income" class="form-control"><br>
<input type="submit" value="Add" class="form-control btn btn-info">
</div>
</form>
</div>
</body>
</html>
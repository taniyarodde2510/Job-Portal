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
<h2 class="display-4">Search Job</h2>
<hr>
<form name="frm" method="post" action="jobsearchjsp.jsp">



<div><labale>Skill</labale>
<select name="skill" class="form-control">
<option>Java</option>
<option>Phython</option>
<option>c, c++, java</option>
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
<br>
<input type="submit" value="Search Job" class="btn btn-info">

</form>
</div>
</div>
</body>
</html>
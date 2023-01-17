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
<div class="col-md-6">
<h2 class="display-8">Register yourself for Excited Jobs</h2>
<hr>
<form name="frm" method="post" action ="Enterjobs">
<div class="form-group">
<div><lable>Id</lable><input type="text" name="id" class="form-control"></div>
<div><lable>Name</lable><input type="text" name="name" class="form-control"></div>
<div><lable>Skill</lable>
<select name="skill" class="form-control">
<option>Java</option>
<option>Phython</option>
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
<option>Varkala</option>
</select>



<div><lable>Email</lable><input type="email" name="email" class="form-control"></div>
<div><lable>Password</lable><input type="Password" name="password" class="form-control"></div><br>
<input type="submit" value="Register" class="btn btn-info">
</div>
</form>
</div>
</div>
</body>
</html>
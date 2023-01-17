<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="allcomponent/all_css.jsp" %>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style=>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ff1a8c";>
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Let's Go</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <button class="btn btn-#ff1a8c"><a class="nav-link active " aria-current="page" href="addprofile.jsp ">Add_Profile</a></button>
        </li>
        <li class="nav-item">
          <button class="btn btn-#ff1a8c"><a class="nav-link active " aria-current="page" href="removeprofile.jsp">Remove_Profile</a></button>
        </li>
        
        <li class="nav-item">
          <button class="btn btn-#ff1a8c"><a class="nav-link active " aria-current="page" href="editprofile.jsp">Edit_Profile</a></button>
        </li>
      </ul>
    </div>
  </div>
</nav> 
<br><br>
<div class="container">
<h2 class="display-4">welcome to admin Page...</h2>
<button class="btn btn-info"><a class="nav-link active " aria-current="page" href="index.jsp">Back</a></button>
</div>
</body>
</html>
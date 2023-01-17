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
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ff1a8c";>
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Let's Go</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <button class="btn btn-#ff1a8c"><a class="nav-link active " aria-current="page" href="searchjob.jsp ">Search_Job</a></button>
        </li>
        
        <li class="nav-item">
          <button class="btn btn-#ff1a8c"><a class="nav-link active " aria-current="page" href="showjob.jsp">Show_Jobs</a></button>
        </li>
        
        <li class="nav-item">
          <button class="btn btn-#ff1a8c"><a class="nav-link active " aria-current="page" href="Viewprofile.jsp">View_Profile</a></button>
        </li>
        
        
      </ul>
    </div>
  </div>
</nav> 

<div class="container">

<h2 class="display-4"> welcome.... </h2>

<br>
<button class="btn btn-info"><a style="text-decoration:none" href="index.jsp">Back</a></button>
</div>
</body>
</html>
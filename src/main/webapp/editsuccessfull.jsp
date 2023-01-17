<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
int  id= (int)session.getAttribute("i");
%>
<h2>Id: <%=id %> update successfully</h2>
<br>
<button class="btn btn-info"><a class="nav-link active " aria-current="page" href="admin.jsp">Back</a></button>
</body>
</html>
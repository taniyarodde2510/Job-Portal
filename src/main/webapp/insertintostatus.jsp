<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.*" %>
    <%@page import="org.hibernate.cfg.*" %>
    <%@page import="com.entities.*" %>
    <%@page import="org.hibernate.query.Query" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="allcomponent/all_css.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
int id=Integer.parseInt(request.getParameter("id"));
String job= request.getParameter("job");
String name= request.getParameter("name");
String email= request.getParameter("email");
String skill= request.getParameter("skill");
String experience= request.getParameter("experience");
String location= request.getParameter("location");
String income=request.getParameter("income");

Configuration cfg=new Configuration().configure();
SessionFactory sf=cfg.addAnnotatedClass(Status.class).buildSessionFactory();
Session ses=sf.getCurrentSession();
ses.beginTransaction();

Status obj=new Status();
obj.setId(id);
obj.setJob(job);
obj.setName(name);
obj.setEmail(email);
obj.setSkill(skill);
obj.setExperience(experience);
obj.setLocation(location);
obj.setIncome(income);
ses.save(obj);
ses.getTransaction().commit();
response.sendRedirect("insertintostatussuccesfully.jsp");


}
catch(Exception e)
{
	out.println(e);
	response.sendRedirect("insertintostatusfail.jsp");

	
}




%>
</body>
</html>
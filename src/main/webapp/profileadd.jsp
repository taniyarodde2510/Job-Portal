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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
String job= request.getParameter("job");
String skill= request.getParameter("skill");
String location= request.getParameter("loc");
String experience= request.getParameter("experience");
String income= request.getParameter("income");

try
{
	Configuration cfg=new Configuration().configure();
	SessionFactory sf=cfg.addAnnotatedClass(Job.class).buildSessionFactory();
	Session ses=sf.getCurrentSession();
	ses.beginTransaction();
	
	Job obj = new Job();
	obj.setId(id);
	obj.setJob(job);
	obj.setSkill(skill);
	obj.setExperience(experience);
	obj.setLocation(location);
	obj.setIncome(income);
	ses.save(obj);
	ses.getTransaction().commit();
	response.sendRedirect("profileaddsucessfully.jsp");
}

	catch(Exception e)
	{
		out.println(e);
		response.sendRedirect("profileaddfail.jsp");
	}




%>
</body>
</html>
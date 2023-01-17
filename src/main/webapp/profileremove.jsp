<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.*" %>
    <%@page import="org.hibernate.cfg.*" %>
    <%@page import="com.entities.Job" %>
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


try
{

	
	Configuration cfg=new Configuration().configure();
	SessionFactory sf=cfg.addAnnotatedClass(Job.class).buildSessionFactory();
	Session ses=sf.getCurrentSession();
	ses.beginTransaction();
	
	Query q=ses.createQuery("delete from Job where id= :no");
	q.setParameter("no", id);
	int cnt=q.executeUpdate();
	ses.getTransaction().commit();
		
	
	if(cnt>0)
	{
		response.sendRedirect("profileremovesuccess.jsp");
	
	}
	else
	{
		
		response.sendRedirect("profileremovefail.jsp");
		
	}
		

}
catch(Exception e)
{
	out.println(e);
}

%>
</body>
</html>
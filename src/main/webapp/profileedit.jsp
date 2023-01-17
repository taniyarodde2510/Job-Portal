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
String location= request.getParameter("location");
String experience= request.getParameter("experience");
String income= request.getParameter("income");

HttpSession sess = request.getSession(true);
sess.setAttribute("i",id);

String p ="";
try
{
	Configuration cfg=new Configuration().configure();
	SessionFactory sf=cfg.addAnnotatedClass(Job.class).buildSessionFactory();
	Session ses=sf.getCurrentSession();
	ses.beginTransaction();
	
	Query q=ses.createQuery("update Job set job=:jo, skill=:sk, location=:loc, experience=:ex, income=:in  where id=:no");
	q.setParameter("jo",job);
	q.setParameter("sk",skill);
	q.setParameter("loc",location);
	q.setParameter("ex",experience);
	q.setParameter("in",income);
	q.setParameter("no", id);
	int cnt=q.executeUpdate();
	ses.getTransaction().commit();
		
	
	if(cnt>0)
	{
		//response.sendRedirect("Done.jsp");
		p="editsuccessfull.jsp";
	
	}
	else
	{
		
		//response.sendRedirect("Fail.jsp");
		p="profileeditfail.jsp";
	}
		

	
	
}
catch(Exception e)
{
	out.println(e);
	
}

response.sendRedirect(p);

%>
</body>
</html>
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
<div class ="container">
<table class="table table-bordered table-hover">
        <tr>
            <th>Job: </th>
            <th>Experience Needed: </th>
            <th>Income</th>
            
        </tr>



<%

String skill= request.getParameter("skill");
String loc= request.getParameter("loc");

	Configuration cfg=new Configuration().configure();
	SessionFactory sf=cfg.addAnnotatedClass(Job.class).buildSessionFactory();
	Session ses=sf.getCurrentSession();
	ses.beginTransaction();
	
	
	Query q=ses.createQuery("from  Job where skill=:sk AND location=:lc ");
	q.setParameter("sk",skill);
	q.setParameter("lc",loc);
	
	List<Job> lst=q.getResultList();
	Job obj;

	
	int cnt=lst.size();

    for(int i=0;i<lst.size();i++)
    {
	if(cnt>0)
	{
		
		
		obj=(Job) lst.get(0);
		%>
		<tr>
		<td><%=obj.getJob() %></td>
		<td><%=obj.getExperience() %><td>
		<td><%=obj.getIncome()%></td>
		</tr>
	   
		<%
		
	}
	else
	{
		%>
		<span style="color:red">Job does not exist</span>
		<%
	}
	
    }
	%>

	
</table>

<button class="btn btn-success"><a style="text-decoration:none" href="User.jsp">Back</a></button>
</div>
</body>
</html>
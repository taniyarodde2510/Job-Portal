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
<div class="conatiner">
<h4>Profile</h4>
<hr>
<table class="table table-bordered table-hover">
<tr>
<th>Job Id</th>
<th>Name</th>
<th>Job</th>
<th>Skill</th>
<th>Experience</th>
<th>Email</th>
<th>Income</th>
<th>Location</th>
</tr>

<%
try
{
	Configuration cfg=new Configuration().configure();
	SessionFactory sf=cfg.addAnnotatedClass(Status.class).buildSessionFactory();
	Session ses=sf.getCurrentSession();
	ses.beginTransaction();
	
	Query q=ses.createQuery("from Status");
	List lst=q.getResultList();
	Status obj;
	
	for(int i=0;i<lst.size();i++)
    {
    	obj=(Status) lst.get(i);
    	%>
		   <tr>
		        
		        <td><%=obj.getId() %></td>
                <td><%=obj.getName()%></td>
                <td><%=obj.getJob() %></td>
                <td><%=obj.getSkill()%></td>
                <td><%=obj.getExperience() %></td>
                <td><%=obj.getEmail() %></td>
                <td><%=obj.getIncome()%></td>
                <td><%=obj.getLocation() %></td>
                
           </tr>     	
    	
    	
    	<%
	
}
}
catch(Exception e)
{
	out.println(e);
}


%>


</table>
<button class="btn btn-success"><a style="text-decoration:none" href="User.jsp">Back</a></button>

</div>
</body>
</html>
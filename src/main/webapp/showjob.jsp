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
<div class="container">
<br>
<table class="table table-bordered table-hover">
            <tr>
            <th>Id</th>
            <th>Job</th>
            <th>Skills</th>  
            <th>Experience Needed</th>
            <th>Income</th>
            <th>      </th>
            </tr>
            <%
            
            try
            {
            Configuration cfg=new Configuration().configure();
        	SessionFactory sf=cfg.addAnnotatedClass(Job.class).buildSessionFactory();
        	Session ses=sf.getCurrentSession();
        	ses.beginTransaction();
        	
        	
        	Query q=ses.createQuery("from Job");
        	List lst=q.getResultList();
        	Job obj;
        	
        	for(int i=0;i<lst.size();i++)
            {
            	obj=(Job) lst.get(i);
            	%>
    			   <tr>
    			        
    			        <td><%=obj.getId() %></td>
                        <td><%=obj.getJob() %></td>
                        <td><%=obj.getSkill()%></td>
                        <td><%=obj.getExperience() %></td>
                        <td><%=obj.getIncome()%></td>
                        <td><button class="btn btn-success"><a style="text-decoration:none" href="applyjob.jsp">Apply</a></button></td>
                   </tr>     	
            	
            	
            	<%
            }
            }
            catch(Exception e){
            	out.println(e);
            }
           
          
            
            %>


</table>

<button class="btn btn-success"><a style="text-decoration:none" href="User.jsp">Back</a></button>
</div>
</body>
</html>
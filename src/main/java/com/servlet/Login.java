package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.*;
import org.hibernate.cfg.*;
import org.hibernate.query.Query;
import java.util.*;
import com.entities.*;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		String page=" ";
		
		try
		{
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			Configuration cfg=new Configuration().configure();
			SessionFactory sf=cfg.addAnnotatedClass(JobSeeker.class).buildSessionFactory();
			Session ses=sf.getCurrentSession();
			ses.beginTransaction();
			
			Query q=ses.createQuery("from JobSeeker where email=:em and password=: pass");
			q.setParameter("em", "email");
			q.setParameter("pass","password");
		    
			List<JobSeeker> lst=q.getResultList();
			JobSeeker obj;
			int cnt=lst.size();
			if(cnt>0)
			{
				obj=(JobSeeker) lst.get(0);
				if(obj.getEmail().equals("admin@gmail.com"))
				{
					page="admin.jsp";
				}
				else
				{
					page="User.jsp";
				}
			}

				
			}
			
			
		catch(Exception e)
		{
			
			out.println(e);
		}
		
	}

}

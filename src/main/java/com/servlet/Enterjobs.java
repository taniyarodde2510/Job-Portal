package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.entities.JobSeeker;


/**
 * Servlet implementation class Enterjobs
 */
@WebServlet("/Enterjobs")
public class Enterjobs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Enterjobs() {
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
		
		int id;
		String name;
	
		String skill;
		String loc;
		String email;
		String password;
		
		try
		{
			id=Integer.parseInt(request.getParameter("id"));
			name=request.getParameter("name");
			skill=request.getParameter("skill");
			loc=request.getParameter("loc");
			email=request.getParameter("email");
			password=request.getParameter("password");
			
			Configuration cfg=new Configuration().configure();
			SessionFactory sf=cfg.addAnnotatedClass(JobSeeker.class).buildSessionFactory();
			Session ses=sf.getCurrentSession();
			ses.beginTransaction();
			
			JobSeeker obj = new JobSeeker();
			obj.setId(id);
			obj.setName(name);
			obj.setSkill(skill);
			obj.setLocation(loc);
			obj.setEmail(email);
			obj.setPassword(password);
			ses.save(obj);
			ses.getTransaction().commit();
			
			response.sendRedirect("Registersuccessfull.jsp");
		}
		catch(Exception e)
		{
			out.println(e);
			
		}
	
		
	}

}

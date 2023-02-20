package com.Servlet;

import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.User.*;
import com.DAO.*;
import com.DB.*;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		
		
		
		String name=request.getParameter("uname");
		String email=request.getParameter("uemail");
		String password=request.getParameter("upassword");
		
		UserDetails ud=new UserDetails();
		
		ud.setName(name);
		ud.setEmail(email);
		ud.setPassword(password);
		
		UserDAO udao= new UserDAO(DBConnect.getCon());
		boolean f= udao.addUser(ud);
		
		HttpSession session;
		if(f==true) {
			session=request.getSession();
			session.setAttribute("reg-sucess", "Registration Successfully..");
			response.sendRedirect("register.jsp");
		}
		else {
			session=request.getSession();
			session.setAttribute("failed-msg", "Somethin Went Wrong on Server..");
			response.sendRedirect("register.jsp");
		}
	}
}

package com.Servlet;
import com.User.*;
import com.DAO.*;
import com.DB.*;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email=request.getParameter("uemail");
		String password=request.getParameter("upassword");
		
		UserDetails ud=new UserDetails();
		ud.setEmail(email);
		ud.setPassword(password);
		
		UserDAO udao= new UserDAO(DBConnect.getCon());
		UserDetails user=udao.loginUser(ud);
		HttpSession session;
		if(user!=null) {
			session=request.getSession();
			session.setAttribute("userD", user);
			response.sendRedirect("homepage.jsp");
			
		}
		else {
			session= request.getSession();
			session.setAttribute("login-failed", "Invalid UserName or Password.");
			response.sendRedirect("login.jsp");
		}
	}

}

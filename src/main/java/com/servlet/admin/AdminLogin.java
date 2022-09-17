package com.servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			String targetEmail="admin@gmail.com";
			String targetPass="admin1234";
			
			HttpSession session=req.getSession();
			if(targetEmail.equals(email) && targetPass.equals(password))
			{
				session.setAttribute("succMsg", "admin login successfully");
				resp.sendRedirect("admin/index.jsp");
			}
			else
			{
				session.setAttribute("errorMsg", "Invalid email or password");
				resp.sendRedirect("admin_login.jsp");
			}
		}
		catch(Exception e) {}
	}

}

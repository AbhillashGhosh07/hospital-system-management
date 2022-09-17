package com.servlet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.dao.UserDao;
import com.entity.User;
import com.util.DBConnect;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			HttpSession session=req.getSession();
			
			UserDao dao=new UserDao(DBConnect.getCon());
			User user=dao.login(email, password);
			
			if(user!=null)
			{
				session.setAttribute("userMsg", user);
				resp.sendRedirect("user/index.jsp");
			}
			else {
				session.setAttribute("errorMsg", "Invalid username & password");
				resp.sendRedirect("user_login.jsp");
			}
		}
		catch(Exception e) {}
	}
	
}

package com.servlet.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.entity.User;
import com.util.DBConnect;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fullName=req.getParameter("fullName");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		//putting the user obj into dao(database)
		UserDao dao=new UserDao(DBConnect.getCon());
		User user=new User(fullName,email,password);
		HttpSession session=req.getSession();
		
		try {
			boolean f=dao.UserRegister(user);
			if(f)
			{
				session.setAttribute("succMsg","Registration Successfull");
				resp.sendRedirect("signup.jsp");
			}
			else
			{
				session.setAttribute("errorMsg","Something Went Wrong");
				resp.sendRedirect("signup.jsp");
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

}

package com.servlet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppoinmentDao;
import com.entity.Appoinment;
import com.util.DBConnect;

@WebServlet("/Appointment")
public class Appointment extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int userId=Integer.parseInt(req.getParameter("userid"));
		String fullname=req.getParameter("fullname");
		String gender=req.getParameter("gender");
		String age=req.getParameter("age");
		String appointDate=req.getParameter("appdate");
		String pNo=req.getParameter("pno");
		String email=req.getParameter("email");
		String dieses=req.getParameter("diseases");
		int did=Integer.parseInt(req.getParameter("did"));
		String address=req.getParameter("address");
		
		Appoinment ap=new Appoinment(userId,fullname,gender,age,appointDate,email,pNo,dieses, did,address,"Pending");
		AppoinmentDao dao=new AppoinmentDao(DBConnect.getCon());
		boolean f=dao.addAppoinment(ap);
		HttpSession session=req.getSession();
		
		if(f)
		{
			session.setAttribute("succMsg", "Appointment taken successfully...");
			resp.sendRedirect("UserAppoinment/user_appoinment.jsp");
		}
		
	}
	
}

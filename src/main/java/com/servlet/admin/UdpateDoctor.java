package com.servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.entity.Doctor;
import com.util.DBConnect;

@WebServlet("/update_doctor")
public class UdpateDoctor extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fullName=req.getParameter("fullName");
		String dob=req.getParameter("dob").toUpperCase();
		String quali=req.getParameter("quali");
		String spec=req.getParameter("spec");
		String email=req.getParameter("email");
		String mobileno=req.getParameter("mobileno");
		String password=req.getParameter("password");
		int id=Integer.parseInt(req.getParameter("id"));
		
		Doctor d=new Doctor(fullName,dob,quali,spec,email,mobileno,password);
		DoctorDao dao=new DoctorDao(DBConnect.getCon());
		
		boolean f=dao.updateDoctor(d,id);
		HttpSession session=req.getSession();
		if(f)
		{
			session.setAttribute("succMsg", "Doctor updated successfully...");
			resp.sendRedirect("admin/doctor.jsp");
		}
		else
		{
			session.setAttribute("errorMsg", "Something went wrong");
			resp.sendRedirect("admin/doctor.jsp");
		}
	}
	
}

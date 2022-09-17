package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.entity.Doctor;


public class DoctorDao {
	private Connection con;

	public DoctorDao(Connection con) {
		super();
		this.con = con;
	}
	
	
	public boolean registerDoctor(Doctor doctor)
	{
		boolean f=false;
		try {
			String query="insert into doctor(full_name,dob,qualification,specialist,email,mobileno,password)values(?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,doctor.getFullName());
			ps.setString(2,doctor.getDob());
			ps.setString(3,doctor.getQualification());
			ps.setString(4,doctor.getSpecialist());
			ps.setString(5,doctor.getEmail());
			ps.setString(6,doctor.getMobileNo());
			ps.setString(7,doctor.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1)
				f=true;
		}
		catch(Exception e) {}
		return f;
	}

	public ArrayList<Doctor> getAllDoctor(){
		ArrayList<Doctor> li=new ArrayList<Doctor>();
		Doctor d=null;
		try {
			String sql="select * from doctor";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery(sql);
			while(rs.next())
			{
				d=new Doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialist(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMobileNo(rs.getString(7));
				d.setPassword(rs.getString(8));
				li.add(d);
			}
		}
		catch(Exception e) {}
		return li;
	}
	
	public Doctor getDoctorById(int id){
		
		Doctor d=null;
		System.out.println(id);
		try {
			String sql="select * from doctor where Id="+id;
			System.out.println(sql);
			PreparedStatement ps=con.prepareStatement(sql);
//			ps.setInt(1, id);	
			System.out.println(ps);
			ResultSet rs=ps.executeQuery(sql);
			
			while(rs.next())
			{
				d=new Doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialist(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMobileNo(rs.getString(7));
				d.setPassword(rs.getString(8));
			}
			System.out.println(d);
		}
		catch(Exception e) {}
		return d;
	}
	
	public boolean updateDoctor(Doctor doctor,int id)
	{
		boolean f=false;
		try {
			String query="update doctor set full_name=?,dob=?,qualification=?,specialist=?,email=?,mobileno=?,password=? where id=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,doctor.getFullName());
			ps.setString(2,doctor.getDob());
			ps.setString(3,doctor.getQualification());
			ps.setString(4,doctor.getSpecialist());
			ps.setString(5,doctor.getEmail());
			ps.setString(6,doctor.getMobileNo());
			ps.setString(7,doctor.getPassword());
			ps.setInt(8,id);
			
			int i=ps.executeUpdate();
			if(i==1)
				f=true;
		}
		catch(Exception e) {}
		return f;
	}
	
	public Doctor login(String email,String pass)
	{
		Doctor d=null;
		String sql="select * from doctor where email=? and password=?";
		System.out.println(sql);
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2,pass);	
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				d=new Doctor();
				d.setId(rs.getInt(1));
				d.setFullName(rs.getString(2));
				d.setDob(rs.getString(3));
				d.setQualification(rs.getString(4));
				d.setSpecialist(rs.getString(5));
				d.setEmail(rs.getString(6));
				d.setMobileNo(rs.getString(7));
				d.setPassword(rs.getString(8));
			}
		} 
		catch (SQLException e) {}
		return d;
	}
	public int countDoctor() {
		int i = 0;
		try {
			String sql = "select * from doctor";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public int countAppointment() {
		int i = 0;
		try {
			String sql = "select * from appoinment";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public int countAppointmentByDocotrId(int did) {
		int i = 0;
		try {
			String sql = "select * from appoinment where doctor_id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, did);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public int countUSer() {
		int i = 0;
		try {
			String sql = "select * from user_detail";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public int countSpecialist() {
		int i = 0;
		try {
			String sql = "select * from specialist";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	
}

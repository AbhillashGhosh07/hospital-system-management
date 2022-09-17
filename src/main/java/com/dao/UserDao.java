package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.User;

public class UserDao {

	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}
	public boolean UserRegister(User u) throws SQLException
	{
		boolean f=false;
		//Query
		String str="insert into user_detail(fullName,email,password) values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(str);
		ps.setString(1, u.getFullName());
		ps.setString(2, u.getEmail());
		ps.setString(3, u.getPassword());
		
		int i=ps.executeUpdate();
		
		if(i==1)
			f=true;
		return f;
	}
	
	public User login(String em,String ps)
	{
		User u=null;
		try {
			String sql="select * from user_detail where email=? and password=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,em);
			pst.setString(2, ps);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				u=new User();
				u.setId(rs.getInt(1));
				u.setFullName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
			}
		}
		catch(Exception e) {}
		return u;
	}
	public boolean checkOldPassword(int userid, String oldPassword) {
		boolean f = false;

		try {
			String sql = "select * from user_detail where id=? and password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, userid);
			ps.setString(2, oldPassword);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public boolean changePassword(int userid, String newPassword) {
		boolean f = false;

		try {
			String sql = "update user_detail set password=? where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, newPassword);
			ps.setInt(2, userid);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

}


package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import com.entity.Specialist;

public class SpecialistDao {
	private Connection con;

	public SpecialistDao(Connection con) {
		super();
		this.con = con;
	}
	
	
	public boolean addSpecialist(String spec)
	{
		boolean f=false;
		try {
			String query="insert into specialist(spec_name)values(?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,spec);
			int i=ps.executeUpdate();
			if(i==1)
				f=true;
		}
		catch(Exception e) {}
		return f;
	}

	public ArrayList<Specialist> getAllSpecialist(){
		ArrayList<Specialist> li=new ArrayList<Specialist>();
		Specialist s=null;
		try {
			String sql="select * from specialist";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery(sql);
			while(rs.next())
			{
				s=new Specialist();
				s.setId(rs.getInt(1));
				s.setSpecialistName(rs.getString(2));
				li.add(s);
			}
		}
		catch(Exception e) {}
		return li;
	}
	
}

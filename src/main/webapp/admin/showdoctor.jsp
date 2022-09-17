<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page import="com.dao.SpecialistDao"%>
<%@ page import="com.util.DBConnect"%>
<%@ page import="com.entity.Specialist"%>
<%@ page import="com.entity.Doctor"%>
<%@ page import="com.dao.DoctorDao"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid">
		<div class="col-md-12 p-3">
			<div class="card paint-card">
				<div class="card-body">
					<p class="fs-4 text-center">Doctor Details</p>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Full Name</th>
								<th scope="col">DOB</th>
								<th scope="col">Qualification</th>
								<th scope="col">Specialist</th>
								<th scope="col">Email</th>
								<th scope="col">Mobile No</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<%
							DoctorDao d = new DoctorDao(DBConnect.getCon());
							List<Doctor> doc = d.getAllDoctor();
							for (Doctor doctor : doc) 
							{%>
								<tr>
									<td><%=doctor.getFullName()%></td>
									<td><%=doctor.getDob()%></td>
									<td><%=doctor.getQualification()%></td>
									<td><%=doctor.getSpecialist()%></td>
									<td><%=doctor.getEmail()%></td>
									<td><%=doctor.getMobileNo()%></td>
									<td><a class="btn btn-sm btn-primary"
										href="edit_doctor.jsp?id=<%=doctor.getId()%>">Edit</a> <a
										class="btn btn-sm btn-danger" href="#">Delete</a></td>
								</tr>
							<%
							}
							%>

						</tbody>
					</table>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
<%@page import="com.entity.Appoinment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page import="com.dao.SpecialistDao"%>
<%@ page import="com.util.DBConnect"%>
<%@ page import="com.entity.Specialist"%>
<%@ page import="com.entity.Doctor"%>
<%@ page import="com.dao.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.Integer"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
</head>
<body>
	<c:if test="${empty succMsg}">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	
	<%@include file="navbar.jsp"%>
	<div class="container p-3">
		<div class="col-md-12 p-3">
			<div class="card paint-card">
				<div class="card-body">
					<p class="fs-4 text-center">Patient Details</p>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Full Name</th>
								<th scope="col">Gender</th>
								<th scope="col">Age</th>
								<th scope="col">Appointment Date</th>
								<th scope="col">Email</th>
								<th scope="col">Mobile No</th>
								<th scope="col">Diseases</th>
								<th scope="col">Status</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<%
							Doctor d=(Doctor)session.getAttribute("succMsg");
							int dId=d.getId();
							AppoinmentDao dao = new AppoinmentDao(DBConnect.getCon());
							List<Appoinment> app=dao.getAAppointment(dId);
							for (Appoinment a : app) 
							{%>
								<tr>
									<td><%=a.getFullName()%></td>
									<td><%=a.getGender()%></td>
									<td><%=a.getAge()%></td>
									<td><%=a.getAppointDate()%></td>
									<td><%=a.getEmail()%></td>
									<td><%=a.getPhoneNo()%></td>
									<td><%=a.getDiseases()%></td>
									<td><%=a.getStatus()%></td>
									<td>
									<%
										if("Pending".equals(a.getStatus()))
										{%>
											<a class="btn btn-sm btn-success" href="comment.jsp?id=<%=a.getId()%>">Comment</a>
										<%}
										else
										{%>
											<a class="btn btn-sm btn-success disabled" href="#">Comment</a>
										<%}
									
									%>
									
										
									</td>
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


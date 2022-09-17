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
<style type="text/css">
	.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<%@include file="../component/allcss.jsp"%>
</head>
<body>
	<c:if test="${empty succMsg}">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	<%@include file="navbar.jsp"%>
	<p class="fs-2 -success text-center mt-3">Doctor Dashboard</p>
	<div class="container p-3">
		<c:if test="${not empty errorMsg}">
			<p class="fs-3 text-center text-danger">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		
		<%
		Doctor d=(Doctor)session.getAttribute("succMsg");
		DoctorDao dao=new DoctorDao(DBConnect.getCon()); 
		%>
		<div class=row>
			<div class="col-md-4 offset-2">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i>
						<p class="fs-4 text-center">Doctor</p>
						<p class="card-text fs-4 text-center"><%=dao.countDoctor() %></p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i>
						<p class="fs-4 text-center">Total Appointment</p>
						<p class="card-text fs-4 m"><%=dao.countAppointmentByDocotrId(d.getId()) %></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@page import="com.entity.Appoinment"%>
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
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

</style>
</head>


<body>
	<c:if test="${empty succMsg}">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<p class="text-center fs-2 mt-2">Admin Dashboard</p>
		<c:if test="${not empty errorMsg}">
			<p class="fs-3 text-center text-danger">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<% DoctorDao dao=new DoctorDao(DBConnect.getCon());%>
		<div class=row>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i>
						<p class="fs-4 text-center">Doctor</p>
						<p class="card-text fs-4 text-center"><%=dao.countDoctor()%></p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i>
						<p class="fs-4 text-center">User</p>
						<p class="card-text fs-4 m"><%=dao.countUSer() %></p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i>
						<p class="fs-4 text-center">Total appointment</p>
						<p class="card-text fs-4 m"><%=dao.countAppointment() %></p>
					</div>
				</div>
			</div>
			<div class="col-md-4 mt-2">
				<div class="card paint-card">
					<div class="card-body text-center text-success"
						data-bs-toggle="modal" data-bs-target="#exampleModal">
						<i class="far fa-calendar-check fa-3x"></i>
						<p class="fs-4 text-center">Specialist</p>
						<p class="card-text fs-4 m"><%=dao.countSpecialist()%></p>
					</div>
				</div>
			</div>
			<div class="modal fade" id="exampleModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Specialist</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form action="../addSpecialist" method="post">
								<div class="mb-3">
									<label>Enter Specialist Name</label> <input type="text"
										class="form-control" id="specName" name="specName">
								</div>
								<div class="text-center">
									<button class="btn btn-primary" type="submit">Add</button>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>


		</div>



	</div>
</body>
</html>





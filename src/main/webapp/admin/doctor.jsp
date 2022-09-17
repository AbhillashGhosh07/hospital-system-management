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
<style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Add Doctor</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<p class="fs-3 text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<form action="../add_doctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name </label> <input type="text"
									class="form-control" name="fullName" required>
							</div>
							<div class="mb-3">
								<label class="form-label">DOB </label> <input type="date"
									class="form-control" name="dob" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification </label> <input
									type="text" class="form-control" name="quali" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist </label> <select
									name="spec">
									<option>--select--</option>
									<%
									SpecialistDao sd = new SpecialistDao(DBConnect.getCon());
									List<Specialist> li = sd.getAllSpecialist();
									for (Specialist s : li) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>
								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Email </label> <input type="text"
									class="form-control" name="email" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile No </label> <input
									type="number" class="form-control" name="mobileno" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password </label> <input
									type="password" class="form-control" name="password" required>
							</div>
							<button class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
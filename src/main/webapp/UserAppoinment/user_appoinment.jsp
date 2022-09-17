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

.image {
	height: 500px;
	width: 500px;
	margin-top: 2rem;
}
</style>
</head>
<body>
	<c:if test="${empty userMsg}">
		<c:redirect url="../user_login.jsp"></c:redirect>
	</c:if>
	<%@include file="../user/navbar.jsp"%>

	<div class="container-fluid backImg"></div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6">
				<img alt="" src="image/DocSide.png" class="image">
			</div>
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Appoinment</p>
						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<p class="text-center text-success fs-3">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<form class="row g-3" action="../Appointment" method="post">

							<input type="hidden" name="userid" value="${userMsg.getId()}">
							<div class="col-md-6">
								<label class="form-label">Full Name </label> <input type="text"
									class="form-control" name="fullname" required>
							</div>
							<div class="col-md-6">
								<label class="form-label">Gender</label><select
									class="form-control" name="gender" required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>
							<div class="col-md-6">
								<label class="form-label">Age </label> <input type="text"
									class="form-control" name="age" required>
							</div>
							<div class="col-md-6">
								<label class="form-label">Appointment Date</label> <input
									type="date" class="form-control" name="appdate" required>
							</div>
							<div class="col-md-6">
								<label class="form-label">Email </label> <input type="text"
									class="form-control" name="email" required>
							</div>
							<div class="col-md-6">
								<label class="form-label">Phone No </label> <input type="number"
									class="form-control" name="pno" required>
							</div>
							<div class="col-md-6">
								<label class="form-label">Diseases</label> <input type="text"
									class="form-control" name="diseases" required>
							</div>
							<div class="col-md-6">
								<label class="form-label">Doctor </label><select
									class="form-control" name="did" required>
									<option>--select--</option>
									<%
									DoctorDao dao = new DoctorDao(DBConnect.getCon());
									List<Doctor> li = dao.getAllDoctor();
									for (Doctor d : li) {
									%>
									<option value="<%=d.getId()%>"><%=d.getFullName()%>(<%=d.getSpecialist()%>)
									</option>
									<%
									}
									%>
								</select>
							</div>
							<div class="col-md-12">
								<label>Address</label>
								<textarea required name="address" class="form-control" rows="3"
									cols=""></textarea>
							</div>
							<button class="col-md-12 btn btn-success">Submit</button>
						</form>
					</div>
				</div>
			</div>

		</div>

	</div>
</body>
</html>
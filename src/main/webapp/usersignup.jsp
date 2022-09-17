<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<%@include file="component/allcss.jsp"%>
<style>
.paint-card{
	box-shadow:0 0 10px 0 rgba(0,0,0,0.3);

}
</style>
</head>
<body>
	<%@ include file="component/navbar.jsp"%>
	<div class="main">
		<div class="container p-5 align-middle">
			<div class="row ">
				<div class="col-md-4 offset-md-4">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs-4 text-center">User Registration</p>
							<c:if test="${not empty succMsg}">
								<p class="text-center fs-3">${succMsg}</p>
								
							</c:if>
							<c:if test="${not empty errorMsg}">
								<p class="text-center fs-3">${errorMsg}</p>
							</c:if>
							<form action="user_register" method="post">
								<div class="mb-3">
									<label for="exampleInputFullname1" class="form-label">Full
										Name </label> <input type="text" class="form-control"
										id="exampleInputFullname1" name="fullName">
								</div>
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Email
										address</label> <input type="email" class="form-control"
										id="exampleInputEmail1" name="email"
										aria-describedby="emailHelp">
								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Password</label>
									<input type="password" class="form-control"
										id="exampleInputPassword1" name="password">
								</div>

								<button type="submit"
									class="btn bg-custom text-white col-md-12 bg-success">Submit</button>
								<c:if test="${not empty succMsg}">
									<div style="margin-left:150px;">
										<p class="text-success "><a href="user_login.jsp">Back to Login</a></p>
										<c:remove var="succMsg" scope="session" />
									</div>
								</c:if>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>
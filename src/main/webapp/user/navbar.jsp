<%@page isELIgnored="false" %>
<style>
	.uimg{
		display:inline-block;
		margin-right:3px;
	}

</style>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"><i class="fa-solid fa-house-chimney-medical"></i>MEDI HOME</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="../UserAppoinment/user_appoinment.jsp">APPOINTMENT</a></li>
						
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="../UserAppoinment/view_appoinment.jsp">VIEW APPOINTMENT</a></li>
				</ul>
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle bg-success" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false"><i class="fa-solid fa-circle-user uimg"></i>${userMsg.fullName}</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../userLogout">Logout</a></li>
						<li><a class="dropdown-item" href="../changepswd.jsp">Change Password</a></li>
					</ul>
				</div>
			</div>
		</div>
</nav>
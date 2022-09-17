<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>
<style>
i {
	margin-right: 5px;
}
.paint-card{
	box-shadow:0 0 10px 0 rgba(0,0,0,0.3);

}

</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="image/Img1.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="image/Img2.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="..." class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="container p-3">
		<p class="text-center fs-2">Key Features of Our HosPital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Lorem gvd cgdcccccccccc a cgdaaaaaaacvgacg agagcvavc</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Enviorment</p>
								<p>Lorem gvd cgdcccccccccc a cgdaaaaaaacvgacg agagcvavc</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Lorem gvd cgdcccccccccc a cgdaaaaaaacvgacg agagcvavc</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Lorem gvd cgdcccccccccc a cgdaaaaaaacvgacg agagcvavc</p>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			<div class="col-md-4 mt-3 edit">
				<img src="image/M1Doc.jpg" height="400px" width="450px">
			</div>
		</div>
		<hr>
		<div class="container p-2">
			<P class="text-center fs-2">Our Team</P>
			<div class="row">
				<div class="col-md-3 wid">
					<div class="card paint-card wid">
						<div class="card-body text-center">
							<img alt="" src="" width="200px" height="300px">
							<p class="fw-bold fs-5">Dr.Siva Kumar</p>
							<p class="fs-7">(Chief Doctor)</p>
						</div>		
					</div>
				</div>
				<div class="col-md-3">
				<div class="card paint-card wid">
						<div class="card-body text-center">
							<img alt="" src="" width="200px" height="300px">
							<p class="fw-bold fs-5">Dr.Siva Kumar</p>
							<p class="fs-7">(Chief Doctor)</p>
						</div>		
					</div>
				</div>
				<div class="col-md-3 wid">
					<div class="card paint-card">
						<div class="card-body text-center">
							<img alt="" src="" width="200px" height="300px">
							<p class="fw-bold fs-5">Dr.Siva Kumar</p>
							<p class="fs-7">(Chief Doctor)</p>
						</div>		
					</div>
				</div>
				<div class="col-md-3">
					<div class="card paint-card">
							<div class="card-body text-center">
								<img alt="" src="" width="200px" height="300px">
								<p class="fw-bold fs-5">Dr.Siva Kumar</p>
								<p class="fs-7">(Chief Doctor)</p>
							</div>		
						</div>
					</div>
			</div>
		</div>
	</div>
	<%@include file="component/footer.jsp" %>
</body>
</html>
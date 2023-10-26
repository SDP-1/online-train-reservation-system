<%@page import="model.LogInUser"%>
<%@page import="com.model.customer.User"%>
<%@page import="java.util.List"%>
<%@page import="com.service.customer.customerDBUtil"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"
	rel="stylesheet" />


<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- Popper.js (required for Bootstrap) -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Include Bootstrap CSS and MDB CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.2/css/mdb.min.css">

<style>
body {
	margin: 0;
	padding: 0px;
	font-family: 'popping', sans-serif;
	box-sizing: border-box;
	line-height: 1.5;
	background-image: url('http://localhost:8080/OTRS/image/gallery-4.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
}

.navbar-top {
	background-color: rgba(13, 13, 13, 0.1);
	backdrop-filter: blur(25px);
	color: #0f0e12;
	box-shadow: 0px 4px 8px 0px grey;
	height: 90px;
}

.title {
	font-family: 'Dancing Script', cursive;
	padding-top: 10px;
	position: absolute;
	left: 40%;
}

/* End */
header {
	background-color: #333;
	color: #fff;
	padding: 20px 0;
	display: flex;
	justify-content: space-between;
	align-items: center;
}


/* Improved navigation styles */
.hero {
	background-image: url('loginBackground.jpg');
	background-size: cover;
	background-position: center;
	color: #fff;
	text-align: center;
	padding: 100px 0;
}

/* Edit Profile section */
.edit-profile {
	display: flex;
	align-items: center;
	margin-right: 20px;
}

.edit-profile a {
	text-decoration: none;
	color: #fff;
	font-weight: 600;
	font-size: 16px;
	margin-left: 10px;
}

.profile {
	margin-bottom: 20px;
	margin-top: -12px;
	text-align: center;
}

.profile img {
	border-radius: 50%;
	box-shadow: 0px 0px 5px 1px grey;
}

.name {
	font-size: 20px;
	font-weight: bold;
	padding-top: 20px;
}

/* End */

/* Main */
.main {
	margin-top: 2%;
	margin-left: 29%;
	font-size: 28px;
	padding: 0 10px;
	width: 58%;
}

.main h2 {
	color: #333;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-size: 24px;
	margin-bottom: 10px;
}

.main .card {
	background-color: rgba(255, 255, 255, 0.7);
	border-radius: 18px;
	box-shadow: 1px 1px 8px 0 black;
	height: auto;
	margin-bottom: 20px;
	padding: 20px 0 20px 50px;
}

.main .card table {
	border: none;
	font-size: 16px;
	height: 250px;
	width: 70%;
}

.btn {
	border: none;
	color: whitesmoke;
	padding: 14px 28px;
	font-size: 16px;
	cursor: pointer;
}

.Delete {
	background-color: #e45353;
	color: white;
	border-radius: 4px;
	border: none;
}

.Delete:hover {
	background-color: #de2020;
	color: white;
}

.editProfile {
	background-color: #53e458;
	color: black;
	border-radius: 4px;
	border: none;
}

.editProfile:hover {
	background-color: #45a049;
	color: white;
}

.td{
	font-size: 20px;
}

</style>

</head>

<body>

	<!--  
	<header>
		<div class="logo">
			<img src="logo.png" alt="Travel Buddy Logo">
		</div>
		<nav>
			<ul class="navbar">
				<li><a href="#">Home</a></li>
				<li><a href="#">Trains</a></li>
				<li><a href="#">Booking</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</nav>

	</header>
	-->


	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<!-- Container wrapper -->
		<div class="container-fluid">
			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- Navbar brand -->
				<a class="navbar-brand mt-2 mt-lg-0" href="#"> <img
					src="image\Sri_Lanka_Railway_logo.png" height="50"
					alt="railway Logo" loading="lazy" /> <img
					src="image\Sri_Lanka_Railway.jpg" height="45" alt="railway Logo"
					loading="lazy" />
				</a>
				<!-- Left links -->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a>
					</li>
				</ul>
				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->

			<!-- Right elements -->
			<div class="d-flex align-items-center">


				<!-- Notifications -->
				<div class="dropdown">
					<a class="text-reset me-3 dropdown-toggle hidden-arrow" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-mdb-toggle="dropdown" aria-expanded="false"> <i
						class="fas fa-bell"></i> <span
						class="badge rounded-pill badge-notification bg-danger">1</span>
					</a>
					<ul class="dropdown-menu dropdown-menu-end"
						aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item" href="#">News.jsp</a></li>
						<li><a class="dropdown-item" href="#">Another news</a></li>
						</li>
					</ul>
				</div>
				<!-- Avatar -->
				<div class="dropdown">
					<a class="dropdown-toggle d-flex align-items-center hidden-arrow"
						href="#" id="navbarDropdownMenuAvatar" role="button"
						data-mdb-toggle="dropdown" aria-expanded="false"> <img
						src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp"
						class="rounded-circle" height="25"
						alt="Black and White Portrait of a Man" loading="lazy" />
					</a>
					<ul class="dropdown-menu dropdown-menu-end"
						aria-labelledby="navbarDropdownMenuAvatar">
						<li><a class="dropdown-item" href="userProfile.jsp">My
								profile</a></li>
						<li><a class="dropdown-item" href="ShowReservation.jsp">My
								Reservation</a></li>
						<li><a class="dropdown-item" href="#" id="logout-button">Logout</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- Right elements -->

			<!-- log out conformation model -->
			<div class="modal" tabindex="-1" role="dialog" id="logoutModal">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">Logout Confirmation</h5>
							<button type="button" class="close" id='close'
								data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>Are you sure you want to log out?</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal" id="cancel-logout">Cancel</button>
							<button type="button" class="btn btn-primary" id="confirm-logout">Yes</button>
						</div>
					</div>
				</div>
			</div>

			<!-- log out conformation model end -->

			<!-- log out conformation model JS -->
			<script>
				// When the Logout button is clicked, show the confirmation modal
				document.getElementById('logout-button').addEventListener(
						'click', function() {
							$('#logoutModal').modal('show');
						});

				// When the confirmation modal's Yes button is clicked, log out and redirect
				document.getElementById('confirm-logout').addEventListener(
						'click', function() {
							var form = document.createElement('form');
							form.action = 'LogOutServlet'; // Replace with the actual servlet URL
							form.method = 'POST';

							// Append the form to the document and submit it
							document.body.appendChild(form);
							form.submit();

						});

				document.getElementById('close').addEventListener('click',
						function() {
							$('#logoutModal').modal('hide');
						});

				document.getElementById('cancel-logout').addEventListener(
						'click', function() {
							$('#logoutModal').modal('hide');
						});
			</script>
			<!-- log out conformation model JS end -->





		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->



	<div class="navbar-top">
		<div class="title">
			<h1>Passenger Profile</h1>
		</div>
	</div>
	<br>
	<!-- End -->

	<div class="profile">
		<img
			src="https://th.bing.com/th/id/OIP.b_Yz_Lsdg4rLhQs_66zp6QHaHa?w=165&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7"
			alt="" width="150" height="150">


	</div>

	<!-- End -->

	<!-- Main -->
	<div class="main">

		<%
		//int loginUserId = (int) request.getSession().getAttribute("loginUserId");
		User firstUser = customerDBUtil.getCustomer(LogInUser.getUserId());
		//User currentUser = user.get(0);
		%>
		<div class="card">
			<div class="card-body">

				<table >
					
					<tr >
						<td class="td" >Passenger ID :</td>
						<td class="td" ><%=firstUser.getId()%></td>
					</tr>
					<tr>
						<td class="td">Name :</td>
						<td class="td"><%=firstUser.getName()%></td>
					</tr>
					<tr>
						<td class="td">E-mail :</td>
						<td class="td"><%=firstUser.getEmail()%></td>
					</tr>
					<tr>
						<td class="td">Phone Number :</td>
						<td class="td"><%=firstUser.getPhone()%></td>
					</tr>
					<tr>
						<td class="td">User Name :</td>
						<td class="td"><%=firstUser.getUserName()%></td>
					</tr>

					
				</table>

			</div>
		</div>


		<c:url value="deleteuserprofile.jsp" var="cusdelete">
			<c:param name="id" value="<%=String.valueOf(firstUser.getId())%>" />
			<c:param name="name" value="<%=firstUser.getName()%>" />
			<c:param name="email" value="<%=firstUser.getEmail()%>" />
			<c:param name="phone" value="<%=firstUser.getPhone()%>" />
			<c:param name="username" value="<%=firstUser.getUserName()%>" />
		</c:url>

		<a href="${cusdelete}">
			<button onclick="myFunction()" class="btn Delete">Delete
				Account</button>
		</a>

		<c:url value="edituserprofile.jsp" var="userDetails">
			<c:param name="id" value="<%=String.valueOf(firstUser.getId())%>" />
			<c:param name="name" value="<%=firstUser.getName()%>" />
			<c:param name="email" value="<%=firstUser.getEmail()%>" />
			<c:param name="phone" value="<%=firstUser.getPhone()%>" />
			<c:param name="username" value="<%=firstUser.getUserName()%>" />
		</c:url>



		<a href="${userDetails}">
			<button onclick="myFunction()" class="btn editProfile">Edit
				Profile</button>
		</a>

		<script>
			function myFunction() {
				var txt;
				if (confirm("Are you sure?")) {
					alert("Please Wait!");
				} else {
					alert("Error!");
				}
			}
		</script>
	</div>


	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</body>

</html>
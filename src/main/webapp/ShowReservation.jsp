
<%@page import="model.LogInUser"%>
<%@page import="util.ReservationUtil"%>
<%@page import="model.Reservation"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Reservations</title>

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
	
	<!-- Internal CSS -->
<link rel="stylesheet" href="CSS\home-page-style.css">
	
<style>
body {
	background-image:
		url('https://seatreservation.railway.gov.lk/mtktwebslr/gallery/gallery-2.jpg');
	background-size: cover;
}

.container {
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 10px;
}

.modal-confirm .modal-content {
	border-radius: 10px;
}

.btn-blue {
	background-color: #007BFF;
}

.btn-red {
	background-color: #DC3545;
}
</style>
</head>
<body>



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
						<li><a class="dropdown-item" href="News.jsp">Some news</a></li>
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
						<li><a class="dropdown-item" href="userProfile.jsp">My profile</a></li>
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







	<div class="container mt-5">
		<h1 class="text-center">My Reservations</h1>
		<div class="row">
			<%
			ArrayList<Reservation> reservations = ReservationUtil.getReservationHistoryOfUser(LogInUser.getUserId());
			for (Reservation reservation : reservations) {
			%>
			<div class="col-md-4">
				<div class="card mb-4">
					<div class="card-body">
						<h4 class="card-title">
							Reservation
							<%=reservation.getRecervationNo()%></h4>
						<p class="card-text">
							<strong>Train Number:</strong>
							<%=reservation.getTrain_number()%></p>
						<p class="card-text">
							<strong>Train Name:</strong>
							<%=reservation.getTrainName()%></p>
						<p class="card-text">
							<strong>Place/Date:</strong>
							<%=reservation.getReservationPlaceDate()%></p>

						<p class="card-text">
							<strong>Start:</strong>
							<%=reservation.getStart_point()%></p>
						<p class="card-text">
							<strong>End:</strong>
							<%=reservation.getEnd_point()%></p>
						<p class="card-text">
							<strong>Reservation Date:</strong>
							<%=reservation.getReservation_date()%></p>
						<p class="card-text">
							<strong>Passenger Count:</strong>
							<%=reservation.getPassenger_count()%></p>


						<p class="card-text">
							<strong>Unit Price:</strong> LKR <%=reservation.getUnitPrice()%></p>
						<p class="card-text">
							<strong>Total Price:</strong> LKR <%=reservation.getTotalPrice()%></p>


						<button type="button" class="btn btn-red rounded"
							data-toggle="modal"
							data-target="#deleteModal<%=reservation.getRecervationNo()%>">
							<i class="fas fa-trash-alt"></i> Delete
						</button>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>

	<!-- Include Bootstrap JS and MDB JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.2/js/mdb.min.js"></script>

	<!-- Font Awesome Icons -->
	<script src="https://kit.fontawesome.com/a076d05399.js"
		crossorigin="anonymous"></script>

	<script>
        function confirmDelete(reservationId) {
            $('#deleteModal' + reservationId).modal('show');
        }
    </script>
</body>
</html>

<%-- Modal Confirmation Dialogs --%>
<%
for (Reservation reservation : reservations) {
%>
<div class="modal fade"
	id="deleteModal<%=reservation.getRecervationNo()%>" tabindex="-1"
	role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-confirm" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title text-primary" id="deleteModalLabel">Confirm
					Deletion</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body text-center">
				<p>Are you sure you want to delete this reservation?</p>
			</div>
			<div class="modal-footer justify-content-center">
				<button type="button" class="btn btn-blue" data-dismiss="modal">
					<i class="fas fa-times"></i> Cancel
				</button>
				<button type="button" class="btn btn-red"
					onclick="deleteReservation(<%=reservation.getRecervationNo()%>, <%=reservation.getPassenger_count()%>, <%=reservation.getTrain_number()%>)">
					<i class="fas fa-check"></i> Delete
				</button>
			</div>
		</div>
	</div>
</div>
<%
}
%>
<script>
    function deleteReservation(reservationId, passengerCount, trainID) {
    
    console.log(reservationId);
    console.log(passengerCount);
    console.log(trainID);
        
        var form = document.createElement('form');
		    form.action = 'DeleteReservationServlet'; // Replace with the actual servlet URL
		    form.method = 'POST';
		    
		 // Create hidden input fields for the ticket details
		 
		 	var rid = document.createElement('input');
		 	rid.type = 'hidden';
		 	rid.name = 'reservationId';
		    rid.value = reservationId;
		    form.appendChild(rid);
		    
		    var psCount = document.createElement('input');
		    psCount.type = 'hidden';
		    psCount.name = 'passengerCount';
		    psCount.value = passengerCount;
		    form.appendChild(psCount);
		   
		    var trId = document.createElement('input');
		    trId.type = 'hidden';
		    trId.name = 'trainID';
		    trId.value = trainID;
		    form.appendChild(trId);
		    
		    // Append the form to the document and submit it
		    document.body.appendChild(form);
		    form.submit();
    }
</script>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>

</body>
</html>

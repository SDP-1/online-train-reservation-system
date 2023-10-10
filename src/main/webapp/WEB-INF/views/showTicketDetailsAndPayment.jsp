<%@page import="util.TrainUtil"%>
<%@page import="model.TicketDetails"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Details</title>

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />

<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MDB CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"
	rel="stylesheet">


<!-- Internal CSS -->
<style>
/* Custom CSS */
body {
	background-color: #f5f5f5;
}

.ticket-details-container {
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	margin: 20px auto;
	max-width: 600px;
}

.ticket-details-heading {
	font-size: 24px;
	font-weight: bold;
}

.ticket-details-label {
	font-weight: bold;
}

.container {
	margin-top: 50px;
}

.card {
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

.card-title {
	font-size: 24px;
	font-weight: bold;
}

.form-group {
	margin-bottom: 20px;
}

#card-element {
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

#card-errors {
	color: #dc3545;
	margin-top: 5px;
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
}

.btn-primary:hover {
	background-color: #0056b3;
	border-color: #0056b3;
}
</style>
</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<div class="container-fluid">
			<!-- Navbar brand -->
			<a class="navbar-brand" href="#"> <img
				src="image\Sri_Lanka_Railway_logo.png" height="50"
				alt="railway Logo" loading="lazy" /> <img
				src="image\Sri_Lanka_Railway.jpg" height="45" alt="railway Logo"
				loading="lazy" />
			</a>
			<!-- Left links -->
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
			</ul>
			<!-- Right elements -->
			<div class="d-flex align-items-center">
				<!-- Log in options -->
				<button type="button" class="btn btn-link px-3 me-2">Login</button>
				<button type="button" class="btn btn-primary me-3">Sign up
					for free</button>
			</div>
		</div>
	</nav>
	<!-- Navbar -->

	<%
	TicketDetails ticketDetails = (TicketDetails) request.getAttribute("ticketDetails");
	%>

	<div class="container">
		<div class="ticket-details-container">
			<h2 class="ticket-details-heading">Ticket Details</h2>
			<div class="row">
				<div class="col-md-6">
					<p class="ticket-details-label">Train Number:</p>
				</div>
				<div class="col-md-6">
					<p><%=ticketDetails.getTrain_number()%></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<p class="ticket-details-label">Train Name:</p>
				</div>
				<div class="col-md-6">
					<p><%=TrainUtil.getTrainName(ticketDetails.getTrain_number())%></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<p class="ticket-details-label">Start Point:</p>
				</div>
				<div class="col-md-6">
					<p><%=ticketDetails.getStart_point()%></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<p class="ticket-details-label">End Point:</p>
				</div>
				<div class="col-md-6">
					<p><%=ticketDetails.getEnd_point()%></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<p class="ticket-details-label">Reservation Date:</p>
				</div>
				<div class="col-md-6">
					<p><%=ticketDetails.getReservation_date()%></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<p class="ticket-details-label">Passenger Count:</p>
				</div>
				<div class="col-md-6">
					<p><%=ticketDetails.getPassenger_count()%></p>
				</div>
			</div>
		</div>
	</div>


	<!--payment gate way-->

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<h2 class="card-title text-center">TrainEase Payment Gateway</h2>
					<form id="payment-form">
						<div class="form-group">
							<label for="card-element">Credit or debit card</label>
							<div id="card-element" class="form-control">
								<!-- A Stripe Element will be inserted here. -->
							</div>
							<!-- Used to display form errors. -->
							<div id="card-errors" role="alert"></div>
						</div>
						<button class="btn btn-primary btn-block">Submit Payment</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Stripe.js -->
	<script src="https://js.stripe.com/v3/"></script>

	<!-- Modal -->
	<div class="modal fade" id="successModal" tabindex="-1" role="dialog"
		aria-labelledby="successModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="successModalLabel">Payment
						Successful</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Congratulations! Your payment was
					successful. Your e-tickets have been generated.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<script>
		var stripe = Stripe('pk_test_XXXXXXXXXXXXXXXXXXXXXXXX'); // Replace with your actual Stripe public key
		var elements = stripe.elements();

		var style = {
			base : {
				fontSize : '16px',
				color : '#32325d',
			},
		};

		var card = elements.create('card', {
			style : style
		});
		card.mount('#card-element');

		card.addEventListener('change', function(event) {
			var displayError = document.getElementById('card-errors');
			if (event.error) {
				displayError.textContent = event.error.message;
			} else {
				displayError.textContent = '';
			}
		});

		var form = document.getElementById('payment-form');

		form.addEventListener('submit', function(event) {
			event.preventDefault();
			
			 $('#successModal').modal('show');
			<!--alert("Payment successful!");-->

			<!-- window.location.href = "https://example.com/success-page.html"; -->
		});
	</script>

	<!-- Include Bootstrap JS and MDB JS here -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>

</body>
</html>

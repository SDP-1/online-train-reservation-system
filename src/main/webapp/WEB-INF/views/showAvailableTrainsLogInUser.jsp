<%@page import="model.Train"%>
<%@page import="util.TrainUtil"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ReservationSearch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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

<!-- Internal CSS -->
<link rel="stylesheet" href="CSS\home-page-style.css">

<style>
/* Add a background image with transparency */
body {
	background-image:
		url('https://seatreservation.railway.gov.lk/mtktwebslr/gallery/gallery-2.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	opacity: 0.9; /* Adjust the opacity as needed */
}

.page-main-content {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 45vh;
}

.available-train-container {
	background-color: rgba(255, 255, 255, 0.9);
	/* Transparent white background */
	width: 80%;
	padding: 20px;
	border: 1px solid black;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3); /* Add shadow */
}

.table-container {
	overflow: auto;
	max-height: 350px;
}

.table-container table {
	width: 100%;
}

.table-container th, .table-container td {
	text-align: center;
	vertical-align: middle;
}

#bottom-section {
	position: fixed;
	bottom: 0;
	left: 0;
	width: 100%;
	background-color: rgba(255, 255, 255, 0.9);
	/* Transparent white background */
	padding: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	border-top: 2px solid blue;
	height: auto;
	z-index: 999;
}

#bottom-section-section {
	display: flex;
	justify-content: center;
	align-items: center;
}

#bottom-section-select {
	width: 600px;
}

#submit-button-container {
	width: 250px;
	border-left: 2px solid black;
	display: flex;
	justify-content: center;
}

/* Customize the alert styling */
#alert-message {
	display: none;
	width: 99%;
	margin: 10px 0;
}

.detail-label {
	font-weight: bold;
	color: #007bff; /* Blue color for labels */
	padding-right: 10px;
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
						<li><a class="dropdown-item" href="#">Some news</a></li>
						<li><a class="dropdown-item" href="#">Another news</a></li>
						<li><a class="dropdown-item" href="#">Something else here</a>
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
						<li><a class="dropdown-item" href="#">My profile</a></li>
						<li><a class="dropdown-item" href="ShowReservation.jsp">My
								Reservation</a></li>
						<li><a class="dropdown-item" href="#">Logout</a></li>
					</ul>
				</div>
			</div>
			<!-- Right elements -->
			
		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->

	<!-- Bootstrap alert -->
	<div id="alert-message"
		class="alert alert-danger alert-dismissible fade show">
		Please select a train.
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>


	<%
	ReservationSearch selectedDetails = (ReservationSearch) request.getAttribute("reservationSearch");
	int SelectedTrainID;
	%>

	<div class="container mt-4">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title">Reservation Details</h2>
						<ul class="list-group">
							<li class="list-group-item"><strong>Start Point:</strong> <%=selectedDetails.getStart_point()%>
							</li>
							<li class="list-group-item"><strong>End Point:</strong> <%=selectedDetails.getEnd_point()%>
							</li>
							<li class="list-group-item"><strong>Reservation
									Date:</strong> <%=selectedDetails.getRecervation_date()%></li>
							<li class="list-group-item"><strong>Passenger
									Count:</strong> <%=selectedDetails.getPacenger_count()%></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section>
		<div class="page-main-content">
			<div class="available-train-container">
				<div class="table-container">
					<table id="table-content" class="table table-hover">
						<thead>
							<tr>
								<th scope="col"><h6>Train Number</h6></th>
								<th scope="col"><h6>Train Name</h6></th>
								<th scope="col"><h6>Start At</h6></th>
								<th scope="col"><h6>End At</h6></th>
								<th scope="col"><h6>Available Seat</h6></th>
							</tr>
						</thead>
						<tbody>
							<%
							ArrayList<Train> list = TrainUtil.getTrains();
							for (int i = 0; i < list.size(); i++) {
								Train item = list.get(i);
							%>
							<tr>
								<th><%=item.getId()%></th>
								<td><%=item.getName()%></td>
								<td><%=item.getStart()%></td>
								<td><%=item.getEnd()%></td>
								<td><%=item.getAvailableSeatCount()%></td>
							</tr>
							<%
							}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>

	<div id="bottom-section">
		<section id="bottom-section-section">
			<h2>
				<%=selectedDetails.getStart_point()%>
				To
				<%=selectedDetails.getEnd_point()%>
				>
			</h2>
			<h2>
				<div id="bottom-section-select">
					<!-- Selected data will be displayed here -->
					<!-- JavaScript generates it -->
				</div>
			</h2>

			<div id="submit-button-container">
				<form action="showTicketDetailsAndPaymentServlet" method="post">

					<!-- Hidden input fields for selectedDetails -->
					<input type="hidden" name="start_point"
						value="<%=selectedDetails.getStart_point()%>"> <input
						type="hidden" name="end_point"
						value="<%=selectedDetails.getEnd_point()%>"> <input
						type="hidden" name="reservation_date"
						value="<%=selectedDetails.getRecervation_date()%>"> <input
						type="hidden" name="passenger_count"
						value="<%=selectedDetails.getPacenger_count()%>"> <input
						type="hidden" name="train_number" id="train_number_input" value="">

					<button class="btn btn-primary btn-lg" type="submit"
						onclick="checkSelectedRow()">Proceed</button>
				</form>
			</div>
		</section>
	</div>

	<script>
	// Function to handle row click
	function handleRowClick(row) {
	    // Hide the alert message
	    var alertMessage = document.getElementById('alert-message');
	    alertMessage.style.display = 'none';

	    // Reset background color for all rows
	    var rows = document.querySelectorAll('#table-content tbody tr');
	    rows.forEach(function(row) {
	        row.style.backgroundColor = '';
	    });

	    // Set background color for the selected row
	    row.style.backgroundColor = 'lightblue';

	    // Get the selected row's cells (columns)
	    var cells = row.cells;

	    // Extract data from the first two columns
	    if (cells.length >= 2) {
	        var firstColumnData = cells[0].textContent;
	        var secondColumnData = cells[1].textContent;

	        // Update Train number in the hidden input field
	        var trainNumberInput = document.getElementById("train_number_input");
	        trainNumberInput.value = firstColumnData;

	        // Combine the data from the first two columns
	        var selectedData = firstColumnData + ' - ' + secondColumnData + ' (Train Selected)';

	        // Append the selected data to the bottom section
	        var bottomSection = document.getElementById('bottom-section-select');
	        bottomSection.textContent = selectedData;
	    }
	}

	// Function to check if a row has been selected
	function checkSelectedRow() {
	    var trainNumber = document.getElementById("train_number_input").value;

	    if (trainNumber === "") {
	        // Train number is empty, show an error or take appropriate action
	        var alertMessage = document.getElementById('alert-message');
	        alertMessage.style.display = 'block';
	        return false; // Prevent form submission
	    }

	    return true; // Allow form submission if trainNumber is not empty
	}

	// Add the onsubmit event handler to the form
	document.querySelector('form').onsubmit = function() {
	    return checkSelectedRow();
	};

	// Add click event listeners to each table row
	var rows = document.querySelectorAll('#table-content tbody tr');
	rows.forEach(function(row) {
	    row.addEventListener('click', function() {
	        handleRowClick(this);
	    });
	});
	</script>

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</body>
</html>

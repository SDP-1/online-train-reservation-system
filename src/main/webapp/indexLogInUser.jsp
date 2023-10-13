<%@page import="model.LogInUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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


<!-- internal CSS -->
<link rel="stylesheet" href="CSS\home-page-style.css">

<script type="text/javascript">
	if (
<%=LogInUser.getUserId()%>
	== 0) {
		var newPageURL = 'index.jsp';
		window.location.href = newPageURL;
	}
</script>

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
					<li class="nav-item"><a class="nav-link" href="#"
						onclick="scrollToBookSeatSection('navbar navbar-expand-lg navbar-light bg-white')">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#"
						onclick="scrollToBookSeatSection('gallery-section')">Gallery</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						onclick="scrollToBookSeatSection('gallary-section')">History</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						onclick="scrollToBookSeatSection('Our_Service-section')">Ouer
							Services</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						onclick="scrollToBookSeatSection('contact_us-section')">Contact
							Us</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						onclick="scrollToBookSeatSection('Terms-and-Conditions')">Terms
							& Conditions</a></li>
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



	<!-- Carousel wrapper -->
	<div id="carouselBasicExample" class="carousel slide carousel-fade"
		data-mdb-ride="carousel">
		<!-- Indicators -->
		<div class="carousel-indicators">
			<button type="button" data-mdb-target="#carouselBasicExample"
				data-mdb-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-mdb-target="#carouselBasicExample"
				data-mdb-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-mdb-target="#carouselBasicExample"
				data-mdb-slide-to="2" aria-label="Slide 3"></button>
		</div>

		<!-- Inner -->
		<div class="carousel-inner">
			<!-- Single item 1-->
			<div class="carousel-item active">
				<img src="image\gallery-3.jpg" class="d-block w-100 " alt=""
					style="height: 820px;" />
				<div class="carousel-caption d-none d-md-block">
					<h2>Welcome to Sri Lanka Railways</h2>
					<h6>Online Advance Train Seats Reservation</h6>

					<button id="carousel-item-booking-btn-1"
						onclick="scrollToBookSeatSection('carousel-item-booking-btn-1')"
						type="button" class="btn btn-outline-light btn-rounded"
						data-mdb-ripple-color="dark" style="width: 150px; height: 50px;">Book
						Your Seat</button>
				</div>
			</div>

			<!-- Single item 2-->
			<div class="carousel-item">
				<img src="image\gallery-4.jpg" class="d-block w-100" alt=""
					style="height: 820px;" />
				<div class="carousel-caption d-none d-md-block">
					<h2>Welcome to Sri Lanka Railways</h2>
					<h6>Online Advance Train Seats Reservation</h6>

					<button id="carousel-item-booking-btn-2"
						onclick="scrollToBookSeatSection('carousel-item-booking-btn-2')"
						type="button" class="btn btn-outline-light btn-rounded"
						data-mdb-ripple-color="dark" style="width: 150px; height: 50px;">Book
						Your Seat</button>
				</div>
			</div>

			<!-- Single item 3-->
			<div class="carousel-item">
				<img src="image\gallery-6.jpg" class="d-block w-100" alt=""
					style="height: 820px;" />
				<div class="carousel-caption d-none d-md-block">
					<h2>Welcome to Sri Lanka Railways</h2>
					<h6>Online Advance Train Seats Reservation</h6>

					<button id="carousel-item-booking-btn-3"
						onclick="scrollToBookSeatSection('carousel-item-booking-btn-3')"
						type="button" class="btn btn-outline-light btn-rounded"
						data-mdb-ripple-color="dark" style="width: 150px; height: 50px;">Book
						Your Seat</button>

				</div>
			</div>

		</div>
		<!-- Inner -->

		<!-- Controls -->
		<button class="carousel-control-prev" type="button"
			data-mdb-target="#carouselBasicExample" data-mdb-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-mdb-target="#carouselBasicExample" data-mdb-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<!-- Carousel wrapper -->

	<h1 class="display-5"
		style="margin-top: 50px; margin-left: 12%; margin-bottom: -30px;">Book
		Your Seat</h1>


	<!-- booking-search-section -->
	<section id="selection-frame">

		<div id="book-your-seat-midle-frame" style="width: 70%;">
			<div id="book-your-seat-blue">
				<div style="margin: 10px; padding-top: 70px;">
					<h1 class="display-6">Book Your Seat</h1>
					<p>
						<small>You can book both ways</small>
					</p>
				</div>
			</div>

			<!-- Place Recervation -->
			<div style="display: flex;">
				<form action="Search_ticket_reservation" method="post">
					<div id="book-your-seat-form-white" style="display: flex;">
						<div>
							<div style="display: flex; margin: 5px;">
								<div class="form-component">
									<label for="">Form</label> <select id="start-point-name"
										class="form-select" name="start-point-name"
										aria-label="Default select example" required
										style="width: 250px;">

										<option selected="" value="" data-select2-id="2">Choose
											Station</option>

										<option value="Matara" data-select2-id="14">Matara</option>

										<option value="Galle" data-select2-id="15">Galle</option>

										<option value="Hikkaduwa" data-select2-id="16">Hikkaduwa</option>

										<option value="Kaluthara" data-select2-id="18">Kaluthara</option>

										<option value="Colombo Fort" data-select2-id="19">Colombo
											Fort</option>

									</select>
								</div>
							</div>
						</div>
						<div class="form-component">
							<label for="">To</label> <select id="degnination-name"
								class="form-select" name="degnination-name"
								aria-label="Default select example" required
								style="width: 250px;">
								<option selected="" value="" data-select2-id="4">Choose
									Station</option>

								<option value="Matara" data-select2-id="14">Matara</option>

								<option value="Galle" data-select2-id="15">Galle</option>

								<option value="Hikkaduwa" data-select2-id="16">Hikkaduwa</option>

								<option value="Kaluthara" data-select2-id="18">Kaluthara</option>

								<option value="Colombo Fort" data-select2-id="19">Colombo
									Fort</option>


							</select>
						</div>

						<!-- Date Picker -->

						<div class="form-component" style="margin-left: 30px;">
							<label for="">Date</label>
							<div id="select-date">
								<input type="date" id="recevation-date" name="recevation-date"
									required>
							</div>
						</div>

						<!-- link date picker style sheet -->
						<link rel="stylesheet" href="CSS\date-picker-style.css">

					</div>

					<div style="display: flex;">
						<div class="form-component" style="margin-left: 25px;">
							<label for="">No of passengers</label>
							<div class="form-outline" style="width: 250px;">
								<input id="passengerCount" name="passengerCount" type="number"
									class="form-control" min="1" max="100" required />
							</div>
						</div>

						<div class="form-check form-switch"
							style="margin-top: 40px; margin-left: 20%;">
							<input class="form-check-input" type="checkbox" role="switch"
								id="flexSwitchCheckDefault" name="flexSwitchCheckDefault">
							<label class="form-check-label" for="flexSwitchCheckDefault">Return</label>
						</div>

						<div id="datePickerContainer" class="form-component"
							style="display: none;">
							<label for="">Pick Return Date</label>
							<div id="select-return-date">
								<input type="date" id="returnDate" name="returnDate">
							</div>
						</div>



					</div>

					<div class="d-flex justify-content-end"
						style="display: flex; justify-content: right;">
						<button type="button" class="btn btn-primary reset-btn"
							onclick="resetSearch()" style="margin: 5px;">Reset</button>
						<button type="submit" class="btn btn-primary search-btn"
							style="margin: 5px;">Search</button>
					</div>
				</form>
			</div>
		</div>
	</section>

	<!-- Gallery -->
	<section id="gallery-section">
		<h1 class="display-5"
			style="margin-top: 50px; margin-left: 12%; margin-bottom: 2%;">Gallery</h1>
		<div style="display: flex; justify-content: center;">
			<div style="width: 72%;">
				<div style="display: flex;">
					<img class="gallary-section-img"
						src="https://seatreservation.railway.gov.lk/mtktwebslr/gallery/gallery-1.jpg"
						alt="pic 01"> <img class="gallary-section-img"
						src="https://seatreservation.railway.gov.lk/mtktwebslr/gallery/gallery-2.jpg"
						alt="pic 02"> <img class="gallary-section-img"
						src="https://seatreservation.railway.gov.lk/mtktwebslr/gallery/gallery-3.jpg"
						alt="pic 03">
				</div>

				<div style="display: flex;">
					<img class="gallary-section-img"
						src="https://seatreservation.railway.gov.lk/mtktwebslr/gallery/gallery-4.jpg"
						alt="pic 04"> <img class="gallary-section-img"
						src="https://seatreservation.railway.gov.lk/mtktwebslr/gallery/gallery-5.jpg"
						alt="pic 05"> <img class="gallary-section-img"
						src="https://seatreservation.railway.gov.lk/mtktwebslr/gallery/gallery-6.jpg"
						alt="pic 06">
				</div>
			</div>
		</div>

	</section>

	<!-- History -->
	<section id="gallary-section">
		<h1 class="display-5"
			style="margin-top: 50px; margin-left: 12%; margin-bottom: 2%;">History</h1>

		<div style="display: flex; justify-content: center;">
			<p style="width: 70%; font-size: 18px;">Rail was introduced in
				Sri Lanka in 1864 to transport coffee from plantations in the hill
				country district of Kandy to the port city of Colombo on its way to
				Europe and the world market. The coffee blight of 1871 destroyed
				many a fine plantation and tea replaced coffee. With the development
				of tea plantations in the 1880s, the joint-stock companies swallowed
				up the former individual proprietorship of the coffee era. Under
				corporate ownership and management control by companies, the process
				of production of tea became more sophisticated and needed more and
				more railways built to the Kandyan highlands. To send tea to Colombo
				and to transport labour, machinery, manure, rice, and foodstuff, etc
				to Kandy, another 100 miles of railways were constructed in the tea
				planting districts to serve the expanding tea domain. To serve the
				coconut plantations flourishing in the west, southwest and northwest
				coastal areas of the country, and the wet inland rubber plantations
				below the tea belt, railway lines were built in the wake of these
				agricultural developments. Thereafter, the need for cheap and safe
				travel in order to open up the hinterland of the country led to the
				expansion of the railway. An extension of the Main Line to Kandy was
				made north to the ancient city of Anuradhapura, going further north
				to Kankesanturai and west to Talaimannar to connect the island with
				South India by ferry, to bring Indian labour for the tea and rubber
				plantations, and also import rice and other food stuffs not
				indigenously produced in sufficient quantities. Towards the east,
				there was little economic justification to lay a line to the dry
				zone in that direction, but it became strategically worthwhile to
				lay a line to the natural harbour of Trincomalee and also connect it
				to the provincial capital of Batticaloa. These lines were laid with
				light (21 kg) section rails, as was the narrow gauge section to
				serve the rubber plantations east of Colombo, known as the Kelani
				Valley Line. Up country, a similar branch line was laid from Nanu
				Oya on the Main Line through very difficult terrain to serve the tea
				plantations around Nuwara Eliya. Track alignment was defined in this
				section about 140 years ago, when economic considerations were
				vastly different. The railways achieved modal superiority with
				speeds of 25 to 40 kmph in the hill country and 65 to 80 in the low
				country. Civil engineering criteria was influenced by the economic
				need to minimize cuts and fills, permitting gradients to 2 to 3 %
				and minimizing bridge lengths. As a result, the alignment here is
				winding with very sharp curves. In the early days of the railways,
				the bulk of the freight was carried to the port of Colombo and as
				the port expanded, rail lines were laid to serve every pier.</p>
		</div>
	</section>

	<!-- Our Service -->
	<section id="Our_Service-section">
		<h1 class="display-5"
			style="margin-top: 50px; margin-left: 12%; margin-bottom: 2%;">Our
			Service</h1>

		<div style="display: flex; justify-content: center;">
			<div style="width: 70%;">
				<img alt="ouer Servises" src="image/ourServices.png">
			</div>
		</div>

	</section>

	<!-- Contact Us -->
	<section id="contact_us-section">

		<h1 class="display-5"
			style="margin-top: 50px; margin-left: 12%; margin-bottom: 2%;">Contact
			Us</h1>

		<div class="contact-form-container"
			style="display: flex; justify-content: center;">
			<div style="width: 70%;">
				<form class="contact-form">
					<div class="mb-3">
						<label for="yourName" class="form-label">Your Name</label> <input
							type="text" class="form-control" id="yourName"
							placeholder="Your Name" required>
					</div>
					<div class="mb-3">
						<label for="yourEmail" class="form-label">Your Email</label> <input
							type="email" class="form-control" id="yourEmail"
							placeholder="Your Email" required>
					</div>
					<div class="mb-3">
						<label for="yourMobile" class="form-label">Your Mobile</label> <input
							type="tel" class="form-control" id="yourMobile"
							placeholder="Your Mobile" required>
					</div>
					<div class="mb-3">
						<label for="subject" class="form-label">Subject</label> <select
							class="form-select" id="subject" required>
							<option value="" disabled selected>Select Complaint
								Subject</option>
							<option value="technical">Technical Issue</option>
							<option value="payment">Payment Issue</option>
							<option value="support">Support Case</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="message" class="form-label">Message</label>
						<textarea class="form-control" id="message" rows="5"
							placeholder="Your Message" required></textarea>
					</div>
					<button type="submit" class="btn btn-primary">Send</button>
				</form>
			</div>

		</div>

	</section>


	<!-- thems and conditions -->
	<section id="Terms-and-Conditions">

		<h1 class="display-5"
			style="margin-top: 50px; margin-left: 12%; margin-bottom: 2%;">Terms
			& Conditions</h1>

		<div style="display: flex; justify-content: center;">
			<div style="width: 70%;">
				<div class="container">
					<h1>Terms and Conditions</h1>
					<div class="section">
						<h2>GENERAL TERMS AND CONDITIONS APPLICABLE FOR USE OF THE
							ONLINE SEAT RESERVATION SERVICE OF SRI LANKA RAILWAYS.</h2>
						<p>01. Prior to making a reservation through the Service, you
							are strongly advised to be vigilant of the following guidelines
							and comply with the same;</p>
						<p>Select the correct train for your journey.</p>
						<p>Fix a convenient date for both up & down journeys.</p>
						<p>Ensure that you have a thorough understanding of the rates
							applicable.</p>
						<p>Maximum of 5 seats could be reserved at once.</p>
						<p>Standard customer verification and other terms and
							conditions would apply.</p>
						<p>NIC numbers of each and every passenger except "DEPENDENT"
							should be furnished.</p>
						<p>A reference number along with ticket details will be sent
							via email to commuters who make the reservation via website
							and/or mobile app.</p>
						<p>Commuters are requested to present the booking reference
							number for ticket printing purposes and notify any enquiries
							related to their reservation to the railway officer at the
							counters. Tickets can be printed at any existing ticket printing
							location of Sri Lanka Railways (Please click Ticket printing
							locations tab) and it is recommended to get printed the ticket in
							advance.</p>
						<p>Passengers must provide the booking reference number along
							with their NIC or passport in person at the Station Counter and
							ticket will not be issued to any third party.</p>
						<p>A reservation only becomes guaranteed once full payment has
							been received by Sri Lanka Railways.</p>
						<p>No fresh tickets will be issued in lieu of misplaced or
							lost tickets.</p>
						<p>The reserved tickets could be used only for specified
							trains.</p>
						<p>Travelling on any other trains by using these types of
							tickets are strictly prohibited. An ordinary travelling ticket
							should be purchased for travelling to a transits station to catch
							a reserved train.</p>
						<p>All tickets issued through the Service are the property of
							Sri Lanka Railways. Tickets are non-transferable and should be
							handed over to the destination station before leaving the station
							after the journey. Sri Lanka Railways officers have the authority
							to request and check the tickets at any given moment.</p>
					</div>
					<div class="section">
						<h2>PAYMENT METHODS</h2>
						<p>You should use a valid VISA or Master Credit/ Debit card
							when making online reservations through the internet.</p>
						<h3>Debit/Credit Card, Bank Account Details:</h3>
						<p>You agree that the debit/credit card details provided by
							you for use of the Sri Lanka Railways online seat reservation
							service is correct and accurate and you shall not use a Debit/
							credit card, that is not lawfully owned by you or the use of
							which is not authorized by the lawful owner thereof. You further
							agree and undertake to provide correct and valid debit/credit
							card details.</p>
						<p>You agree, understand and confirm that your personal data
							including without limitation details relating to debit card/
							credit card transmitted over the Internet may be susceptible to
							misuse, hacking, theft and/ or fraud and the Sri Lanka Railways
							or your Payment Service Provider(s) have no control over such
							matters.</p>
						<p>The Sri Lanka Railways (including its service providers and
							suppliers), the Payment Service Provider(s) and its affiliates
							and associates shall not be liable, at any time, for any failure
							of performance, error, omission, interruption, deletion, defect,
							delay in operation or transmission, computer virus,
							communications line failure, theft or destruction or unauthorized
							access to, alteration of, or use of information contained on the
							Website.</p>
						<p>You warrant, agree and confirm the following when you
							initiate a payment transaction through the Service and/or issue
							an online payment instruction and/or provide your card / bank
							details:</p>
						<ul>
							<li>You are fully and lawfully entitled to use such credit /
								debit card, bank account for such transactions.</li>
							<li>You are responsible to ensure that the card/ bank
								account details provided by you are accurate.</li>
							<li>You authorize debit of the nominated card/ bank account
								for the payment of fees selected by you.</li>
							<li>You are responsible to ensure that sufficient credit is
								available on the nominated card/ bank account at the time of
								making the payment to permit the payment of the dues payable or
								fees selected by you.</li>
							<li>You are responsible for all transactions performed
								utilizing your credit/debit card and/or bank account.</li>
						</ul>
						<p>Server Slow Down/Session Timeout: In case the Website or
							Payment Service Provider’s webpage, that is linked to the
							Website, is experiencing any server related issues like 'slow
							down' or 'failure' or 'session timeout', you shall, before
							initiating the second payment, check whether your bank account
							has been debited or not and accordingly resort to one of the
							following options:</p>
						<ul>
							<li>In case the bank account appears to be debited, ensure
								that you do not make the payment twice and immediately
								thereafter contact the Sri Lanka Railways via e-mail or any
								other mode of contact as provided by the Sri Lanka Railways to
								confirm payment.</li>
							<li>In case the Bank Account is not debited, you may
								initiate a fresh transaction to make payment.</li>
						</ul>
						<p>However, you agree that under no circumstances the Payment
							Gateway Service Provider shall be held responsible for such
							fraudulent/duplicate transactions and hence no claims should be
							raised to Payment Gateway Service Provider. No communication
							received by the Payment Service Provider(s) in this regards shall
							be entertained by the Payment Service Provider(s).</p>
					</div>
					<!-- Add more sections as needed -->
				</div>
			</div>
		</div>

	</section>


	<!-- Footer -->
	<footer class="text-center text-lg-start bg-white text-muted">
		<!-- Section: Social media -->
		<section
			class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
			<!-- Left -->
			<div class="me-5 d-none d-lg-block">
				<span> <!--  Get connected with us on social networks: --></span>
			</div>
			<!-- Left -->

			<!-- Right -->
			<div>
				<a
					href="https://www.facebook.com/watch/live/?ref=search&v=848934929827633"
					class="me-4 link-secondary"> <i class="fab fa-facebook-f"></i>
				</a> <a href="https://twitter.com/?login" class="me-4 link-secondary">
					<i class="fab fa-twitter"></i>
				</a> <a href="https://www.google.com/" class="me-4 link-secondary">
					<i class="fab fa-google"></i>
				</a> <a
					href="https://www.facebook.com/watch/live/?ref=search&v=848934929827633"
					class="me-4 link-secondary"> <i class="fab fa-instagram"></i>
				</a> <a
					href="https://www.linkedin.com/?trk=guest_homepage-basic_nav-header-logo"
					class="me-4 link-secondary"> <i class="fab fa-linkedin"></i>
				</a> <a href="https://github.com/SDP-1?tab=repositories"
					class="me-4 link-secondary"> <i class="fab fa-github"></i>
				</a>
			</div>
			<!-- Right -->
		</section>
		<!-- Section: Social media -->

		<!-- Section: Links  -->
		<section class="">
			<div class="container text-center text-md-start mt-5">
				<!-- Grid row -->
				<div class="row mt-3">
					<!-- Grid column -->
					<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
						<!-- Content -->
						<h6 class="text-uppercase fw-bold mb-4">
							<i class="fas fa-gem me-3 text-secondary"></i>Welcome to
							TrainEase
						</h6>
						<p>TrainEase is your one-stop destination for hassle-free
							train reservations. Say goodbye to long queues and booking
							complications. With TrainEase, you can effortlessly book your
							train tickets, check schedules, and manage your journey with
							ease.</p>
					</div>



					<!-- Grid column -->
					<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">Useful links</h6>
						<p>
							<a href="#!" class="text-reset"
								onclick="scrollToBookSeatSection('navbar navbar-expand-lg navbar-light bg-white')">Home</a>
						</p>
						<p>
							<a href="#!" class="text-reset"
								onclick="scrollToBookSeatSection('gallery-section')">Gallery</a>
						</p>
						<p>
							<a href="#!" class="text-reset"
								onclick="scrollToBookSeatSection('gallary-section')">History</a>
						</p>
						<p>
							<a href="#!" class="text-reset"
								onclick="scrollToBookSeatSection('Our_Service-section')">Ouer
								Services</a>
						</p>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">Useful links</h6>
						<p>
							<a href="#!" class="text-reset"
								onclick="scrollToBookSeatSection('contact_us-section')">Contact
								Us </a>
						</p>
						<p>
							<a href="#!" class="text-reset"
								onclick="scrollToBookSeatSection('Terms-and-Conditions')">Terms
								& Conditions</a>
						</p>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">Contact</h6>
						<p>
							<i class="fas fa-home me-3 text-secondary"></i> Baddegama Rd,
							Hikkaduwa
						</p>
						<p>
							<i class="fas fa-envelope me-3 text-secondary"></i>
							sehandevinda1@gmail.com
						</p>
						<p>
							<i class="fas fa-phone me-3 text-secondary"></i> + 94 772 829 780
						</p>
						<p>
							<i class="fas fa-print me-3 text-secondary"></i> + 94 714 688 665
						</p>
					</div>
					<!-- Grid column -->
				</div>
				<!-- Grid row -->
			</div>
		</section>
		<!-- Section: Links  -->

		<!-- Copyright -->
		<div class="text-center p-4"
			style="background-color: rgba(0, 0, 0, 0.025);">
			© 2021 Copyright: <a class="text-reset fw-bold"
				href="https://seatreservation.railway.gov.lk/mtktwebslr/"> Sri
				Lanka Railways (SLR)</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->


	<!-- internal Java Script Code -->
	<script type="text/javascript" src="JS\home-page-script.js"></script>

	<!-- link date picker JS file -->
	<script type="" src="JS\datePicker-script.js"></script>
	<script type="" src="JS\datePicker2-script.js"></script>

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</body>

</html>
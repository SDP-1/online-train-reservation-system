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

<!-- internal CSS -->
<link rel="stylesheet" href="CSS\home-page-style.css">


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
					<li class="nav-item"><a class="nav-link" href="#">Ouer
							Services</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						onclick="scrollToBookSeatSection('contact_us-section')">Contact
							Us</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Terms &
							Conditions</a></li>
				</ul>
				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->

			<!-- Right elements -->
			<div class="d-flex align-items-center">

				<!-- log in options -->

				<div class="d-flex align-items-center">
					<button type="button" class="btn btn-link px-3 me-2">
						Login</button>
					<button type="button" class="btn btn-primary me-3">Sign up
						for free</button>
				</div>


			</div>
			<!-- Right elements -->
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
			<div style="width: 70%; border: 2px solid black;"></div>
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


	<!-- internal Java Script Code -->
	<script type="text/javascript" src="JS\home-page-script.js"></script>

	<!-- link date picker JS file -->
	<script type="" src="JS\datePicker-script.js"></script>
	<script type="" src="JS\datePicker2-script.js"></script>



	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</body>

</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sri Lanka Railways News</title>

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

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>



<!-- Popper.js (required for Bootstrap) -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    
    <style>
        body {
            background-color: #f0f0f0;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .card-title {
            font-size: 1.5rem;
        }
        .card-text {
            font-size: 1.2rem;
        }
        .card-footer {
            font-size: 1rem;
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


    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container">
                <a class="navbar-brand" href="#">Sri Lanka Railways News</a>
            </div>
        </nav>
    </header>

    
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-8">
                <div class="card mb-4">
                    <img class="card-img-top" src="https://opportunitysrilanka.com/wp-content/uploads/2019/03/Sri-Lankan-government-proposals-in-Budget-2019-aimed-at-attracting-more-investments-to-the-country-01.png" alt="Government Investment Image">
                    <div class="card-body">
                        <h2 class="card-title">Government Announces Major Investment in Sri Lankan Railways</h2>
                        <p class="card-text">The Sri Lankan government has revealed plans to invest heavily in the country's railway infrastructure. This initiative aims to improve the efficiency and safety of rail transport across the island nation.</p>
                    </div>
                    <div class="card-footer text-muted">
                        Published on October 25, 2023
                    </div>
                </div>
                <div class="card mb-4">
                    <img class="card-img-top" src="https://th.bing.com/th/id/R.b14ebed979c1fa6469ab452ad7be659d?rik=OQT4CUTso6ecAg&riu=http%3a%2f%2fnews.xinhuanet.com%2fenglish%2f2017-09%2f21%2f136626761_15060036881351n.jpg&ehk=ZO%2f2jiR1Xz86LT%2fG5ebQAFi2nUJL%2bNBqWJ0UEBCVS9Q%3d&risl=&pid=ImgRaw&r=0" alt="High-Speed Rail Line Image">
                    <div class="card-body">
                        <h2 class="card-title">New High-Speed Rail Line Connects Colombo and Kandy</h2>
                        <p class="card-text">In a significant development for commuters, a new high-speed rail line has been inaugurated, connecting the capital city of Colombo to the scenic city of Kandy. This modern rail link will reduce travel time and provide a more comfortable journey for passengers.</p>
                    </div>
                    <div class="card-footer text-muted">
                        Published on October 25, 2023
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Latest News</h5>
                        <ul class="list-group">
                            <li class="list-group-item">Improved Safety Measures Implemented on Sri Lankan Railways</li>
                            <li class="list-group-item">New Railway Station Opens in Galle</li>
                            <!-- Add more news headlines here -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Bootstrap and MDB JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.21.0/js/mdb.min.js"></script>
    <script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</body>
</html>

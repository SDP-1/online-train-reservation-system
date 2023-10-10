
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

<!-- internal CSS -->

</head>
<body>

	<%
	ReservationSearch value = (ReservationSearch) request.getAttribute("reservationSearch");
	%>

	<h1>
		start point : <%= value.getStart_point_number() %><br>
		end point : <%= value.getEnd_point_number() %><br>
		recervation date : <%= value.getRecervation_date() %><br>
		return date : <%= value.getReturn_date() %><br>
		pasenger count : <%= value.getPacenger_count() %><br>
	</h1>
		
</body>
</html>
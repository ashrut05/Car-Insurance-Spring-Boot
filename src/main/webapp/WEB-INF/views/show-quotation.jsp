<!--  
 	Ashrut Sharma
 	Assignment 01
 	Spring Web MVC Application
 	show-flight.jsp
 	
 	View that is displayed once the data is validated and the flight
 	cost is calculated in case the information provided is valid.
-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
<title>Flight Reservation Confirmation</title>
<link rel="stylesheet"
href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/Ashrut_COMP303_Assignment1/">Car Insurance Quotation Form</a>
			</div>
		</div>
	</nav>
	<div class="col-lg-10 col-md-6 col-sm-12 well">
		<h2>Welcome ${insuranceData.firstName}</h2>
		<h3>Your Car Insurance Quotation details are as follows:</h3>
		<div id="personalData">
			<ul>
				<li><b>Phone number: </b> ${insuranceData.phone}</li>
				<li><b>Email Address: </b> ${insuranceData.email}</li>
				<li><b>Address: </b> ${insuranceData.adrlin1} ${insuranceData.adrlin2}, ${insuranceData.city}, ${insuranceData.state}, ${insuranceData.zipCode}</li>
			</ul>
		</div>
		<div id="insuranceData">
			<span><b>Car Brand: </b> ${insuranceData.carBrand} </span><br/>
			<span><b>Car Model: </b> ${insuranceData.carModel} </span><br/>
			<span><b>Year: </b> ${insuranceData.year}</span><br/>
			<span><b>Kilometers: </b> ${insuranceData.kms}</span><br/>
			<br/>
			<span><b>Number of Drivers: </b> ${insuranceData.drivers} </span><br/>
			<span><b>Driving Experience: </b> ${insuranceData.driving} years</span><br/>
			<span><b>Type of Commute: </b> ${insuranceData.commute} </span><br/>
			<span><b>Currently Insured: </b> ${insuranceData.insured} </span><br/>
		</div>
		<div id="message">
			<p>
				Your online reservation completed.
				<br/>
				<span><b>Your Monthly Premium is $ </b> ${insuranceCost} </span>
			</p>
		</div>
	</div>
	<div id="rightContent"></div>
</body>
</html>
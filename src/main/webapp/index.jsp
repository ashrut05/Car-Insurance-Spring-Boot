<!--  
 	Ashrut Sharma - 301107609
 	Assignment 01
 	Spring Web MVC Application
 	index.jsp
 	
 	Main page that contains the form to calculate insurance quotation
-->
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insurance Quotation Form</title>
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
				<a class="navbar-brand" href="#">Car Insurance Quotation Form</a>
				<p>Please fill the form for better assistance</p>
			</div>
		</div>
	</nav>
	<div class="container">
		<form action="calculateQuotation" method="post" class="col-lg-10 col-md-6 col-sm-12 well">
			<div class="form-group row">
				<div class="col-md-4 mb-5">
					<label for="Name">Name</label>	
					<input type="text" class="form-control" id="firstName" name="firstName" placeholder="First Name" required="required">
				</div>
				<div class="col-md-4 mb-5">
					<label for="lastName">.</label>
					<input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last Name" required="required">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-md-10 mb-3">
					<label for="phone">Phone Number</label>
					<input type="tel" class="form-control" id="phone" name="phone" placeholder="(000) 000-0000" required="required">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-md-10 mb-3">
					<label for="email">E-mail</label>
					<input type="email" class="form-control" id="email" name="email" placeholder="example@example.com" required="required">
				</br>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-md-10 mb-3">
					<label for="address">Address</label>
					<input type="text" class="form-control" id="addresslin1" name="addresslin1" placeholder="Street Address" required="required">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-md-10 mb-3">
					<input type="text" class="form-control" id="addresslin2" name="addresslin2" placeholder="Street Address Line 2">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-md-5 mb-3">
					<input type="text" class="form-control" id="city" name="city" placeholder="City" required="required">
				</div>
				<div class="col-md-5 mb-3">
					<input type="text" class="form-control" id="state" name="state" placeholder="State" required="required">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-md-10 mb-3">
					<input type="text" class="form-control" id="zipCode" name="zipCode" placeholder="Postal Code" required="required">
				</div>
				</br>
			</div>
			<div class="form-group row">
				<div class="col-md-5 mb-3">
				<label for="vin">VIN #</label>
					<input type="text" maxlength="17"  minlength="17" class="form-control" id="vin" name="vin" required="required">
				</div>
		
			</div>
			
			<div class="form-group row">
				<div class="col-md-5 mb-3">
					<label for="carBrand">Car Brand</label>
					<select id="carBrand" name="carBrand" class="form-control" required="required">
						<option value="Honda">Honda</option>
						<option value="BMW">BMW</option>
						<option value="Audi">Audi</option>
						<option value="Nissan">Nissan</option>
						<option value="Ford">Ford</option>
					</select>
				</div>
				<div class="col-md-5 mb-3">
					<label for="carModel">Car Model</label>
					<select id="carModel" name="carModel" class="form-control" required="required">
						<option value="Civic">Civic</option>
						<option value="Accord">Accord</option>
						<option value="CR-V">CR-V</option>
						<option value="X3">X3</option>
						<option value="M5">M5</option>
						<option value="8 Series">8 series</option>
						<option value="R8">R8</option>
						<option value="A3">A3</option>
						<option value="Q5">Q5</option>
						<option value="Altima">Altima</option>
						<option value="Sentra">Sentra</option>
						<option value="Rogue">Rogue</option>
						<option value="Ranger">Ranger</option>
						<option value="Focus">Focus</option>
						<option value="Mustang">Mustang</option>
					</select>
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-md-4 mb-5">
					<label for="Year">Year</label>	
					<input type="text" maxlength="4" minlength="4" class="form-control" id="year" name="year" required="required">
				</div>
				<div class="col-md-4 mb-5">
					<label for="kms">Kilometers</label>
					<input type="text" class="form-control" id="kms" name="kms" required="required">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-md-4 mb-5">
					<label for="drivers">Number of Drivers</label>	
					<select id="drivers" name="drivers" class="form-control" required="required">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</div>
				<div class="col-md-4 mb-5">
					<label for="driving">Driving Experience</label>
					<input type="text" class="form-control" id="driving" name="driving" required="required">
				</div>
			</div>

			<div class="form-group row">
				<div class="col-md-5 mb-3">
					<label for="">Type of Commute</label><br>
					<input type="radio" id="Work" name="commute" value="Work">
					<label for="Work">Work</label><br>
					<input type="radio" id="Leisure" name="commute" value="Leisure">
					<label for="Leisure">Leisure</label><br>	
					<br>
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-md-5 mb-3">
					<label for="">Are you Currently Insured</label><br>
					<input type="radio" id="Yes" name="insured" value="Yes">
					<label for="Yes">Yes</label><br>
					<input type="radio" id="No"name="insured" value="No">
					<label for="No">No</label><br>	
					<br>
				</div>
			</div>
			<button class="btn btn-primary" type="submit">Submit</button>
			<button class="btn btn-secondary" type="reset">Reset</button>
		</form>
	</div>
</body>
</html>
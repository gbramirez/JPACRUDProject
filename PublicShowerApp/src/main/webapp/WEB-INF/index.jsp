<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shower App</title>
<link rel="stylesheet" type="text/css" href="CSS/styles.css">
<link rel="icon" type="image/png" sizes="32x32"
	href="images/faviconshower.ico">
</head>
<body>
	<%-- <p>${shower} </p> --%>
	<div class="top-container">
		<h1>Welcome to the Public Shower App</h1>
		<h2>Please select an option:</h2>
		<br>
		<h3>Search for shower by ID</h3>
		<br>

		<form action="getShower.do" method="GET">
			Enter Shower ID: <input type="text" name="id" size="12" /> <input
				type="submit" value="Search by ID" />
		</form>
		<br> <a href="allShowers.do"><button>View All
				Showers</button></a> <br>
		<hr>
	</div>


	<!-- 	<h3>Search for shower by address</h3>
	<br>

	<form action="addressSearch.do" method="GET">
		Enter an address: <input type="text" name="showerAddress" size="12" /> <input
			type="submit" value="Search By Address" /> <br>
	</form>
	<br>
 -->
	<div class="middle-container">
		<hr>
		<br>
		<h3>Add a shower to database</h3>
		<br>

		<form action="newShower.do" method="POST">
			Enter Shower Address: <input type="text" name="address" size="12" />
			Enter Shower City: <input type="text" name="city" size="12" /> Enter
			Shower Price: <input type="text" name="price" size="12" /> <input
				type="submit" value="Submit Updates" /> <br>
		</form>

		<!-- 	<a href="updateShower.do"><button>Click here to update a
			shower</button></a> -->
		<br> <br>
		<hr>
	</div>



	<div class="bottom-container">
		<hr>
		<br>
		<h3>Update a shower</h3>
		<form class="update-form" action="updateShower.do" method="POST">
			Enter Shower ID: <input type="text" name="id" size="12"
				value="${shower.id}" /> Enter Shower Address: <input type="text"
				name="address" size="12" value="${shower.address}" /><br>Enter
			Shower City: <input type="text" name="city" size="12"
				value="${shower.city}" /> Enter Shower Price: <input type="text"
				name="price" size="12" value="${shower.price}" /> <br> <input
				type="submit" value="Submit Updates" />
		</form>
		<hr>
		<h3>Delete a shower</h3>
		<form action="deleteShower.do" method="POST">
			Enter Shower ID to be removed: <input type="text" name="id" size="12"
				value="${shower.id}" /> <input type="submit"
				value="Submit Deletion" /> <br>
		</form>
		<br> <br>
		<hr>
	</div>

</body>
</html>
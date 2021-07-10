<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Showers</title>
</head>
<body>
	<%-- <p>${shower} </p> --%>

	<h1>Welcome to the Public Shower App</h1>
	<h2>Please select an option:</h2>
	<br>
	<h3>Search for shower by ID</h3>
	<br>

	<form action="getShower.do" method="GET">
		Enter Shower ID: <input type="text" name="showerId" size="12" /> <input
			type="submit" value="Search by ID" />
	</form>
	<br>

	<h3>Search for shower by address</h3>
	<br>

	<form action="addressSearch.do" method="GET">
		Enter an address: <input type="text" name="address" size="12" /> <input
			type="submit" value="Search By Address" /> <br>
	</form>
	<br>

	<h3>Add a shower to database</h3>
	<br>

	<form action="newShower.do" method="POST">
		Enter shower address: <input type="text" name="address" size="12" />
		Enter shower city: <input type="text" name="city" size="12" /> Enter
		shower price: <input type="text" name="price" size="12" /> <input
			type="submit" value="submit updates" /> <br>
	</form>
	<br>

</body>
</html>
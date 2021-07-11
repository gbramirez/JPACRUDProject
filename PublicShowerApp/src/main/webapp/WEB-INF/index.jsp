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
		Enter Shower ID: <input type="text" name="id" size="12" /> <input
			type="submit" value="Search by ID" />
	</form>
	<br>

	<!-- 	<h3>Search for shower by address</h3>
	<br>

	<form action="addressSearch.do" method="GET">
		Enter an address: <input type="text" name="showerAddress" size="12" /> <input
			type="submit" value="Search By Address" /> <br>
	</form>
	<br>
 -->
	<h3>Add a shower to database</h3>
	<br>

	<form action="newShower.do" method="POST">
		Enter shower address: <input type="text" name="address" size="12" />
		Enter shower city: <input type="text" name="city" size="12" /> Enter
		shower price: <input type="text" name="price" size="12" /> <input
			type="submit" value="submit updates" /> <br>
	</form>

<!-- 	<a href="updateShower.do"><button>Click here to update a
			shower</button></a> -->
	<br>

	<h3>Update a shower</h3>
	<form action="updateShower.do" method="POST">
		Enter Shower ID: <input type="text" name="id" size="12"
			value="${shower.id}" /> Enter Shower Address: <input type="text"
			name="address" size="12" value="${shower.address}" /> Enter Shower
		City: <input type="text" name="city" size="12" value="${shower.city}" />
		Enter Shower Price: <input type="text" name="price" size="12"
			value="${shower.price}" /> <input type="submit"
			value="submit updates" /> <br>
	</form>

	<h3>Delete a shower</h3>
	<form action="deleteShower.do" method="POST">
		Enter Shower ID to be removed: <input type="text" name="id" size="12"
			value="${shower.id}" /> <input type="submit" value="submit deletion" />
		<br>
	</form>


</body>
</html>
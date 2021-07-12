<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/styles.css">
 <link rel="icon" type="image/png" sizes="32x32" href="images/faviconshower.ico">
<title>Update Shower</title>
</head>
<body>

	<div class="update-shower-form">
		<h2>Updated Shower Information</h2>
		<hr>
		<form action="updateShower.do" method="POST">
			Updated Shower ID: <input type="text" name="id" size="12"
				value="${shower.id}" /><br> Updated Shower Address: <input
				type="text" name="address" size="12" value="${shower.address}" /> <br>
			Updated Shower City: <input type="text" name="city" size="12"
				value="${shower.city}" /> <br>Updated Shower Price: <input
				type="text" name="price" size="12" value="${shower.price}" /> <br>
			<!-- <input -->
			<!-- type="submit" value="submit updates" /> <br> -->
		</form>
		<br>
	</div>
	<br>
	<a href="home.do"><button>Home</button></a>

</body>
</html>
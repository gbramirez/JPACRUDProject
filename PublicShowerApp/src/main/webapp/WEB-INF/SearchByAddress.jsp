<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search by Address</title>
</head>
<body>

<h2>Search Shower by Address Results.</h2>

<h2>Shower Address: ${shower.address}</h2>

	<table>
		<tr>
			<td>Shower ID:</td>
			<td>${shower.id}</td>
		</tr>

		<tr>
			<td>Shower Address:</td>
			<td>${shower.address}</td>
		</tr>

		<tr>
			<td>Shower City:</td>
			<td>${shower.city}</td>
		</tr>
	</table>

</body>
</html>
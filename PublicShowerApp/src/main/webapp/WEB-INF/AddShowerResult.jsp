<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shower Added</title>
</head>
<body>
<h2>Shower Added to the Database.</h2>

<h2>Shower Address: ${createdShower.address}</h2>

	<table>
		<tr>
			<td>Shower ID:</td>
			<td>${createdShower.id}</td>
		</tr>

		<tr>
			<td>Shower Address:</td>
			<td>${createdShower.address}</td>
		</tr>

		<tr>
			<td>Shower City:</td>
			<td>${createdShower.city}</td>
		</tr>
	</table>
</body>
</html>
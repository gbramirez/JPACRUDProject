<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/styles.css">
 <link rel="icon" type="image/png" sizes="32x32" href="images/faviconshower.ico">
<title>Search Showers by ID</title>
</head>
<body>
<h2>Search Shower by Id Results.</h2>

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

<a href="home.do"><button>Home</button></a>

</html>
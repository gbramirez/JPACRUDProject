<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Shower</title>
</head>
<body>

<h2>Update Shower</h2>

<form action="updateShower.do" method="POST">
		Enter Shower ID: <input type="text" name="title" size="12" value="${film.title}" />
		Enter Shower Address: <input type="text" name="description" size="12" value="${film.description}"/>
		Enter Shower City: <input type="text" name="releaseYear" size="12" value="${film.releaseYear}"/>
		Enter Shower Price: <input type="text" name="rentalRate" size="12" value="${film.rentalRate}"/>
		
		<input type="submit" value="submit updates" /> <br>
	</form>

</body>
</html>
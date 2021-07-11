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
		Enter Shower ID: <input type="text" name="id" size="12" value="${shower.id}" />
		Enter Shower Address: <input type="text" name="address" size="12" value="${shower.address}"/>
		Enter Shower City: <input type="text" name="city" size="12" value="${shower.city}"/>
		Enter Shower Price: <input type="text" name="price" size="12" value="${shower.price}"/>
		
		<input type="submit" value="submit updates" /> <br>
	</form>

</body>
</html>
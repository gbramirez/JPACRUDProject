<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/styles.css">
<title>Results</title>
</head>
<body>

	<br>
	<br>
	<c:choose>
		<c:when test="${not empty showers[0]}">
			<h1>Results</h1>
			<table>
				<tr>
					<th>ID</th>
					<th>Address</th>
					<th>City</th>
					<th>Price</th>
				</tr>
				<c:forEach items="${showers}" var="s">
					<tr>
						<td>${s.id}</td>
						<td>${s.address}</td>
						<td>${s.city}</td>
						<td>${s.price}</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			<h4>Shower not found.</h4>
		</c:otherwise>
	</c:choose>
	<br>
	
	<a href="home.do"><button>Home</button></a>
	
</body>
</html>
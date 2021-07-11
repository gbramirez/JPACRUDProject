<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
</head>
<body>

	<br>
	<br>
	<c:choose>
		<c:when test="${not empty showers[0]}">
			<h3>Results</h3>
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
</body>
</html>
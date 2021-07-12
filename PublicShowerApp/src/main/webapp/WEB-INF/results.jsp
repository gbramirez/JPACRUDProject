<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/styles.css">
<link rel="icon" type="image/png" sizes="32x32"
	href="images/faviconshower.ico">
<title>Results</title>
</head>
<body>
	<div class="result-screen">
		<c:if test="${createShower}">
			<c:choose>
				<c:when test="${not empty shower}">
					<h2>The shower was successfully added to the database.</h2>
					<a href="getShower.do?id=${shower.id}"><button>View
							New Shower Info</button></a>
				</c:when>
				<c:otherwise>
					<h2>The shower could not be added to the database.</h2>
				</c:otherwise>
			</c:choose>
		</c:if>
		<c:if test="${contains}">
			<h1>The shower has been removed from the database.</h1>
			<%-- <c:choose> --%>
			<%-- <c:when test="${shower}">
					<h2>The shower has been removed as requested.</h2>
				</c:when>
				<c:otherwise>
					<h2>The shower could not be removed from the database.</h2>
				</c:otherwise>
		<%-- 	 </c:choose> --%>
		</c:if>
		<c:if test="${editShower}">
			<c:choose>
				<c:when test="${not empty shower}">
					<h2>The shower has been edited.</h2>
					<a href="getShower.do?id=${shower.id}"><button>View
							Shower Changes.</button></a>
				</c:when>
				<c:otherwise>
					<h2>The shower could not be edited as requested.</h2>
				</c:otherwise>
			</c:choose>
		</c:if>
	</div>
	<div>
		<table>
			<c:forEach items="${showers}" var="s">
				<h2>All Showers in Database</h2>
				<tr>
					<td>${s.id}</td>
					<td>${s.address}</td>
					<td>${s.city}</td>
					<td>${s.price}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<a href="home.do"><button>Home</button></a>
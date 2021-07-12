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
	<div class="result-screen">
		<c:if test="${createShower}">
			<c:choose>
				<c:when test="${not empty shower}">
					<h2>The shower was successfully added to the database.</h2>
					<a href="getShower.do?id=${shower.id}"><button>View
							new shower info</button></a>
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
							shower changes.</button></a>
				</c:when>
				<c:otherwise>
					<h2>The shower could not be edited as requested.</h2>
				</c:otherwise>
			</c:choose>
		</c:if>
	</div>
	<br>
	<a href="home.do"><button>Home</button></a>
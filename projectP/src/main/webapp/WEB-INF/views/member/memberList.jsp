<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
<link rel="shortcut icon" href="../image/icon.png" />
<link rel="apple-touch-icon" href="../image/icon.png" />
<!--IE8이하 적용/--> 
<!--[if lt IE 9]>
	<script src="./js/html5shiv.js"></script>
<![endif]--> 
<title>Insert title here</title>
<style type="text/css">
	.temp {margin-top:3em; width:200px; height:200px; background:#f00;}
	table {width:720px;}
	td {border:1px solid #f00;}
</style>
</head>
<body>
	<div class="temp">
		<c:choose>
			<c:when test="${not empty memberList}">
				<c:forEach var="memberList" items="${memberList}">
					${memberList.userId}
					${memberList.userName}
					${memberList.userPw}
				</c:forEach>
			</c:when>
		</c:choose>
	</div>
	
</body>
</html>
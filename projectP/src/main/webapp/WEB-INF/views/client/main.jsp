<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div>
	<c:choose>
		<c:when test="${not empty boardList}">
			<c:forEach var="boardList" items="${boardList}">
				${boardList.boardTitle}
			</c:forEach>
		</c:when>
	</c:choose>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${ITEM_LIST}" var="item">
	<table>
		<tr>
			<th>음료명 :</th>
			<td>${item.name}</td>
		</tr>
		<tr>
			<th>가격 :</th>
			<td>${item.price}</td>
		</tr>
		<tr>
			<td><a href="${rootPath}/itemDel/${item.id}">삭제</a></td>
		</tr>
	</table>
</c:forEach>
</body>
</html>
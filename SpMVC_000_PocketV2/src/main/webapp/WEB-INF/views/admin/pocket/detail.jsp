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
<c:forEach items="${POCKET_LIST}" var="pocket">
	<h3>당구대 번호 : ${pocket.id} <a href="${rootPath}/pocketDel/${pocket.id}">삭제</a></h3>
</c:forEach>
</body>
</html>
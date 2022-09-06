<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.btn_width{
		width: 50px;
		display: inline-block;
	}
	h3 {
		padding: 10px 0;
	}
	h3:nth-last-of-type(even) {
		background-color: #f2f2f2;
	}
	h3:hover {
		background-color: #ddd;
	}
</style>
</head>
<body>

<div  class="scroll scroll-style">
	<c:forEach items="${POCKET_LIST}" var="pocket">
		<h3>당구대 ${pocket.id}번 <a class="btn btn_na btn_width" href="${rootPath}/pocketDel/${pocket.id}">삭제</a></h3>
	</c:forEach>
</div>
</body>
</html>
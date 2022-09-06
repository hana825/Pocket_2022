<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

	<div>
		<c:forEach items="${POCKET_LIST}" var="pocket">
			<div>
				<h1>테이블번호 : ${pocket.id }</h1><br>
					<c:forEach items="${pocket.orderList}" var="order">
						<h3>주문아이템 : ${order.name }</h3>				
						<h3>주문수량 : ${order.count }</h3>	
						<a href="${rootPath}/orderCom/${order.id}">완료</a>
					</c:forEach>
			</div><br>
		</c:forEach>
	</div>
</body>
</html>
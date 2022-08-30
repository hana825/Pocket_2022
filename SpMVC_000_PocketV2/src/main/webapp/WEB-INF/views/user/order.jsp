<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.cnt {
		background-color: red;
	}
</style>
</head>
<body>
<div class="cnt">
	<h1>이곳은 주문 페이지</h1>
	
	<div class="item_list_container">
		<c:forEach items="${ITEM_LIST}" var="item">
			<div class="item_list">
				<a href="${rootPath}/order/${ITEM.id}">
					<span>
						<span>음료명 :</span>
						<span>${item.name}</span>
					</span>
					<span>
						<span>가격 :</span>
						<span>${item.price}</span>
					</span>
				</a>
			</div>
		</c:forEach>
	</div>
	
</div>
</body>
</html>
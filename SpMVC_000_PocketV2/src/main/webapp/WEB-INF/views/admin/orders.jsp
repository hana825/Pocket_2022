<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table.pocket_order{
	margin: 20px 0;
}
table.pocket_order:nth-of-type(even){
	background-color: #f2f2f2;
}
table.pocket_order th.p_header {
	font-size: 1.5rem;
	text-align: center;
}

table.pocket_order th.p_cost {
	font-size: 1.25rem;
	text-align: center;
}

.btn_pocket {
	width: 80%;
}
div.blank_space{
	height: 56px;
}
</style>
</head>
<body>
<div class="blank_space"></div>
	<div class="scroll scroll-style ">
		<c:forEach items="${POCKET_LIST}" var="pocket">
			<table class="pocket_order">
				<thead>
					<tr>
						<th class="p_header" colspan="3">당구대 ${pocket.id }번</th>
					</tr>
					<tr>
						<th>주문아이템</th>
						<th>주문수량</th>
					</tr>
				</thead>
				<c:forEach items="${pocket.orderList}" var="order">
					<tbody>
						<tr>
							<td>${order.name }</td>
							<td>${order.count }</td>
							<td><a class="btn btn_add"
								href="${rootPath}/orderCom/${order.id}">서빙완료</a></td>
						</tr>
				</c:forEach>
				<tr>
					<th class="p_cost">총액: ${pocket.total }</th>
					<th colspan="2"><a class="btn_na btn btn_pocket"
						href="${rootPath}/totalCom/${pocket.id}">결제완료</a></th>
				</tr>
				</tbody>
			</table>
		</c:forEach>
	</div>
</body>
</html>
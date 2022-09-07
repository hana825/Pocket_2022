<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	table {
		margin: 0 auto;
	    width: 100%;
	    padding: 10px 30px;
	    text-align: left;
	    border-collapse: collapse;
	}
	table.menu_item:nth-last-of-type(even) {
		background-color: #f2f2f2;
	}
	table.menu_item:hover {
		background-color: #ddd;
	}
	.menu_item th, td {
		padding: 5px 10px;
		text-align: left;
	}
	.menu_item th {
		width: 40%;
	}
	.menu_item tr:nth-last-of-type(1) {
		text-align: center;
	}

</style>
</head>
<div class="scroll scroll-style">
<c:forEach items="${ITEM_LIST}" var="item">
	<table class="menu_item">
		<tr>
			<th>음료명 :</th>
			<td>${item.name}</td>
		</tr>
		<tr>
			<th>가격 :</th>
			<td>${item.price}</td>
		</tr>
		<tr>
			<td colspan="2"><a class="btn btn_na" href="${rootPath}/itemDel/${item.id}">삭제</a></td>
		</tr>
	</table>
</c:forEach>
</div>
</html>
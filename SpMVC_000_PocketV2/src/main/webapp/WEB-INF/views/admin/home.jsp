<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	@font-face {
	    font-family: 'GongGothicLight';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicLight.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	*{
		margin: 0px;
		padding: 0px;
	    font-family: 'GongGothicLight';
	}
	body {
		margin: 0;
		padding: 0;
	}
	.flex-container{
		display: flex;
	}
	.flex-items{
		flex: 1;
	}
	
</style>
</head>
<body>
<h1>관리자 페이지</h1>
<div class="flex-container">
	<div class="flex-items pocket">
		<%@ include file="/WEB-INF/views/admin/pocket/input.jsp" %>
		<%@ include file="/WEB-INF/views/admin/pocket/detail.jsp" %>
	</div>
	<div class="flex-items item">
		<%@ include file="/WEB-INF/views/admin/item/input.jsp" %>
		<%@ include file="/WEB-INF/views/admin/item/detail.jsp" %>
	</div>
	<div class="flex-items order">
		<%@ include file="/WEB-INF/views/admin/orders.jsp" %>
	</div>
</div>
</body>
</html>
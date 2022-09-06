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
	.scroll {
 		height: 600px; 
		width: 85%;
	    margin: 0 auto;
	    overflow-y: scroll;
	}
	/* 스크롤바 설정*/
	.scroll-style::-webkit-scrollbar {
	  width: 8px;
	}
	
	/* 스크롤바 막대 설정*/
	.scroll-style::-webkit-scrollbar-thumb {
	  height: 17%;
	  background-color: #aaa;
	  border-radius: 10px;
	}
	
	/* 스크롤바 뒷 배경 설정*/
	.scroll-style::-webkit-scrollbar-track {
	  background-color: #eee;
	}
	
	a {
		text-decoration: none;
	}

	input {
    	padding: 5px 8px;
    	font-size: 1rem;
	}
	form {
		padding: 10px 0;
	}
</style>
</head>
<body>
<div class="flex-container">
	<div class="flex-items pocket">
		<h1>당구대 관리</h1>
		<%@ include file="/WEB-INF/views/admin/pocket/input.jsp" %>
		<%@ include file="/WEB-INF/views/admin/pocket/detail.jsp" %>
	</div>
	<div class="flex-items item ">
		<h1>메뉴판 관리</h1>
		<%@ include file="/WEB-INF/views/admin/item/input.jsp" %>
		<%@ include file="/WEB-INF/views/admin/item/detail.jsp" %>
	</div>
	<div class="flex-items order">
		<h1>주문 관리</h1>
		<%@ include file="/WEB-INF/views/admin/orders.jsp" %>
	</div>
</div>
</body>
</html>
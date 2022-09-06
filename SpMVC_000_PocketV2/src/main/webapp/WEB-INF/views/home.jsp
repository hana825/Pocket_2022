<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  

<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

<title>Pocket</title>
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
		font-family: 'GongGothicLight'
	}
	html {
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    text-align: center;
	    flex-direction: column;
	}
  	body {
		height: 100vh; 
		width: 100vw;
		align-items: center;
		justify-content: center;
 	}
	a.play {
		text-decoration: none;
		color: inherit;
	}
	
	
	/* 	시작부분 */
	form.form-join {
		max-width: 360px;
	    padding: 15px;
	    margin: 0 auto;
	}
	
	.form-join-heading {
	    margin-bottom: 10px;
	}
	
	form-join-heading h2 {
		font-size: 2rem;
	}
	
	p {
		margin-top: 0;
    	margin-bottom: 1rem;
	}
	
	body {
		font-size: 1rem;
		font-weight: 400;
		line-height: 1.5;
		color: #212529;
/* 		padding-top: 40px; */
/* 		padding-bottom: 40px; */
	}
	
	.container {
		max-width: 540px;
		margin: 0 auto;
		padding-right: 15px;
		padding-left: 15px;
		width: 100%;
		height: 100%;
    	max-height: 880px;
	}
	.form-control {
		position: relative;
		box-sizing: border-box;
		height: auto;
		padding: 10px;
		font-size: 16px;
		line-height: 1.25;
		background-color: #fff;
		border: 1px solid rgba(0,0,0,0.15);
		border-radius: .25rem;
		transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		width: 100%;
		margin-bottom: 10px;
	}
	
	.btn {
		display: block;
		text-decoration: none;
		padding: 0.5rem 1rem;
		font-size: 1.25rem;
		line-height: 1.5;
		border-radius: 0.3rem;
		color: #fff;
		background-color: #007bff;
		border-color: #007bff;
		text-align: center;
		font-weight: 400;
		vertical-align: middle;
		border: 1px solid transparent;
		transition: all .15s ease-in-out;
		width: 100%;
	}
	.btn:hover {
		color: #fff;
	    background-color: #0069d9;
	    border-color: #0062cc;
	    cursor: pointer;
	}
	a.btn_na {
		padding: 0; 
		background-color: #f54242;
	}
	a.btn_na:hover {
 		padding: 0; 
		border-color: #f54242;
		background-color: #e02d2d;
	}
	.btn_add {
		width: fit-content;
    	display: inline-block;
    	padding: 5px 8px;
    	font-size: 1rem;
    	cursor: pointer;
	}
	.btn_admin {
		background-color: #333;
	}
	.btn_admin:hover {
		background-color: #111;
		border-color: #333;
	}
	header {
		display: flex;
	    justify-content: space-between;
	    align-items: center;
	    padding: 0 50px;
	    background-color: #127346;
	    color: #fff;
	}
	header h1 {
		font-size: 3rem;
	}
</style>
</head>
<body>
	

<c:if test="${empty USER}">
<header>
	<div><h1>8BALL</h1></div>
	<a class="btn btn_admin btn_add" href="${rootPath}/user/login">관리자모드</a>
</header>
	<%@ include file="/WEB-INF/views/user/join.jsp" %>

</c:if>

<c:if test="${not empty USER}">
<header>
	<div><h1>8BALL</h1></div>
	<a class="btn btn_admin btn_add" href="${rootPath}/user/logout">관리자 로그아웃</a>
</header>
	<%@ include file="/WEB-INF/views/admin/home.jsp" %>

</c:if>



</body>
</html>
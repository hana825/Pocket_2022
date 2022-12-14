<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
<style>
	@font-face {
	    font-family: 'GongGothicLight';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicLight.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	* {
		margin: 0;
		padding: 0;
		font-family: 'GongGothicLight'
	}
	form.form-join {
		max-width: 330px;
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
		background-color: #eee;
		padding-top: 40px;
		padding-bottom: 40px;
	}
	
	.container {
		max-width: 540px;
		margin-right: auto;
		margin-left: auto;
		padding-right: 15px;
		padding-left: 15px;
		width: 100%;
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
	}
	
</style>
</head>
<body>
<div class="container">
	<form:form class="form-join">
			<h2 class="form-join-heading">????????? ??????????????????</h2>
			<input class="form-control" name="userId" placeholder="USERNAME">
			<input class="form-control" name="password" placeholder="PASSWORD">
			<button class="btn">??????</button>
	</form:form>
</div>
</body>
</html>


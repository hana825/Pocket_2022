<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

	<div class="container">
		<form class="form-join" action="${rootPath}/pocketEnter" method="post">
				<h2 class="form-join-heading">당구대 번호를 입력하여 입장하시오.</h2>
				<input class="form-control" name="id" placeholder="당구대 번호">
				<button class="btn">입장하기</button>
		</form>
	</div>

</html>
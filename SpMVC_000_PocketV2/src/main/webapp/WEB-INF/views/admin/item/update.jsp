<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${rootPath}/itemUp" method="POST">
		<input name="name" placeholder="음료명" >
		<input name="price" placeholder="가격" type="number" min="0" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" >
		<button >수정</button>
	</form>
</body>
</html>
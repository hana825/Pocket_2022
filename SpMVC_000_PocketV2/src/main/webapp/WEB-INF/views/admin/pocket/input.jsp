<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<form action="${rootPath}/pocketIn">
		<input class="pocket" name="id" type="number" placeholder="당구대번호" min="1" 
		onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
		<button class="btn btn_add" >당구대 추가</button>
	</form>
</body>
</html>
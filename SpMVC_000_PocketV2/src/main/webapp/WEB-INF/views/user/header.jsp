<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<style>
	.header_h1 {
		text-align: center;
		width: 100%;
	}
</style>
<header>
	<div class="header_h1">
		<h1>${POCKETID}번 당구대</h1>
	</div>
</header>
</html>
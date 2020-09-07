<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<c:if test="${ not empty error}">
	<label >${ error }</label>
</c:if>
<form action="${pageContext.request.contextPath}/memberSearch.do">
	<input name="id">
	<button>search</button>
</form>
</body>
</html>
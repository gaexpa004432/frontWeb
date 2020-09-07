<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
도착?

	<c:forEach items="${ member1 }" var="member">
	${ member.id }
	${ member.pw }
	${ member.gender }
	${ member.mailyn }
	${ member.reason }
	${ member.job }
	${ member.hobby }
	</c:forEach>
</body>
</html>
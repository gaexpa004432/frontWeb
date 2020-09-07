<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/memberInsert.do">
	<div>
	<P><label for="id">아이디 (숫자만 가능)</label> : <INPUT type="text" id="id" name="id" size="20" value="" required></P>
	<P><label for="password">비밀번호</label> : <INPUT type="password" name="pw" id="password" size="20"></P>
	</div>
	
<div>
	<INPUT type="radio" name="gender" value="man" checked>남자&nbsp;
	<INPUT type="radio" name="gender" value="woman">여자
</div>
	<label for="job">직업</label>
<div>
<SELECT id="job" name="job" size="4">
<OPTION value="select" selected>선택</OPTION>
<OPTION value="inoccupation">무직</OPTION>
<OPTION value="jobless">백수</OPTION>
<OPTION value="Home security guard">자택 경비원</OPTION>
<OPTION value="housewife">전업주부</OPTION>
</SELECT>
</div>
<div>
농구 <input type="checkbox" name="hobby" value="basket">
축구<input type="checkbox" name="hobby" value="football">
답장씹기<input type="checkbox" name="hobby" value="ignore">
</div>
<div>
<TEXTAREA name="Motive" rows="5" cols="50">
가입동기
</TEXTAREA>
</div>

<div>
<P>메일수신 여부<INPUT type="checkbox" name="mail" value="Y" checked></P>
</div>
<div>
<button type = "submit" >등록</button>&nbsp;&nbsp;
<button type = "reset" name = "reset" >리셋</button>
</div>
</form>
</body>
</html>
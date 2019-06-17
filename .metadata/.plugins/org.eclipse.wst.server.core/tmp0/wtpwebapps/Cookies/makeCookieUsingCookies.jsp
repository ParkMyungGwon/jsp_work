<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%@ page import="utill.Cookies" %>

<%
	response.addCookie(Cookies.createCookie("name","cjar"));
	response.addCookie(Cookies.createCookie("id","madvirus","/", -1));

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
cookie 생성
</body>
</html>
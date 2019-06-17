<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "utill.Cookies" %>

<%
	Cookies cookies = new Cookies(request);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
name 쿠키 = <%= cookies.getValue("name") %> <br>
id 쿠키 = <%= cookies.getValue("id") %> <br>
</body>
</html>
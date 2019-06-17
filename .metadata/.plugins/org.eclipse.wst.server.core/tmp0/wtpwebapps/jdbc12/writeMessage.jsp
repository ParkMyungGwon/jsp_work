<%@ page contentType="text/html; chaset-utf-8" %>
<%@ page import="guestbook.model.Message" %>
<%@ page import="guestbook.service.WriteMessageService" %>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="message" class="guestbook.model.Message">
	<jsp:setProperty name="message" property="*"/>
</jsp:useBean>

<%
	WriteMessageService writeService = WriteMessageService.getInstance();
	writeService.write(message);

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
방명록 메시지 남김 ㅅㄱ
<br/>
<a href="list.jsp">[목록보기]</a>
</body>
</html>
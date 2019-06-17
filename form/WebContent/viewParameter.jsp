<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
 request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
name 파라미터 = <%= request.getParameter("name") %>
address 파라미터 = <%= request.getParameter("address") %>

<%
	String[] values = request.getParameterValues("pet");

	if(values != null){
		for(int i=0; i<values.length;i++){
%>
<%= values[i] %>
<%}
}%>


<%
	Enumeration paramEnum = request.getParameterNames();

	while(paramEnum.hasMoreElements()){
		String name = (String)paramEnum.nextElement();
	
%> <%= name %>

<%
}
%>
</body>
</html>

<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>    
    
    
<%
	String memberID = request.getParameter("memberID");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<table width="100%" border="1">
<tr>
	<td>이름</td><td>아이디</td><td>이메일</td>
</tr>
<%
 	Class.forName("com.mysql.jdbc.Driver");
 
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcDriver = "jdbc:mysql://localhost:3306/db?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		String dbUser = "root";
		String dbPass = "1234";
		
		String query = "select * from MEMBER where MEMBERID =" + "'" + memberID + "'";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		stmt = conn.createStatement();
		
		rs = stmt.executeQuery(query);
		
		if(rs.next()){

 %>

<tr>
	<td><%= memberID %></td>
</tr>

<tr>
	<td><%= rs.getString("PASSWORD") %></td>
</tr>

<tr>
	<td><%= rs.getString("NAME") %></td>
</tr>

<tr>
	<td><%= rs.getString("EMAIL") %></td>
</tr>
<%
	}
}catch(SQLException ex){
		out.println(ex.getMessage());
		ex.printStackTrace();
	}finally{
		if(rs!= null) try{rs.close();}catch(SQLException ex){}
		if(stmt!= null) try{stmt.close();}catch(SQLException ex){}
		if(conn!= null) try{conn.close();}catch(SQLException ex){}
	}

%>
</table>
</body>
</html>
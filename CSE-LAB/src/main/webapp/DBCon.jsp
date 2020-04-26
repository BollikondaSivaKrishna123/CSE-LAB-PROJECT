<%@ page language="java" import="java.sql.*" import="java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	PreparedStatement ps1=null;
	ResultSet rs=null;
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cse?serverTimezone=UTC", "root","");
}
catch(Exception e)
{
	e.printStackTrace();
	out.print(e);
}
%>
</body>
</html>
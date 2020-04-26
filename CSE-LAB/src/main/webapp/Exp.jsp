<%@ page language="java" import="java.sql.* " contentType="text/html; charset=ISO-8859-1"
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
	Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cse?serverTimezone=UTC", "root","");

String Un=request.getParameter("uname");
String pwd=request.getParameter("pwd");
PreparedStatement ps=con.prepareStatement("select * from login where uname=? and passwd=? ");
ps.setString(1,Un);
ps.setString(2,pwd);
ResultSet rs=ps.executeQuery();
// if(Un=="uname" && pwd=="passwd")   
	if(rs.next())
{
		String uname1=rs.getString(1);
			response.sendRedirect("Home.jsp");
	session.setAttribute("uname2", uname1);
    //out.println("Valid login credentials"); 
}
else
	{
	//out.print("invalid Details");
	//response.sendRedirect("Login.html");
	
	%>
	<jsp:include page="Login.html" />
	<div class="alert alert-warning" width="50">
  <strong><center>Login failed!</center>
  </strong> 
  </div>
	<%	
	}


}
catch(Exception e)
{
	e.printStackTrace();
	out.print(e);
}

%>
</body>
</html>
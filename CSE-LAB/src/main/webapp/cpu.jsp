<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <% 
    String Un=(String)session.getAttribute("uname2");
    if(Un==null)
    {
    	response.sendRedirect("Login.html");
    }
    else
    {
  
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body bgcolr="yellow">

<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/lms1?serverTimezone=UTC", "root","");

String cpu_id=request.getParameter("cpuid");
String ram=request.getParameter("ram");
String mac=request.getParameter("mac");
String os=request.getParameter("os");
String company=request.getParameter("company");
String hd=request.getParameter("harddisk");
Float pr=Float.parseFloat(request.getParameter("price"));
String loc=request.getParameter("location");
String bd=request.getParameter("billdate");
String st=request.getParameter("status");
PreparedStatement ps=con.prepareStatement("insert into cpu values(?,?,?,?,?,?,?,?,?,?) ");
ps.setString(1,cpu_id);
ps.setString(2,loc);
ps.setString(3,ram);
ps.setString(4,os);
ps.setString(5,hd);
ps.setString(6,mac);

ps.setString(7,company);
ps.setFloat(8,pr);
ps.setString(9,bd);
ps.setString(10,st);
int k=ps.executeUpdate();
if(k>0)
{
	%>
	
	<br>
<center><p class="bg-success text-white">Thank you,Succesfully Done</p></center> 
<br>
<jsp:include page="cpu1.jsp" /> 

<%

}
con.close();
}
catch(SQLException se)
{
	se.printStackTrace();
		//	out.print(se);
	 
}
catch(Exception se)
{
	se.printStackTrace();
	//out.println("Something went wrong !! Please try again");
	
			%>
			  				<br>
	<center><p class="bg-dark text-white">Sorry,something went Wrong</p></center>
<br>
<jsp:include page="cpu1.jsp" /> 
			  

<%
}


%>
</body>
</html>
<%
}
%>
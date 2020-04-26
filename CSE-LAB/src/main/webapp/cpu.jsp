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
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cse?serverTimezone=UTC", "root","");

Integer cpu_id=Integer.parseInt(request.getParameter("cpuid"));
Integer ram=Integer.parseInt(request.getParameter("ram"));
String mac=request.getParameter("mac");
String os=request.getParameter("os");
String company=request.getParameter("company");
String hd=request.getParameter("harddisk");
Integer pr=Integer.parseInt(request.getParameter("price"));
String loc=request.getParameter("location");
String bd=request.getParameter("billdate");
Integer st=Integer.parseInt(request.getParameter("status"));
PreparedStatement ps=con.prepareStatement("insert into cpu values(?,?,?,?,?,?,?,?,?,?) ");
ps.setInt(1,cpu_id);
ps.setInt(2,ram);
ps.setString(3,mac);
ps.setString(4,os);
ps.setString(5,company);
ps.setString(6,hd);
ps.setInt(7,pr);
ps.setString(8,loc);
ps.setString(9,bd);
ps.setInt(10,st);
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
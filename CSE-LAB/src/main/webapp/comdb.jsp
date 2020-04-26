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

String com_id=request.getParameter("com_id");
String com_name=request.getParameter("com_name");
String com_quantity=request.getParameter("com_quantity");
String com_company=request.getParameter("com_company");
Float Price=Float.parseFloat(request.getParameter("Price"));
String loc=request.getParameter("location");
String bd=request.getParameter("Bill_Date");
String st=request.getParameter("status");
PreparedStatement ps=con.prepareStatement("insert into components values(?,?,?,?,?,?,?) ");
ps.setString(1,com_id);
ps.setString(2,com_name);
ps.setString(3,com_quantity);
ps.setString(4,com_company);
ps.setFloat(5,Price);
ps.setString(6,bd);
ps.setString(7,st);
// ps.setInt(10,st);
int k=ps.executeUpdate();
if(k>0)
{
	%>
	
	<br>
<center><p class="bg-success text-white">Thank you,Succesfully Done</p></center> 
<jsp:include page="com.jsp" /> 

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
 <jsp:include page="com.jsp" /> 
			 

<%
}


%>
</body>
</html>
<%
}
%>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" type="text/css">
<style>
a:link {
  color:blue;
  background-color: transparent;
  text-decoration: none;
}
a:visited {
  color: blue;
  background-color: transparent;
  text-decoration: none;
}
a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}
a:active {
  color: blue;
  background-color: transparent;
  text-decoration: underline;
}
</style>
</head>
<body>
<br>
<form action="" method="post">
<div class="container">
<div clas="form-group">
<div class="col-sm-5">
<div class="input-group">
<input type="text"  name="search" class="form-control" placeholder="Type the company name " autocomplete="off">
<div class="input-group-btn">
<button type="submit" value="Serach" class="btn btn-primary" ><span class="glyphicon glyphicon-search"></span> Search</button>
</div>
</div>
</div>
</div><br><br>
<table class="table table-bordered table-striped">
<tr>

<th style="width: 15%">CPU_ID</th>
<th style="width: 15%">LOCATION</th>
<th style="width: 15%">RAM</th>
<th style="width: 15%">OS</th>
<th style="width: 15%">HARDDISK</th>
<th style="width: 15%">MAC</th>
<th style="width: 15%">COMPANY</th>
<th style="width: 15%">PRICE</th>
<th style="width: 15%">BILLDATE</th>
<th style="width: 15%">STATUS</th>

</tr>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/lms1?serverTimezone=UTC", "root","");
String qr="select * from cpu where Company like '%"+request.getParameter("search")+"%'";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	%>
	<TR>
<TD><%=rs.getString("cid")%></TD>
<TD><%=rs.getString("Location")%></TD>
<TD><%=rs.getString("RAM")%></TD>
<TD><%=rs.getString("OS")%></TD>

<TD><%=rs.getString("HardDisk")%></TD>
<TD><%=rs.getString("MAC")%></TD>
<TD><%=rs.getString("Company")%></TD>
<TD><%=rs.getFloat("Price")%></TD>
<TD><%=rs.getString("BillDate")%></TD>
<TD><%=rs.getString("Status")%></TD>
	</TR>
	
	<%
	
}
else
{
	%>
	<center><p class="bg-primary text-black"><b><i>search Not found</i></b> </p></center>
<%
}
}
catch(Exception e)
{
e.printStackTrace();
out.print(e);
}
%>

</table>
<center><a href="select.jsp" target="_blank">Back</a></center>
<center><a href="logout.jsp" target="_blank">Logout</a></center>

</div>

</form>
</body>
</html>
<%
}
%>
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
<input type="text"  name="search" class="form-control" placeholder="Type the Component Name Here " autocomplete="off">
<div class="input-group-btn">
<button type="submit" value="Serach" class="btn btn-primary" ><span class="glyphicon glyphicon-search"></span> Search</button>
</div>
</div>
</div>
</div><br><br>
<table class="table table-bordered table-striped">
<tr>

<th style="width: 15%">COM_ID</th>
<th style="width: 15%">COM_NAME</th>
<th style="width: 15%">COM_QUANTITY</th>
<th style="width: 15%">COM_COMPANY</th>
<th style="width: 15%">PRICE</th>
<th style="width: 15%">BILL_DATE</th>
<th style="width: 15%">STATUS</th>

</tr>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/lms1?serverTimezone=UTC", "root","");
String qr="select * from components where com_name like '%"+request.getParameter("search")+"%'";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	%>
	<TR>
<TD><%=rs.getString("com_id")%></TD>
<TD><%=rs.getString("com_name")%></TD>
<TD><%=rs.getString("com_quantity")%></TD>
<TD><%=rs.getString("com_company")%></TD>

<TD><%=rs.getFloat("Price")%></TD>
<TD><%=rs.getString("BillDate")%></TD>
<TD><%=rs.getString("Status")%></TD>
	</TR>
	
	<%
	
}
else
{
	%>
	<center><p class="bg-primary text-black"><b><i><marquee>search Not found</marquee></i></b> </p></center>
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
<center><a href="com_view.jsp" target="_blank">Back</a></center>
<center><a href="logout.jsp" target="_blank">Logout</a></center>

</div>

</form>
</body>
</html>
<%
}
%>
<%@ page language="java"  import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
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
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 
<script language="javascript"> 
 function editRecord(id)
 {
     var f=document.form;
    f.method="post";
     f.action='com_edit.jsp?id='+id;
     f.submit();  
}
</script> -->
</head>

<body>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/lms1?serverTimezone=UTC", "root","");
PreparedStatement ps=con.prepareStatement("select * from components ");
ResultSet rs=ps.executeQuery();

//String qr="select * from cpu where company like '%"+request.getParameter("search")+"%'";
//Statement st1=con.createStatement();
//ResultSet rs1=st1.executeQuery(qr);


%>

<div class="container">
<!-- <form  method="post" name="form"> -->

<table  class="table table-bordered table-striped">
      <thead>
          <tr>
             <th style="width:15%">COM_ID</th>
             <th style="width:15%">COM_NAME</th>
             <th style="width:15%">COM_QUANTITY</th>
             <th style="width:15%">COM_COMPANY</th>
             <th style="width:15%">PRICE</th>
             <th style="width:15%">BILL_DATE</th>
             <th style="width:15%">STATUS</th>
             
             <th style="width:15%">ACTION</th>
             </tr>
      </thead>
      <tbody>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getString(2)%></TD>

<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getFloat(5)%></TD>
<TD><%=rs.getString(6)%></TD>
<TD><%=rs.getString(7)%></TD>
<td>
<form action="com_edit.jsp?id=<%=rs.getString(1) %>" method="post">
<input type="submit" name="edit" value="Edit" style="background-color:red;font-weight:bold;color:white;" >
</form>

</td>


</TR>

<% 
}

}

catch(Exception e)
{
	e.printStackTrace();
	out.print(e);
}
%>
</tbody>

</TABLE>
</form>

</div>
<TABLE border=0  cellpadding="10" align=center style="text-align:center" >
<TR>
<TD><br><br>
<FORM ACTION="com.jsp" method="get" >
<button type="submit" class="btn btn-success">Back</button>
<a class="btn btn-primary" href="com_search.jsp" role="button">Search</a>

<a class="btn btn-warning" href="logout.jsp" role="button">Logout</a>

</TD>
</form>
</TR>
</TABLE>
</body>
</html>
<%
}
%>
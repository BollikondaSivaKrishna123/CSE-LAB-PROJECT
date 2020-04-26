<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String p=(String)session.getAttribute("uname2");
    if(p==null)
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
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@page language="java"%>
<%@page import="java.sql.*"%>
 <!-- 
 <form method="post" action="update.jsp">

<table border="1">
<tr>
<th>ID</th>
<th>RAM</th>
<th>MAC</th>
<th>OS</th>
<th>COMPANY</th>
<th>HARDDISK</th>
<th>PRICE</th>
<th>LOCATION</th>
<th>BILLDATE</th>
<th>STATUS</th>


</tr>
 -->
<%
String s1=request.getParameter("id");
//int no=Integer.parseInt(id);
//int sumcount=0;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/lms1?serverTimezone=UTC", "root","");

String query = "select * from cpu where cid='"+s1+"'";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<div class="container">
  
  <form class="" action="update.jsp" method="post">
    <DIV class = "form-group">
    <label for = "cid">CPU-ID:</label>
   <input type="text" class = "form-control" name="cid" disabled value="<%=rs.getString(1)%>"> 
   </DIV>  
    <div class = 'form-group'>
    <label for="location">LOCATION</label>
    <input type="text" class="form-control " id="location" name="location" value="<%=rs.getString(2)%>" >
   </div>
  
  <div class="form-group">
  <label for="ram">RAM:</label>
  <input type="text" class="form-control" id="ram" name="ram" value="<%=rs.getString(3)%>">
	
</div>
  
  
 <!-- 
  
   <div class = "form-group">
    <label for="ram">RAM</label>
    <input type="text" class="form-control" id="ram" name="ram" placeholder="Enter RAM-SIZE">
   </div> 
    -->
      
   
   
   <div class = 'form-group'>
    <label for="os">OS</label>
    <input type="text" class="form-control" id="os" name="os" value="<%=rs.getString(4)%>">
   </div>
    <div class = 'form-group'>
    <label for="harddisk">HARDDISK</label>
    <input type="text" class="form-control" id="harddisk" name="hard_disc" value="<%=rs.getString(5)%>">
   </div>
  
   
      <div class ="form-group">
    <label for="mac">MAC</label>
    <input type="text" class="form-control" id="mac" name="mac" value="<%=rs.getString(6)%>">
   </div>
   <div class = 'form-group'>
    <label for="company">COMPANY</label>
    <input type="text" class="form-control" id="company" name="company" value="<%=rs.getString(7)%>" >
   </div>
   <div class = 'form-group'>
    <label for="price">PRICE</label>
    <input type="text" class="form-control" id="price" name="price" value="<%=rs.getFloat(8)%>">
   </div>
  
   
   <div class = 'form-group'>
    <label for="billdate" >BILLDATE</label>
    
    <input type="date" class="form-control" id="billdate" name="bill_date" value="<%=rs.getString(9)%>">
   </div>
  
   <div class = 'form-group'>
    <label for="status">STATUS</label>
<!--     <input type="text" class="form-control mb-2 mr-sm-2" id="status" name="status" placeholder="Enter Status(0(not-working)/1(working))"> -->
  
  <select class="form-control" id="status" name="status" value="<%=rs.getString(10)%>">
	<option>working</option>
    <option>not-working</option>
    </select>
   </div>   
   <input type="hidden" name="id" value="<%=rs.getString(1)%>">
   </div>
    <button type="submit" class="btn btn-success">UPDATE</button>
    <a class="btn btn-primary" href="select.jsp" role="button">view</a>
    <a class="btn btn-info" href="search.jsp" role="button">Search</a>
     <a class="btn btn-primary" href="logout.jsp" role="button">Logout</a>
   
    </form>
</div>



















<!-- <td><input type="hidden" name="id" value="<%=rs.getInt(1)%>"></td>

</tr>

<input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;">
 -->
<%
}
}
catch(Exception e){
	e.printStackTrace();
	out.print(e);
}
%>
</form>
</body>
</html>
<%
}
%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
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
String ss=request.getParameter("id");
//out.print(ss);
//int no=Integer.parseInt(id);
//int sumcount=0;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/lms1?serverTimezone=UTC", "root","");

String query = "select * from components where com_id='"+ss+"'";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<div class="container"> 
  
  <form class="" action="com_update.jsp" method="post">
    <DIV class = "form-group">
    <label for = "com_id">COM_ID:</label>
   <input type="text" class = "form-control" name="com_id" disabled value="<%=rs.getString(1)%>"> 
   </DIV>  
  <div class="form-group">
  <label for="com_name">COM_NAME</label>
  <input type="text" class="form-control" id="com_name" name="com_name" value="<%=rs.getString(2)%>">
	
</div>
  
   
      <div class ="form-group">
    <label for="com_quantity">COM_QUANTITY</label>
    <input type="text" class="form-control" id="com_quantity" name="com_quantity" value="<%=rs.getString(3)%>">
   </div>
   <div class = 'form-group'>
    <label for="com_company">COM_COMPANY</label>
    <input type="text" class="form-control" id="com_company" name="com_company" value="<%=rs.getString(4)%>">
   </div>
   <div class = 'form-group'>
    <label for="price">PRICE</label>
    <input type="text" class="form-control" id="price" name="Price" value="<%=rs.getFloat(5)%>" >
   </div>
   
   
   <div class = 'form-group'>
    <label for="billdate" >BILLDATE</label>
    
    <input type="date" class="form-control" id="billdate" name="Bill_Date" value="<%=rs.getString(6)%>">
   </div>
  
   <div class = 'form-group'>
    <label for="status">STATUS</label>
    <select class="form-control mb-2 mr-sm-2" id="status" name="status" value="<%=rs.getString(7)%>">
   <option>select</option>
   <option>working</option>
   <option>not-working</option>
   </select>
   </div>
   <div>
   <input type="hidden" name="id" value="<%=rs.getString(1)%>">
   </div>
    <button type="submit" class="btn btn-success">UPDATE</button>
    <a class="btn btn-primary" href="com_view.jsp" role="button">view</a>
    <a class="btn btn-info" href="com_search.jsp" role="button">Search</a>
     <a class="btn btn-primary" href="logout.jsp" role="button">Logout</a>
   
    </form>
</div>


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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String s2=(String)session.getAttribute("uname2");
    if(s2==null)
    {
    response.sendRedirect("Login.html");	
    }
    else
    {
    %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>


<div class="container">
  
  <form class="" action="comdb.jsp" method="post">
  <div class ="form-group">
    <label for="comid">COM_ID</label>
    <input type="text" class="form-control" id="comid" name="com_id" placeholder="Enter Component ID">
  </div>
  
  <div class="form-group">
  <label for="com_name">COM_NAME</label>
  <input type="text" class="form-control" id="com_name" name="com_name" placeholder="Enter the Com-name">
	</div>
  
  
 <!-- 
  
   <div class = "form-group">
    <label for="ram">RAM</label>
    <input type="text" class="form-control" id="ram" name="ram" placeholder="Enter RAM-SIZE">
   </div> 
    -->
      
   
   
   
   
      <div class ="form-group">
    <label for="com_quantity">COM_Quantity</label>
    <input type="text" class="form-control" id="com_quantity" name="com_quantity" placeholder="Enter component Quantity">
   </div>
   <div class = 'form-group'>
    <label for="com_company">COM_COMPANY</label>
    <input type="text" class="form-control" id="com_company" name="com_company" placeholder="Enter the componet Company">
   </div>
   <div class = 'form-group'>
    <label for="price">Price</label>
    <input type="text" class="form-control" id="price" name="Price" placeholder="Enter the component price" >
   </div>
   
   
   
   
   
   <div class = 'form-group'>
    <label for="Bill_Date">BILLDATE</label>
    <input type="date" class="form-control" id="Bill_Date" name="Bill_Date" placeholder="Enter the BILL_DATE" >
   </div>
   <div class = 'form-group'>
    <label for="status">STATUS</label>
    <select class="form-control" id="status" name="status" >
   <option>select</option>
   <option>working</option>
   <option>not-working</option>
   </select>
   </div>
     <button type="submit" class="btn btn-success">Submit</button>
    <a class="btn btn-primary" href="com_view.jsp" role="button">view</a>
    <a class="btn btn-info" href="com_search.jsp" role="button">Search</a>
    <a class="btn btn-primary" href="logout.jsp" role="button">Logout</a>
    
    </form>
</div>



</body>
</html>
<%
}
%>
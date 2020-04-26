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
  
  <form class="" action="cpu.jsp" method="post">
  <div class ="form-group">
    <label for="cpuid">CPU-ID</label>
    <input type="text" class="form-control" id="cpuid" name="cpuid" placeholder="Enter CPU's ID">
  </div>
  
  <div class="form-group">
  <label for="ram">RAM:</label>
  <select class="form-control" id="ram" name="ram" placeholder="Enter RAM-SIZE">
	<option>select</option>
    <option>1</option>
    <option>2</option>
    <option>3</option>
    <option>4</option>
    <option>5</option>
    <option>6</option>
    <option>7</option>
    <option>8</option>
    <option>9</option>
    <option>10</option>
  </select>
</div>
  
  
 <!-- 
  
   <div class = "form-group">
    <label for="ram">RAM</label>
    <input type="text" class="form-control" id="ram" name="ram" placeholder="Enter RAM-SIZE">
   </div> 
    -->
      
   
   
   
   
      <div class ="form-group">
    <label for="mac">MAC</label>
    <input type="text" class="form-control" id="mac" name="mac" placeholder="Enter MAC-id">
   </div>
   <div class = 'form-group'>
    <label for="os">OS</label>
    <input type="text" class="form-control" id="os" name="os" placeholder="Enter the OS Type">
   </div>
   <div class = 'form-group'>
    <label for="company">COMPANY</label>
    <input type="text" class="form-control" id="company" name="company" placeholder="Enter the Company Name" >
   </div>
   <div class = 'form-group'>
    <label for="harddisk">HARDDISK</label>
    <input type="text" class="form-control" id="harddisk" name="harddisk" placeholder="Enter HardDisk Type">
   </div>
   <div class = 'form-group'>
    <label for="price">PRICE</label>
    <input type="text" class="form-control" id="price" name="price" placeholder="Enter Price of CPU (Rs) ">
   </div>
   <div class = 'form-group'>
    <label for="location">LOCATION</label>
    <input type="text" class="form-control " id="location" name="location" placeholder="Enter the Location of the CPU" >
   </div>
  
   
   <div class = 'form-group'>
    <label for="billdate" >BILLDATE</label>
    
    <input type="date" class="form-control" data-date-inline-picker="true" id="billdate" name="billdate" value="Enter the BillDate" >
   </div>
  
   <div class = 'form-group'>
    <label for="status">STATUS</label>
    <input type="text" class="form-control mb-2 mr-sm-2" id="status" name="status" placeholder="Enter Status(0(not-working)/1(working))">
   </div>   
    <button type="submit" class="btn btn-success">Submit</button>
    <a class="btn btn-primary" href="select.jsp" role="button">view</a>
    <a class="btn btn-info" href="search.jsp" role="button">Search</a>
    <a class="btn btn-primary" href="logout.jsp" role="button">Logout</a>
    
    </form>
</div>



</body>
</html>
<%
}
%>
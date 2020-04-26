<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String s1=(String)session.getAttribute("uname2");
    if(s1==null)
    {
    	response.sendRedirect("Login.html");
    }
    else
    {
    %>
-<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<body>
<img src="C:\Users\DELL\Pictures\header.jpeg" alt="logo" width="1300 height="300">
</body>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 20px;
  color: white;
  text-align: center;
  padding: 25px 35px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 20px;  
  border: none;
  outline: none;
  color: white;
  padding: 25px 35px;
  background-color:black;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color:orange;
  min-width: 200px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>

<div class="navbar">

  <a href="#news">Home</a>
  
  <div class="dropdown">
    <button class="dropbtn">Profile 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Edit Profile</a>
      <a href="changepwd.jsp">Change Password</a>
      <a href="logout.jsp">Logout</a>
    </div>
  </div> 
  
  
<div class="dropdown">
    <button class="dropbtn">System Info 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="cpu1.jsp">Add SysInfo</a>
      <a href="com.jsp">Components</a>
      <a href="#">Remove SysInfo</a>
    </div>
  </div> 

  <div class="dropdown">
    <button class="dropbtn">Lab Info 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Add Lab</a>
      <a href="#">Remove Lab</a>
      <a href="#">Lab Summary</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Report 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">All</a>
      <a href="#">Labwise</a>
      <a href="#">Status</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Contact Us
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">HOD</a>
      <a href="#">Priciple</a>
      <a href="#">Incharge</a>
    </div>
  </div> 
  <a href="#news">Remarks</a>
  
  <a href="#news">About Us</a>
  <a href="logout.jsp">Logout</a>
  
</div>


</body>
<body>
<img src="C:\Users\DELL\Pictures\lab2.jpg" alt="logo" width="1300 height="200">
</body>

</html>
    <%
    }
    %>
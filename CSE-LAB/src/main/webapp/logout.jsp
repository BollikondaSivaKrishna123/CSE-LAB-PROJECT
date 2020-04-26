<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Logout</title>

</head>

<body>

<% 
session.invalidate();

response.sendRedirect("Login.html");  %>
	
<form action="Login.html"><center><p class="bg-primary text-white">Logout Successfully....Done.</p></center>
</form>



</body>

</html>
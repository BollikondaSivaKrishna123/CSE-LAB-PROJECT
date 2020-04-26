<%
String s=(String)session.getAttribute("uname2");
if(s==null)
{
	response.sendRedirect("Login.html");
}
else
{
%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");


//Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/lms1?serverTimezone=UTC", "root","");
//con = DriverManager.getConnection(url, "root", "");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from employee where Password= '"+ OldPassword + "'");
if (rs.next()) { 
pass = rs.getString("Password");
} 

if(Newpass.equals(conpass))
{
if (pass.equals(OldPassword))
{
st = con.createStatement();
int i = st.executeUpdate("update employee set Password='"+ Newpass + "' where Password='"+ OldPassword+"'");
//out.println("Password changed successfully");
%>
<h2><b><center><p class="bg-primary text-white">Password Changed Successfully....</p></center></b></h2>
<br>
<b><center><a href="logout.jsp" class="btn btn-info" role="button">Goto Login</a></center></b>
	<%
st.close();
con.close();
} 
}

else 

{
//out.println("Old Password doesn't match");
	%>
	<h2><b><center><p class="bg-danger text-white">Something went Wrong / Old password does't Match....Sorry,Try Again</p></center></b></h2>
	<br>
	<b><center><a href="changepwd.jsp" class="btn btn-info" role="button">Back</a></center></b>
	<%

}


} 
catch (Exception e) {
out.println(e);
}
%>
<%
}
%>
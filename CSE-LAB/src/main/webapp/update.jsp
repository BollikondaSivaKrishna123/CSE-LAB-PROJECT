<%@page import="java.sql.*"%>
<%
    String s11=(String)session.getAttribute("uname2");
    if(s11==null)
    {
    	response.sendRedirect("Login.html");
    }
    else
    {
   

String ss1=request.getParameter("id");
String ram=request.getParameter("ram");

String mac=request.getParameter("mac");
String os=request.getParameter("os");
String company=request.getParameter("company");
String hard_disc=request.getParameter("hard_disc");
Float price=Float.parseFloat(request.getParameter("price"));
String location=request.getParameter("location");
String bill_date=request.getParameter("bill_date");
String status=request.getParameter("status");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/lms1?serverTimezone=UTC", "root","");
PreparedStatement ps=con.prepareStatement("update cpu set Location=?,RAM=?,OS=?,HardDisk=?,MAC=?,Company=?,Price=?,BillDate=?,Status=? where cid="+ss1);
ps.setString(1, location);
ps.setString(2,ram);

ps.setString(3,os);

ps.setString(4,hard_disc);

ps.setString(5,mac);

ps.setString(6,company);

ps.setFloat(7,price);
ps.setString(8,bill_date);

ps.setString(9,status);
int i = ps.executeUpdate();
if(i > 0)
{
	%>
	<br>
	<center><p class="bg-primary text-white">Updated Successfully.....</p></center>
	<br>
	<jsp:include page="select.jsp" />
	<%
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(Exception e){
System.out.println(e);
out.print(e);
}
    }
%>

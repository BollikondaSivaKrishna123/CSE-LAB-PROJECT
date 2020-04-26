<%@page import="java.sql.*"%>
<%
    String s11=(String)session.getAttribute("uname2");
    if(s11==null)
    {
    	response.sendRedirect("Login.html");
    }
    else
    {
   

Integer id1=Integer.parseInt(request.getParameter("id"));
Integer ram=Integer.parseInt(request.getParameter("ram"));

String mac=request.getParameter("mac");
String os=request.getParameter("os");
String company=request.getParameter("company");
String hard_disc=request.getParameter("hard_disc");
Integer price=Integer.parseInt(request.getParameter("price"));
String location=request.getParameter("location");
String bill_date=request.getParameter("bill_date");
Integer status=Integer.parseInt(request.getParameter("status"));

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cse?serverTimezone=UTC", "root","");
PreparedStatement ps=con.prepareStatement("update cpu set ram=?,mac=?,os=?,company=?,hard_disc=?,price=?,location=?,bill_date=?,status=? where cpu_id="+id1);
// ps.setInt(1,id1);
ps.setInt(1, ram);
ps.setString(2,mac);

ps.setString(3,os);

ps.setString(4,company);

ps.setString(5,hard_disc);

ps.setInt(6,price);

ps.setString(7,location);
ps.setString(8,bill_date);

ps.setInt(9,status);
int i = ps.executeUpdate();
if(i > 0)
{
	%>
	<jsp:include page="select.jsp" />
	<br>
	<center><p class="bg-primary text-white">Updated Successfully.....</p></center>
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

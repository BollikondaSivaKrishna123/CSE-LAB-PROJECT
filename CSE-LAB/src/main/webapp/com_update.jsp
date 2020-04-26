<%@page import="java.sql.*"%>
<%
    String s11=(String)session.getAttribute("uname2");
    if(s11==null)
    {
    	response.sendRedirect("Login.html");
    }
    else
    {
   


String ss=request.getParameter("id");
String com_name=request.getParameter("com_name");
String com_quantity=request.getParameter("com_quantity");
String com_company=request.getParameter("com_company");
Float price=Float.parseFloat(request.getParameter("Price"));
String bill_date=request.getParameter("Bill_Date");
Integer status=Integer.parseInt(request.getParameter("status"));

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cse?serverTimezone=UTC", "root","");
PreparedStatement ps=con.prepareStatement("update components set com_name=?,com_quantity=?,com_company=?,Price=?,BillDate=?,Status=? where com_id='"+ss+"'");
// ps.setInt(1,id1);
ps.setString(1,com_name);

ps.setString(2,com_quantity);

ps.setString(3,com_company);

ps.setFloat(4,price);


ps.setString(5,bill_date);

ps.setInt(6,status);
int i = ps.executeUpdate();
if(i > 0)
{
	%>
	<br>
	<center><p class="bg-primary text-white">Updated Successfully.....</p></center>
<br>
<jsp:include page="com_edit.jsp" />
<%
}
else
{
	%>
	<br>
	<center><p class="bg-primary text-white">something went wrong.....</p></center>
<br>
<jsp:include page="com_edit.jsp" />
<%
}
}
catch(Exception e){
System.out.println(e);
out.print(e);
}
    }
%>

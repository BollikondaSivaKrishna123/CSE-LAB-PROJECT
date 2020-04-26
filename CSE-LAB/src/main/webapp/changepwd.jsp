<%
String s2=(String)session.getAttribute("uname2");
if(s2==null)
{
	response.sendRedirect("Login.html");
	
}
else
{
%>

<html>
<B><CENTER><head>CHANGEING PASSWORD</head></CENTER></B>
<BR>
<style>
html,body{
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}

.container{
height: 100%;
align-content: center;
}
</style>


<body>
<script language="javascript">
function fncSubmit()
{

if(document.ChangePasswordForm.OldPassword.value == "")
{
alert('Please input old password');
document.ChangePasswordForm.OldPassword.focus();
return false;
} 

if(document.ChangePasswordForm.newpassword.value == "")
{
alert('Please input Password');
document.ChangePasswordForm.newpassword.focus(); 
return false;
} 

if(document.ChangePasswordForm.conpassword.value == "")
{
alert('Please input Confirm Password');
document.ChangePasswordForm.conpassword.focus(); 
return false;
} 

if(document.ChangePasswordForm.newpassword.value != document.ChangePasswordForm.conpassword.value)
{
alert('Confirm Password Not Match');
document.ChangePasswordForm.conpassword.focus(); 
return false;
} 

document.ChangePasswordForm.submit();
}
</script>
<form name="ChangePasswordForm" method="post" action="demo.jsp" OnSubmit="return fncSubmit();">

<table  border="1" align="center" bgcolor="orange">

<tr>
<td>OLD PASSWORD</td>
<TD><input name="OldPassword" type="password" id="OLDpwd" placeholder=" Enter Old Password" size="30" ></td>
</tr>
<tr>
<td>NewPassword</td>
<td><input name="newpassword" type="password" id="newpassword" size="30"  placeholder=" Enter New Password">
</td>
</tr>
<tr>
<td>Confirm Password</td>
<td><input name="conpassword" type="password" id="conpassword" size="30"  placeholder=" Please Confirm Password">
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Save"></td>
</tr>

</table>
</form>
</body>
</html>
<%
}
%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {text-align: right;
}
</style>
</head>

<body>
 <p>
   <%@ page import="java.sql.*" %>
   
  <table width="993" height="102" border="0">
    <tr>
      <td width="251" height="96"><img src="http://i66.tinypic.com/346oqht.jpg" width="251" height="88" alt="Logo" /></td>
      <td width="726" class="right">24X7 Customer Support - <a href="contact.jsp">Contact us</a> | <a href="http://ec2-52-42-229-104.us-west-2.compute.amazonaws.com:8080/">Home</a> |
        <% if(session.getAttribute("uname")==null) {
			%>
        <a href="login.jsp">Login</a>
        <%} else {
				%>
        <a href="logout.jsp">Logout</a>
        <%}%></td>
    </tr>
  </table>
  <hr />
<br />
 Welcome <%=session.getAttribute("uname")%>,
 <p>Click <a href="main.jsp
">here</a> to go to the Home Page.
   </p> 

</body>
</html>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

 <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<% 
       PreparedStatement ps;
        Connection conn;
        ResultSet rs= null;
       Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://ec2-52-42-229-104.us-west-2.compute.amazonaws.com:3306/project", "evansj", "suiteswellzwfate1");
      
         Statement st=conn.createStatement();
%> 
<% 
boolean flag = false; 

String name = request.getParameter ("id"); 
String password = request.getParameter ("password"); 
%>

<% 
 
String sql = "SELECT name from register where user=? And password =?"; 

try {  
ps = conn.prepareStatement (sql); 
ps.setString (1,name); 
ps.setString (2,password); 
rs = ps.executeQuery (); 
if (rs.next ()) { 
out.println (rs.getString ("name")); 
flag = true; 
session.setAttribute("uname", rs.getString ("name")); 
} else { 
request.setAttribute("err", "user name or password error!"); 
}

rs.close (); 
ps.close (); 
conn.close ();

} catch (Exception e) { 
out.println (e); 
} 
%>


<% 

if (flag) { 

%>

<jsp:forward page="loginsuccess.jsp" />

<%

} 
else { 
%>

<jsp:forward page="loginfail.jsp"/> 
<% 
} 
%>
</body>
</html>

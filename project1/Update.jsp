<%-- 
    Document   : Update
    Created on : 15 Feb, 2024, 12:17:51 AM
    Author     : vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1{
                background-image:url("https://cdni.iconscout.com/illustration/premium/preview/successfully-completed-3833924-3241772.png?w=0&h=700");
                width:900px;
                height:600px;
                margin-bottom:-30px;
            }
        </style>
    </head>
    
    <body>
        
<%
           String n=request.getParameter("name");
           String x=request.getParameter("passId");
           String id=request.getParameter("id");
           String mob=request.getParameter("mobile");
           String email=request.getParameter("email");
           String user=request.getParameter("username");
           String pass=request.getParameter("password");
           PreparedStatement ps=null;

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dev","root","");

String sql="Update employeetable set name=?,id=?,mobile=?,email=?,username=?,password=? where id="+x;
ps = con.prepareStatement(sql);
ps.setString(1,n);
ps.setString(2, id);
ps.setString(3, mob);
ps.setString(4, email);
ps.setString(5, user);
ps.setString(6, pass);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("<center><h1></h1></center>");
}
else
{
out.print("There is a problem in updating Record.");
} con.close();
}
catch(Exception e)
{
out.print(e);
}

%>
    <center><a href="Admin1.jsp"><img src="https://th.bing.com/th/id/OIP.aXNad0Y5Uymv6MbGkZxfQQHaHa?w=600&h=600&rs=1&pid=ImgDetMain" width="200" height="100"></a></center>
    </body>
</html>

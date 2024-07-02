<%-- 
    Document   : yourDetail
    Created on : 15 Feb, 2024, 12:45:16 AM
    Author     : vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>happy</title>
        <style>
            body{
                background-image:url("https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/PDaTSuJ/videoblocks-plexus-white-abstract-network-technology-business-science-background-loop_bv-9ohwt4_thumbnail-1080_01.png");
            }
        </style>
    </head>
    <body><center>
         <% 
       String username=(String)session.getAttribute("user");
       String pass=(String)session.getAttribute("pass");
       String id=(String)session.getAttribute("id1");
       String nm=(String)session.getAttribute("name");
       String email=(String)session.getAttribute("em");
       String mobile=(String)session.getAttribute("mob");
        
           String driver = "com.mysql.jdbc.Driver";
           String connectionUrl="jdbc:mysql://localhost:3306/dev";
           String userid = "root";
           String password = "";
    try {
            Class.forName(driver);
         } catch (ClassNotFoundException e) {
        out.print(e);
        }
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
       
        try
        {
        connection = DriverManager.getConnection(connectionUrl, userid, password);
        statement=connection.createStatement();
        String sql ="select * from employeetable";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
           %>
           
           <h1>Hello,<%=nm%>😍</h1>
           Employee name:<%=nm%><br><br>
           Employee ID:<%=id%><br><br>
           Mobile:<%=mobile%><br><br>
           E-mail:<%=email%><br><br>
           Username:<%=username%><br><br>
           Password:<%=pass%><br><br>
           
           
           
        <% break;}
         connection.close();
        } 
        catch (Exception e) {
        out.print(e);
        }
        %>
        <a href="index.html">Go to Home Page</a></center>
    </body>
</html>

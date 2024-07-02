<%-- 
    Document   : delete
    Created on : 17 Feb, 2024, 7:42:17 PM
    Author     : vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% 
          String pass=request.getParameter("pass");
          try{
              String driver="com.mysql.jdbc.Driver";
              Class.forName(driver);
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dev","root","");
              Statement st=conn.createStatement();
              String sql="delete from employeetable where id="+pass;
              st.executeUpdate(sql);
              out.print("data delete successfully");
              
          }
          catch(Exception e)
          {
              out.print(e);
          }
          
           %>
    </body>
</html>

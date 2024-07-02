<%-- 
    Document   : update1
    Created on : 15 Feb, 2024, 6:25:44 PM
    Author     : vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>helloPage</title>
        <style>
            body{
                background-image:url("https://static.vecteezy.com/system/resources/previews/000/543/603/large_2x/white-technology-and-science-abstract-background-with-blue-and-grey-line-dot-business-and-connection-concept-futuristic-and-industry-4-0-concept-internet-cyber-data-link-and-network-theme-vector.jpg");
            }
        </style>
    </head>
    <body><center>
        <%
String id12 = request.getParameter("passId");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/dev";
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
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM employeetable";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
    String imp=resultSet.getString("id");
    if(imp.equals(id12))
{
%>
<!DOCTYPE html>
<h1><img src="https://ileadlancaster.org/wp-content/uploads/2018/10/update-t.jpg" width="400" height="200" style="margin-top:-10px"></h1>
<form method="post" action="Update.jsp">
Employee Name:
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br><br>
<input type="hidden" name="passId" value="<%=resultSet.getString("id") %>">
Employee ID:
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br><br>
Mobile:
<input type="text" name="mobile" value="<%=resultSet.getString("mobile") %>">
<br><br>
Email Id:
<input type="email" name="email" value="<%=resultSet.getString("email") %>">
<br><br>
Username:
<input type="text" name="username" value="<%=resultSet.getString("username")%>"
       <br><br><br>
Password:
<input type="text" name="password" value="<%=resultSet.getString("password")%>"
       <br><br><br>
<input type="submit" value="Update" style="size:100px; width:100px; height:40px; color:#fefebc; border-radius:50%; background-color:blue;">
</form>
<% }
}
connection.close();
} catch (Exception e) {
out.print(e);
}
%>
    </center></body>
</html>

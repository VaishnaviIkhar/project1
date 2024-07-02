<%-- 
    Document   : submit
    Created on : 13 Feb, 2024, 12:17:45 AM
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
    <center>
        <%  try{
            String n=request.getParameter("ename");
            String i=request.getParameter("id");
            String g=request.getParameter("Gender");
            String m=request.getParameter("mobile");
            String e=request.getParameter("email");
            String user=request.getParameter("username");
            String pass=request.getParameter("password");
            session.setAttribute("username",user);
            session.setAttribute("password",pass);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dev","root","");
            Statement st=con.createStatement();
            String sql="insert into employeetable(name,id,mobile,email,username,password)values('"+n+"' , '"+i+"' , '"+m+"' , '"+e+"' , '"+user+"' , '"+pass+"')";
            st.executeUpdate(sql);
            out.print("<h1>Data is inserted</h1>");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
            %>
            <a href="index.html" style="font-size:50px">🔙</a>
    </center>
    </body>
</html>

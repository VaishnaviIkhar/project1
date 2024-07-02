<%-- 
    Document   : Admin
    Created on : 13 Feb, 2024, 12:28:40 AM
    Author     : vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String user=request.getParameter("username");
        String pass=request.getParameter("password");
        if(user.equalsIgnoreCase("Admin") && pass.equals("admin123"))
        {
            response.sendRedirect("Admin1.jsp");
        }
        else
        {
            out.print("<center>Enter Valid Username and Password</center>");
        }
        %>
    </body>
</html>

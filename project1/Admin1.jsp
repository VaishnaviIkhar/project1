<%-- 
    Document   : Admin1
    Created on : 13 Feb, 2024, 9:10:01 AM
    Author     : vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
            body{
                background-image:url("https://img.freepik.com/premium-vector/technology-connection-digital-data-white-background_32996-546.jpg");
            }
        </style>
    </head>
    <body>
    <center>
    <table border="1">
        <thead align="center"><h3 style="font-size:35px"><u style="color:black">Registered Student</u></h3></thead>
               <tbody>
                   <tr style="background-color:#7cde82;">
                       <td><b>Name of Employee</b></td>
                       <td><b>Employee ID</b></td>
                       <td><b>Mobile</b></td>
                       <td><b>E-mail</b></td>
                       <td><b>Username</b></td>
                       <td><b>Password</b></td>
                       <td><b>Action</b></td>
                       <td><b>Action</b></td>
                   </tr>
             
           
       <% 
        try
       {
          
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dev","root","");
           Statement st=con.createStatement();
           ResultSet rs=null;
           String sql="Select * from employeetable";
           rs=st.executeQuery(sql);
            while(rs.next())
            {
                
            out.print("<tr><td>"+rs.getString("name")+"</td><td>"+rs.getString("id")+"</td><td>"+rs.getString("mobile")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("username")+"</td><td>"+rs.getString("password")+"</td><td><a href=update1.jsp?passId="+rs.getString("id")+">Update</a></td><td><a href=delete.jsp?pass="+rs.getString("id")+">Delete</a></td></tr>");
            }
            con.close();
       }
      catch(Exception e)
        {
        out.print(e);
        }
            
                 %>
               
           </tbody>
    </table><br><br>
                 <a href="index.html"><img src="https://www.mcgill.ca/crrd/files/crrd/styles/wysiwyg_medium/public/back_button_norcastle_red.png?itok=NOVdWpmK" width="140" height="80"></a>
    </center> 
    </body>
</html>

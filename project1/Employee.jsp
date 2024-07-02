<%-- 
    Document   : Employee
    Created on : 13 Feb, 2024, 9:37:13 AM
    Author     : vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>after registration</title>
    </head>
    <body>
    <center>
       <% String u=request.getParameter("user");
       String p=request.getParameter("pass");
       
        
          
           
           String driver = "com.mysql.jdbc.Driver";
           String connectionUrl="jdbc:mysql://localhost:3306/final";
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
        
       
        try{
        connection = DriverManager.getConnection(connectionUrl, userid, password);
        statement=connection.createStatement();
        String sql ="select * from employeetable";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
            String u1=resultSet.getString("username");
            String p1=resultSet.getString("password");
            String i=resultSet.getString("id");
            String n=resultSet.getString("name");
            String email=resultSet.getString("email");
            String mobile=resultSet.getString("mobile");
            if(u.equalsIgnoreCase(u1) && p.equals(p1)){
              
               session.setAttribute("user",u1);
               session.setAttribute("pass",p1);
              session.setAttribute("id1",i);
              session.setAttribute("name",n);
              session.setAttribute("em", email);
              session.setAttribute("mob",mobile);
              response.sendRedirect("yourDetail.jsp");
              break;
            }
            else
            {
                out.print("Enter valid response");
            }
            }
        connection.close();
        } 
        catch (Exception e) {
        out.print(e);
        }
        %>
        
       
    </center>   
    </body>
</html>

        


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            var selectRowData;
            function rowClick(row)
            {
                selectRowData=row.cells[0].innerText;
            }
            function goToNextPage()
            {
                if(selectRowData){
                    window.location.href="Login.jsp?rowData="+encodeURLComponent(selectRowData);
                }
                else{
                    alert("Please Select a row");
                }
            }
        </script>
    </head>
    <body>
    <center>
        <table id="myTable">
            <thead>Compony in Service</thead>
            <tbody>
                <tr>
                    <td>Company Name</td>
                    <td>Start From</td>
                </tr>
                <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/final","root","");
                    Statement st=con.createStatement();
                    ResultSet rs=null;
                    String sql="Select * from company";
                    rs=st.executeQuery(sql);
                    while(rs.next())
      { out.print("<tr><td>"+rs.getString("name")+"</td><td>"+rs.getString("start")+"</td></tr></><")
          %>
          <tr onClick="rowClick(this)">
              <td><%=rs.getString("name")%></td>
              <td><%=rs.getString("start")%></td>
          </tr>
          </tbody>
          </table>
          <%
          }
           con.close();
            }
            catch(Exception e)
            {
            out.print(e);
            }

                }
                %>
                
            </tbody>
        </table>
        <button onClick="goToNextPage()">Open</button>
        <
    </center>
    </body>
</html>

             
            
<%-- 
    Document   : adminnewusergrantaccess1
    Created on : 21 Apr, 2018, 12:26:10 PM
    Author     : Ezhil Malliga
--%>

<%-- 
    Document   : adminnewusergrantaccess
    Created on : 21 Apr, 2018, 12:22:16 PM
    Author     : Ezhil Malliga
--%>

 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GrantAccess Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
        <h1>Granting Access to User</h1>
        
        
        <%
            String cusid = request.getParameter("cusid");
            
         
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore?autoReconnect=true&useSSL=false","root","Terence@04");
            Statement stmt = con.createStatement();
            
//            stmt.executeQuery("set sql_safe_updates=0;");
            stmt.execute("create user '"+cusid+"'@'localhost' identified by '1234'");
            stmt.execute("grant select on bookstore.customerview to '"+cusid+"'@'localhost';");
            stmt.execute("grant insert on bookstore.delete_user to '"+cusid+"'@'localhost';");
            stmt.execute("grant select on bookstore.book  to '"+cusid+"'@'localhost';");
            stmt.executeUpdate("update customer set newuser=null where CUSTOMER_IDENTIFICATION_NUMBER='"+cusid+"'");
//                     }
            
//            while(myRs==true)
            {
               out.println("Granted access"); 
            }
		          
        }
        
        catch(Exception e)
        {
            out.println(e);
        }
        
           
        %>
                
    </body>
</html>

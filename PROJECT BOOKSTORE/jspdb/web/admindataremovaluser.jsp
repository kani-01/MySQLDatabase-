<%-- 
    Document   : admindataremovaluser
    Created on : 21 Apr, 2018, 11:57:28 AM
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
        <title>Revoke User Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
        <h1>Revoking User</h1>
        
        
         <%
            String cusid = request.getParameter("cusid");
            
         
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore?autoReconnect=true&useSSL=false","root","Terence@04");
            Statement stmt = con.createStatement();
            
//            stmt.executeQuery("set sql_safe_updates=0;");
           stmt.execute("drop user '"+cusid+"'@'localhost';");
           stmt.execute("delete from delete_user where CUSTOMER_IDENTIFICATION_NUMBER = '"+cusid+"';");
//            boolean myRe = stmt.execute("delete from customer where CUSTOMER_IDENTIFICATION_NUMBER = '"+cusid+"';");
//            boolean myRq = stmt.execute("delete from delete_user");
             
           out.println("'"+cusid+"' User Access Revoked");
		          
        }
        
        catch(Exception e)
        {
            out.println(e);
        }
        
           
        %>
        
        
    </body>
</html>

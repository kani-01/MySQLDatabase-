<%-- 
    Document   : revokeuser
    Created on : 7 Apr, 2018, 4:29:59 PM
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
        <h1>Revoke User Page</h1>
        
         <%
            String cusid = request.getParameter("cusid");
            String password = request.getParameter("password");
             
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore?autoReconnect=true&useSSL=false",cusid,password);
            Statement stmt = con.createStatement();
            
            
           boolean myRs = stmt.execute("insert into DELETE_USER values('"+cusid+"');");
                {
//              while(myRs)
//              {    
                out.println("Your access will be revoked shortly");
//              }
                }
//		stmt.executeQuery("revoke select on customerview from '"+cusid+"'@'localhost';");
        }
        
        catch(Exception e)
        {
            out.println(e);
        }
             
        %>
        
        <form action="unsubscribemessage.jsp">
            <pre>
                <input type="submit" value="OK">
            </pre>
        </form>
    </body>
</html>

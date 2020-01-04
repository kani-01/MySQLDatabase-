<%-- 
    Document   : userviewbooks
    Created on : 21 Apr, 2018, 1:49:26 PM
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
        <title>Books Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
        <h1>Books Available at Bookstore!</h1>
        
        
                <%
            String userid = request.getParameter("userid");
            String password = request.getParameter("password");
            
              
//        if(!(userid.equals("abc")&&password.equals("abc")))
        { 
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore?autoReconnect=true&useSSL=false",userid,password);
            Statement stmt = con.createStatement();
            
            
            ResultSet myRs = stmt.executeQuery("select * from book;");
                if(myRs.wasNull())
                {
                out.println("No Books available");
                }
                
                out.println("<h5>ISBN,  TITLE , AUTHOR , PRICE, SUBJECT, NUMBER, YEAR, PUBLISHER</h5>");
                           
                while(myRs.next())
		{
        	out.println(myRs.getString("ISBN")+" ,"+myRs.getString("TITLE")+" , "+myRs.getString("AUTHOR")+" , "
                        +myRs.getString("PRICE")+" , "+myRs.getString("SUBJECT_AREA")+" ,"+myRs.getString("AMOUNT_IN_INVENTORY")+" , "
                        +myRs.getString("YEAR_OF_PUBLICATION")+" , "+myRs.getString("PUBLISHER_IDENTIFICATION_NUMBER"));
                out.println("<br>");
                }  
                
		
        }
        
        catch(Exception e)
        {
            out.println(e);
        }
        
        }      
        %>
        
    </body>
</html>

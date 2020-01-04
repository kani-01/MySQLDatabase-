<%-- 
    Document   : booksretrieval
    Created on : 18 Apr, 2018, 12:19:11 AM
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
        <title>Books Detail</title>
    </head>
    <body style ="background-color:#F7DC6F;">
        <h2>Books Data</h2>
        <%
//            String userid = request.getParameter("userid");
//            String password = request.getParameter("password");
            
//        if(userid.equals("abc")&&password.equals("abc"))
        { 
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore?autoReconnect=true&useSSL=false","root","Terence@04");
            Statement stmt = con.createStatement();
            
            out.println("<h5><h5>ISBN,  TITLE , AUTHOR ,NUMBER, PRICE, SUBJECT, YEAR, PUBLISHER</h5>");
            ResultSet myRs = stmt.executeQuery("select * from book;");
		while(myRs.next())
		{
        	out.println(myRs.getString("ISBN")+" ,"+myRs.getString("TITLE")+" , "+myRs.getString("AUTHOR")
                        +" , "+myRs.getString("AMOUNT_IN_INVENTORY")+" , "+myRs.getString("PRICE")+" , "+myRs.getString("SUBJECT_AREA")
                        +" , "+myRs.getString("YEAR_OF_PUBLICATION")+" , "+myRs.getString("PUBLISHER_IDENTIFICATION_NUMBER"));
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

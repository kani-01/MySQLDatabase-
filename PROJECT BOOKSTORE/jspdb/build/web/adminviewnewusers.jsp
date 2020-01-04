<%-- 
    Document   : adminviewnewusers
    Created on : 21 Apr, 2018, 1:14:47 AM
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
        <title>Administrator View - New Users Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
               
        <h1> New User Information: </h1>
        
        <%
//            String userid = request.getParameter("userid");
//            String password = request.getParameter("password");
            
//        if(userid.equals("abc")&&password.equals("abc"))
//        { 
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore?autoReconnect=true&useSSL=false","root","Terence@04");
            Statement stmt = con.createStatement();
            
            
            ResultSet myRs = stmt.executeQuery("select * from customer where newuser='yes';");
		while(myRs.next())
		{
        	out.println(myRs.getString("CUSTOMER_IDENTIFICATION_NUMBER")+" ,"+myRs.getString("CUSTOMER_NAME")+" , "+myRs.getString("CUSTOMER_ADDRESS")
                +" , "+myRs.getString("READING_PREFERENCE")+" , "+myRs.getString("PROFESSION")+" , "+myRs.getString("EMAIL_ID")+" , "+myRs.getString("NEWUSER"));
                out.println("<br>");
                }                  
		          
        }
        
        catch(Exception e)
        {
            out.println(e);
        }
//        }
           
        %>
        
      
    </body>
</html>   

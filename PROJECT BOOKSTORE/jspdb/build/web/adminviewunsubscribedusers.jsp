<%-- 
    Document   : admindataremoval
    Created on : 7 Apr, 2018, 10:29:29 PM
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
        <title>Administrator View - Unsubscribed Customers Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
        <h1> Unsubscribed Users Information</h1>
        
        <h4> User Information: </h4>
        
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
            
            out.println("<h5> CUSID, NAME, ADDRESS, PREFERENCE, PROFESSION, EMAIL, NEWUSER</h5>");
            
            ResultSet myRs = stmt.executeQuery("select * from customer where CUSTOMER_IDENTIFICATION_NUMBER in(select * from DELETE_USER);");
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
        }
           
        %>
        
      
    </body>
</html>   

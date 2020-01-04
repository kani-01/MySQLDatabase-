<%-- 
    Document   : dataretrieval
    Created on : 21 Mar, 2018, 7:54:50 PM
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
        <title>Retrieve Data Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
        <h2>Welcome Customer!</h2>
        
        <h2> Customer Information </h2>
        
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
            
            
            ResultSet myRs = stmt.executeQuery("select * from customerview;");
                if(myRs.wasNull())
                {
                out.println("User does not exist");
                }
                
                out.println("<h5>CUSTID, NAME ,TRAN_ID ,BOOK</h5>");
                           
                while(myRs.next())
		{
        	out.println(myRs.getString("CUSTOMER_IDENTIFICATION_NUMBER")+" ,"+myRs.getString("CUSTOMER_NAME")+" , "
                        +myRs.getString("TRANSACTION_ID")+" , "+myRs.getString("BOOK_ISBN"));
                out.println("<br>");
                }  
                
		
        }
        
        catch(Exception e)
        {
            out.println(e);
        }
        
        }      
        %>
        
        
        <form action="userviewbooks.jsp">
            <pre>
               <h4> Submit Credentials to view Available books in bookstore </h4>
               Enter User ID     : <input type="text" name="userid" placeholder="Enter Username">
            
               Enter password    : <input type="password" name="password" placeholder="Enter Password">
                            
               <input type="submit" value="VIEW AVAILABLE BOOKS">
            </pre>
        </form>
        
        <form action="unsubscribe.jsp">
            <pre align="center">
               Click here to Unsubscribe<a href="unsubscribe.jsp"> Unsubscribe from Bookstore </a
            </pre>
        </form>
        
    </body>
</html>   

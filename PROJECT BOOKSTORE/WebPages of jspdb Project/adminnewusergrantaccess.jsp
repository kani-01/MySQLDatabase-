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
        <title>Admin view NewUser Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
        <h1> NewUser Information</h1>
        
        
        <%
            String userid = request.getParameter("userid");
            String password = request.getParameter("password");
            
        if(userid.equals("abc")&&password.equals("abc"))
        { 
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
        }
           
        %>
        
        <form action="adminnewusergrantaccess1.jsp">
            <pre align="center">
               Enter Customer ID to grant access   : <input type="text" name="cusid" placeholder="Enter cusid">
                            
               <input type="submit" value="SUBMIT">
            </pre>
            
        </form>
        
        
    </body>
</html>

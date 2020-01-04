<%-- 
    Document   : dataremoval
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
        <title>Administrator View unsubscribed users Data Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
               
        <h2> Unsubscribed Customer Information </h2>
        
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
            
            stmt.executeQuery("set sql_safe_updates=0;");
//            boolean myRr = stmt.execute("Update transaction set CUSTOMER_IDENTIFICATION_NUMBER =null where CUSTOMER_IDENTIFICATION_NUMBER in (select * from DELETE_USER);");
//            boolean myRs = stmt.execute("delete from customer where CUSTOMER_IDENTIFICATION_NUMBER in (select * from DELETE_USER);");
            
//            boolean myRq = stmt.execute("delete from delete_user");
             ResultSet myRs = stmt.executeQuery("select * from customer where CUSTOMER_IDENTIFICATION_NUMBER in (select * from DELETE_USER);");
		while(myRs.next())
		{
        	out.println(myRs.getString("CUSTOMER_IDENTIFICATION_NUMBER")+" ,"+myRs.getString("CUSTOMER_NAME")+" , "+myRs.getString("CUSTOMER_ADDRESS")
                +" , "+myRs.getString("READING_PREFERENCE")+" , "+myRs.getString("PROFESSION")+" , "+myRs.getString("EMAIL_ID")+" , "+myRs.getString("NEWUSER"));
                out.println("<br>");
                }

//            while()
//		{
//        	out.println("Users Revoked");
//                }                  
            
		          
        }
        
        catch(Exception e)
        {
            out.println(e);
        }
        }
           
        %>
        
        
        <form action="admindataremovaluser.jsp">
            <pre align="center">
               Enter Customer ID to be revoked   : <input type="text" name="cusid" placeholder="Enter cusid">
                            
               <input type="submit" value="SUBMIT">
            </pre>
            
        </form>
      
    </body>
</html>   

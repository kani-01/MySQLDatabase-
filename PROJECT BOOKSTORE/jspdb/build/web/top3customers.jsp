<%-- 
    Document   : top3customers
    Created on : 22 Apr, 2018, 7:53:02 PM
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
        <title>Administrator Retrieve Top 3 Customers Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
               
        <h2> Top 3 Customer Information </h2>
        
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
            
            
            ResultSet myRs = stmt.executeQuery("select c.CUSTOMER_IDENTIFICATION_NUMBER,CUSTOMER_NAME,EMAIL_ID,sum(AMOUNT_MONEY) as AMOUNT_SPENT "
                    + "from transaction t,customer c where t.CUSTOMER_IDENTIFICATION_NUMBER=c.CUSTOMER_IDENTIFICATION_NUMBER group by c.CUSTOMER_IDENTIFICATION_NUMBER order by amount_spent desc limit 3;");
		while(myRs.next())
		{
        	out.println(myRs.getString("CUSTOMER_IDENTIFICATION_NUMBER")+" ,"+myRs.getString("CUSTOMER_NAME")+" , "+ 
                    myRs.getString("EMAIL_ID")+" , "+myRs.getString("AMOUNT_SPENT"));
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
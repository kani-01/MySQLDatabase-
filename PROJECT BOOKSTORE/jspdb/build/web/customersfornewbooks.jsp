<%-- 
    Document   : customersfornewbooks
    Created on : 22 Apr, 2018, 6:10:34 PM
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
        <title>Potential Customers Page</title>
    </head>
    
    
    <body style ="background-color:#F7DC6F;">
        <h2>Potential Customers Information for New Books</h2>
        
        
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
            
            out.println("<h5> CUS-ID , NAME , MAILID , BOOK , CATEGORY </h5>");
            ResultSet myRs = stmt.executeQuery("select v1.CUSTOMER_IDENTIFICATION_NUMBER,v1.CUSTOMER_NAME,v1.EMAIL_ID,v2.ISBN,v2.SUBJECT_AREA from view1 v1,view2 v2 where v1.READING_PREFERENCE=v2.SUBJECT_AREA order by v2.SUBJECT_AREA ,v1.CUSTOMER_NAME;  ");
		while(myRs.next())
		{
        	out.println(myRs.getString("CUSTOMER_IDENTIFICATION_NUMBER")+" ,"+myRs.getString("CUSTOMER_NAME")+" , "+myRs.getString("EMAIL_ID")
                        +" , "+myRs.getString("ISBN")+" , "+myRs.getString("SUBJECT_AREA"));
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

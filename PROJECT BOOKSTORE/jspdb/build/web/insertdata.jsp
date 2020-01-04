<%-- 
    Document   : insertdata
    Created on : 23 Mar, 2018, 6:55:37 PM
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
        <title>Update Data Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
        <h1>Welcome to Update Data Page!</h1>
        <br>
        <h2>New User Sign-up</h2>
        <%
          
            String custid = request.getParameter("custid");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String preference = request.getParameter("preference");
            String profession = request.getParameter("profession");
            String email = request.getParameter("email");
            String newuser = request.getParameter("newuser");
                                   
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore?autoReconnect=true&useSSL=false","root","Terence@04");
            Statement stmt = con.createStatement();
            
            stmt.executeUpdate("insert into customer values('"+custid+"','"+name+"','"+address+"','"+preference+"','"+profession+"','"+email+"','"+newuser+"')");
//            ResultSet myRs = stmt.executeQuery("select * from instructor order by id;");
//		while(myRs.next())
//		{
//        	out.println(myRs.getString("id")+" , "+myRs.getString("name")+" , "+myRs.getString("dept_name")+" , "+myRs.getString("salary"));
//                }  
//            stmt.executeQuery("grant customerview to '"+custid+"'@'localhost'");
            out.println("Inserted into Database Successfully");
            out.println("<br>");
            out.println("Your request has been submitted to the Admin. Access Will be granted by Admin");
		
        }
        
        catch(Exception e)
        {
            out.println(e);
        }
                
        %>
        
        
    </body>
</html>

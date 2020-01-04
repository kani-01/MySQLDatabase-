<%-- 
    Document   : adminuser
    Created on : 7 Apr, 2018, 4:58:14 PM
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
        <title>Administrator Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
        <h1 align="center">Welcome Administrator</h1>
        <form action="admindataretrieval.jsp">
            <h4 align="center"> Click here to view all Customers </h4>
            <pre align="center">  
        <input type="submit" value="VIEW ALL CUSTOMERS">
            </pre>
        </form>
        
        <form action="adminviewunsubscribedusers.jsp">
            <h4 align="center"> Click here to view Unsubscribed Customers </h4>
            <pre align="center">
            <input type="submit" value="VIEW UNSUBSCRIBED CUSTOMERS">
            </pre>
        </form>
        
        <form action="admindataremoval.jsp">
            <h4 align="center">Submit Admin Credentials here to revoke all Unsubscribed Customers </h4>
            <pre align="center">
            Enter User ID     : <input type="text" name="userid" placeholder="Enter UserID">

            Enter password    : <input type="text" name="password" placeholder="Enter Password">

            <input type="submit" value="SUBMIT">
           </pre>
        </form>
        
        <form action="adminviewnewusers.jsp">
            <h4 align="center">Click here to view New Subscribed Customers </h4>
            <pre align="center">
            <input type="submit" value="VIEW NEW CUSTOMERS">
            </pre>
           </form>
        
        <form action="adminnewusergrantaccess.jsp">
            <h4 align="center">Submit Admin Credentials here to grant permission to all New Subscribed Customers </h4>
            <pre align="center">
            Enter User ID     : <input type="text" name="userid" placeholder="Enter UserID">

            Enter password    : <input type="text" name="password" placeholder="Enter Password">

            <input type="submit" value="SUBMIT">
           </pre>
        </form>
        
        <form action="booksretrieval.jsp">
            <h4 align="center"> Click here to view all Books </h4>
            <pre align="center">  
        <input type="submit" value="VIEW ALL BOOKS IN BOOKSTORE">
            </pre>
        </form>
        
        <form action="customersfornewbooks.jsp">
            <h4 align="center"> Click here to view Potential customers for New Books </h4>
            <pre align="center">  
        <input type="submit" value="VIEW ALL POTENTIAL CUSTOMERS">
            </pre>
        </form>
        
        
        <form action="particularauthor.jsp">
            <h4 align="center"> Click here to view Books published by an author </h4>
            <pre align="center">  
            Enter Author name   : <input type="text" name="author" placeholder="Enter Author Name">

            <input type="submit" value="submit">
            </pre>
        </form>
        
        <form action="particularcategory.jsp">
            <h4 align="center"> Click here to view Books of specific category </h4>
            <pre align="center">  
            Enter Category     : <input type="text" name="category" placeholder="Enter Category">

            <input type="submit" value="submit">
            </pre>
        </form>
        
        <form action="top3customers.jsp">
            <h4 align="center"> Click here to view Bookstore's Top 3 Customers </h4>
            <pre align="center">  
           
            <input type="submit" value="Top3Customers">
            </pre>
        </form>
        
        
    </body>
</html>

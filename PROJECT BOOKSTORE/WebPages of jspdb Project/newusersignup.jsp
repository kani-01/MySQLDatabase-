<%-- 
    Document   : newusersignupjsp
    Created on : 7 Apr, 2018, 1:46:10 AM
    Author     : Ezhil Malliga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NewUser Signup Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
        <h1>Welcome New User</h1>
        
        <form action="insertdata.jsp">
            <pre>
                Enter CustomerID         : <input type="text" name="custid" placeholder="Enter ID">
                
                Enter Name               : <input type="text" name="name" placeholder="Enter Name">

                Enter Address            : <input type="text" name="address" placeholder="City">

                Enter Reading Preference : <input type="text" name="preference" placeholder="preference">

                Enter Profession         : <input type="text" name="profession" placeholder="profession">

                Enter Email-ID           : <input type="text" name="email" placeholder="email">

                New User?                : <input type="text" name="newuser" value="yes" readonly>

                <input type="submit" value="UPDATE">
            </pre>
        </form>
        
        
    </body>
</html>

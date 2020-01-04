<%-- 
    Document   : unsubscribe
    Created on : 7 Apr, 2018, 12:32:06 PM
    Author     : Ezhil Malliga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unsubscribe Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
              
        <form action="revokeuser.jsp">
            <pre>
                Enter UserID to delete: <input type="text" name="cusid" placeholder="Enter CustomerID">
                Enter password        : <input type="text" name="password" placeholder="Enter password">
                <input type="submit" value="Unsubscribe">
            </pre>
        </form>
        
    </body>
</html>

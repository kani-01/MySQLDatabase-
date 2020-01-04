<%-- 
    Document   : index
    Created on : 21 Mar, 2018, 7:02:28 PM
    Author     : Ezhil Malliga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body style ="background-color:#F7DC6F;">
        <!--<p style ="background-color:Tomato;">-->
        <h1 style="color:dodgerblue;" align="center"> Welcome to Bookstore </h1>
        <br>
        <h3 align="center"> Login to your account if you are already a Registered User</h3>
        <form action="dataretrieval.jsp">
            <pre align="center">
               Enter User ID     : <input type="text" name="userid" placeholder="Enter UserID">
            
               Enter password    : <input type="text" name="password" placeholder="Enter Password">
                            
               <input type="submit" value="SUBMIT">
            </pre>
        </form>
      
        <form action="newusersignup.jsp">
            <pre align="center">
                <h3 align="center"> New User? </h3><br>
                Click here to register<a href="newusersignup.jsp"> New-User-Sign-Up </a>
                <br>
            </pre>
        </form>
    <!--</p>-->
        
    <h3 align="center"> Administrator Login</h3>
    
        <form>
            <pre align="center">
               Enter User ID     : <input type="text" name="name" placeholder="Enter Admin Username">
            
               Enter password    : <input type="password" name="pwd" placeholder="Enter Password">
                            
               <input type="submit" value="SUBMIT">
            </pre>
        </form>
    
    
<!--        <form>
            <p align="center">Enter Username :<input type="text" name="name" />
                              Enter Password :<input type="password" name="pwd" />
               <input type="submit" value="submit" /></p>
        </form>-->
        
        <%
            String username = request.getParameter("name");
            String password = request.getParameter("pwd");
            
            if ((username != null)&&(password!=null)) 
            {
                request.setAttribute("name", username);
                request.setAttribute("pwd",password);
                if((username.equalsIgnoreCase("abc"))&&(password.equalsIgnoreCase("abc")))
                  {
                    response.sendRedirect("adminuser.jsp");
                  } 
                else 
                  {
                    out.println("<h4 align=center>Sorry you cant be redirected</h4><br>");
                  }
            }
        %>
        
    
    
    </body>
</html>

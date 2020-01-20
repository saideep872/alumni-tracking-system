<%-- 
    Document   : login
    Created on : 13 Jun, 2019, 6:44:13 PM
    Author     : varshith
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login Page</title>
       
    </head>
    <body>
        <form action="log.jsp" name="form" method="post">
        <table align="center">
                  <tr><td>Email</td>
                        <td><input type="text" name="email" value=""><br></td></tr>
                    <tr><td>password</td>
                        <td><input type="password" name="password"><br></td>
                    </tr>   
        </table>
            <input type="submit" value="submit"/><br>
        New Account?<a href="registration.jsp">Click Here</a>
    </body>
</html>

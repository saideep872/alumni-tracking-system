<%-- 
    Document   : change
    Created on : 16 Jan, 2020, 11:08:12 AM
    Author     : varshith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>change Page</title>
    </head>
    <body>
        <form action="cp.jsp" name="form" method="post">
        <table align="center">
                  <tr><td>Email</td>
                        <td><input type="text" name="email" value=""><br></td></tr>
                    <tr><td>Current password</td>
                        <td><input type="password" name="password"><br></td>
                    <tr><td>new password</td>
                        <td><input type="password" name="password1"><br></td>
                        <tr><td>re-enter new password</td>
                        <td><input type="password" name="password2"><br></td>
                    </tr>   
        </table>
            <input type="submit" value="submit"/><br>
    </body>
</html>

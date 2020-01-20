<%-- 
    Document   : registration
    Created on : 13 Jun, 2019, 6:43:57 PM
    Author     : varshith
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registration Page</title>
    </head>
    <body>
        <form action="reg_action.jsp" name="form" method="post">
            <center><table>
                    <tr><td>Roll NO:</td>
                        <td><input type="number" name="rno" ><br></td></tr>
                    
                   <tr><td>Name:</td>
                        <td><input type="text" name="name" value=""><br></td></tr>
                   
                   <tr><td>Email:</td>
                        <td><input type="text" name="email" value=""><br></td></tr>
                   
                   <tr><td>Password:</td>
                        <td><input type="password" name="password" value=""><br></td></tr>
                   
                   <tr><td>DOB:</td>
                        <td><input type="date" name="dob"><br></td></tr>
                   
                   <tr><td>Moblie NO:</td>
                        <td><input type="number" name="mobile"><br></td></tr> 
                   
                   <tr><td>Address:</td>
                         <td><textarea name="address" rows="4" cols="20"></textarea><br></td></tr>
                   
                    <tr><td>Job Title:</td>
                        <td><input type="text" name="jobtitle" value=""><br></td></tr> 
                    
                    <tr><td>Company Name:</td>
                        <td><input type="text" name="cname" value=""><br></td></tr> 
                    
                    <tr><td>Company Branch:</td>
                        <td><input type="text" name="cbranch" value=""><br></td></tr>
                    
                    <tr><td>Pass out year:</td>
                        <td><input type="number" name="passyear" ><br></td></tr>
                    
                    <tr><td>Gender:</td>
                        <td>male:<input type="radio" name="gender" value="male"/>
                            female:<input type="radio" name="gender" value="female"/></td></tr>
                   
                    <tr><td>Branch:</td>
                        <td><input type="text" name="branch" value=""><br></td></tr>
                  
                    <tr><td>Aadhar:</td>
                        <td><input type="number" name="aadhar" ><br></td></tr>
                    
                    
                               
                </table>
                <input type="submit" value="submit"/></form>
    </body>
</html>

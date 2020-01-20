<%-- 
    Document   : connection
    Created on : 14 Jun, 2019, 5:55:23 PM
    Author     : varshith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>connection Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%@page import="java.io.*" %>
        <%! Connection con;%>
        <% Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","root");
        out.println("connected");
        %>

    </body>
</html>

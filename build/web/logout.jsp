<%-- 
    Document   : logout
    Created on : 16 Jan, 2020, 10:47:09 AM
    Author     : varshith
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>


<script>
    <% session.invalidate(); %>
    window.alert("You have been successfully logout");
    window.location("login.jsp");
</script>
    

</body>
</html>
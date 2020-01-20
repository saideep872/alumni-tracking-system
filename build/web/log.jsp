<%-- 
    Document   : log
    Created on : 15 Jan, 2020, 7:36:14 PM
    Author     : varshith
--%>
<%@include file="connection.jsp" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page  import="java.sql.ResultSet"%>
<%@ page import="java.sql.*" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
     <% 
          String semail=request.getParameter("email");
          String spassword=request.getParameter("password");
          
     try
     {
      
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select EMAIL,PASSWORD from register where EMAIL='"+semail+"'");
           if(rs.next())
           { 
               String u=rs.getString(1);
               String p=rs.getString(2);
    if(u.equals(semail)&&p.equals(spassword))
     {    
session.setAttribute("semail",u);
 
response.sendRedirect("home.jsp"); 

                  }
               else
                
               {
                   %>
               <jsp:forward page="error.jsp"/>
               <%
               }
           }
           else
           {
                  %>
               <jsp:forward page="error1.jsp"/>
               <% 
           }
     }
           
        
        catch(Exception e)
        {
            System.out.println(e);
            e.printStackTrace();
        }
         %>
    </body>
</html>

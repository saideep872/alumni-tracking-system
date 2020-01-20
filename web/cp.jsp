<%-- 
    Document   : cp
    Created on : Jun 19, 2019, 9:12:45 PM
    Author     : Tummala
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
   <%! Connection con;%>
<%
String id=request.getParameter("email");
String o=request.getParameter("password");
String x=request.getParameter("password1");
String y=request.getParameter("password2");
try
{
if(x.equals(y)){
    

Class.forName("com.mysql.jdbc.Driver").newInstance();
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni", "root", "root");
Statement st=con.createStatement();

     ResultSet rs=st.executeQuery("select EMAIL,PASSWORD from register where EMAIL='"+id+"' ");
           if(rs.next())
               {
               String u=rs.getString(1);
               String p=rs.getString(2);
      if(u.equals(id)&&p.equals(o))      
      {   
                            
PreparedStatement ps=con.prepareStatement("UPDATE register SET PASSWORD=? where EMAIL= '"+id+"'");
ps.setString(1, x);
int i=ps.executeUpdate();

if(i>0){  %>
           <script>
           window.alert("Data is entered succesfully!........");
           window.alert("Login with new password!.....");
           window.location("login.jsp");
            </script>
        <% } 
   else{
       %>
           <script>
           window.alert("Data cant be added..");
           window.location("change.jsp");
            </script>
        <% }
}
      else{
                  %>
           <script>
           window.alert("Passwords are not matching!........");
           window.location("cp.jsp");
            </script>
        <%
        }
               }
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();                                                                                                                                                                                                                                                                           
}
%>

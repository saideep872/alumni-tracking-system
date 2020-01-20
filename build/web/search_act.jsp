<%-- 
    Document   : serach_act
    Created on : 15 Jan, 2020, 8:03:56 PM
    Author     : varshith
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page  import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "alumni";
String userid = "root";
String password = "root";
String roll_no=request.getParameter("roll_no");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>
<h1>Search Data</h1>
<table border="1">
<tr>
<td>Name</td>
<td>Email Id</td>
<td>Roll No</td>
<td>DOB</td>
<td>mobile no</td>
<td>Address</td>
<td>job title</td>
<td>company name</td>
<td>company branch</td>
<td>pass out year</td>
<td>gender</td>
<td>branch</td>
<td>aadhar</td>
</tr>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from register where RNO='"+roll_no+"' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("NAME") %></td>
<td><%=resultSet.getString("EMAIL") %></td>
<td><%=resultSet.getString("RNO") %></td>
<td><%=resultSet.getString("DOB") %></td>
<td><%=resultSet.getString("MOBILE") %></td>
<td><%=resultSet.getString("ADDRESS") %></td>
<td><%=resultSet.getString("JOBTITLE") %></td>
<td><%=resultSet.getString("CNAME") %></td>
<td><%=resultSet.getString("CBRANCH") %></td>
<td><%=resultSet.getString("PASSYEAR") %></td>
<td><%=resultSet.getString("GENDER") %></td>
<td><%=resultSet.getString("BRANCH") %></td>
<td><%=resultSet.getString("AADHAR") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>    
</body>
</html>

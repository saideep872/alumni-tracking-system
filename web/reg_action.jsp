
<%@include file="connection.jsp" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page  import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>R actin Page</title>
    </head>
    <body>
  
        
        <%
            try{
            String srno = request.getParameter("rno");
            String sname = request.getParameter("name");
            String semail = request.getParameter("email");
            String spassword = request.getParameter("password");
            String sdob = request.getParameter("dob");
            String smobile = request.getParameter("mobile");
            String saddress = request.getParameter("address");

            String sjobtitle = request.getParameter("jobtitle");
            String scname = request.getParameter("cname");
            String scbranch = request.getParameter("cbranch");
            String spassyear = request.getParameter("passyear");
            String sgender = request.getParameter("gender");
            String sbranch = request.getParameter("branch");

            String saadhar = request.getParameter("aadhar");

/*
            Statement st = con.createStatement();

            int i = st.executeUpdate("insert into register(RNO,NAME,EMAIL,PASSWORD,DOB,MOBILE,ADDRESS,JOBTITLE,CNAME,CBRANCH,PASSYEAR,GENDER,BRANCH,AADHAR) values ('"+srno+"','" + sname + "','" + semail + "','" + spassword + "','" + sdob + "','" + smobile + "','" + saddress + "','" + sjobtitle + "','" + scname + "','" + scbranch + "','" + spassyear + "','" + sgender + "','" + sbranch + "','" + saadhar + "')");
            out.println("successful");
*/
            PreparedStatement  ps=con.prepareStatement("insert into register(RNO,NAME,EMAIL,PASSWORD,DOB,MOBILE,ADDRESS,JOBTITLE,CNAME,CBRANCH,PASSYEAR,GENDER,BRANCH,AADHAR) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
             ps.setString(1,srno);
             ps.setString(2,sname);
             ps.setString(3,semail);
             ps.setString(4,spassword);
             ps.setString(5,sdob);
             ps.setString(6,smobile);
             ps.setString(7,saddress);
             ps.setString(8,sjobtitle);
             ps.setString(9,scname);
             ps.setString(10,scbranch);
             ps.setString(11,spassyear);
             ps.setString(12,sgender);
             ps.setString(13,sbranch);
             ps.setString(14,saadhar);
            ps.executeUpdate();  
             System.out.println(" records inserted");  
ps.close();


            }
            catch(Exception e){
            e.printStackTrace();
            }
             
        %>  


    </body>
</html>

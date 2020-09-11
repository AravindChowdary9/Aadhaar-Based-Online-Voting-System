<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www/w3/org/TR/html4/loose.dtd>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=request.getParameter("name");
            String gender=request.getParameter("gender");
            String regis=request.getParameter("type");
            String add=request.getParameter("address");
            String dob=request.getParameter("date");
            String email=request.getParameter("email");
            String password=request.getParameter("pwd");
            String contact=request.getParameter("contact");
            String aadhar=request.getParameter("aadhar");
            String status="Pending";
            PreparedStatement ps=con.prepareStatement("INSERT INTO registration VALUES(?,?,?,?,?,?,?,?,?,?)");
           
            ps.setString(1,name);
            ps.setString(2,gender);
            ps.setString(3,regis);
            ps.setString(4,add);
            ps.setString(5,dob);
            ps.setString(6,email);
            ps.setString(7,password);
            ps.setString(8,contact);
            ps.setString(9,aadhar);
            ps.setString(10,status);
            ps.executeUpdate();
           out.println("Inserted Successfully");
        %>
    </body>
</html>

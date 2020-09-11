<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        String uid=request.getParameter("aadhar_no");
            Statement s=con.createStatement();
            s.executeUpdate("UPDATE registration set status='ACCEPTED' where aadhar_no='"+uid+"'");
            response.sendRedirect("view.jsp?msg=accepted");
        %>
    </body>
</html>

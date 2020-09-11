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
            String uid=request.getParameter("id");
            Statement s=con.createStatement();
            s.executeUpdate("DELETE from registration where aadhar_no='"+uid+"'");
            out.println("Deleted Successfully");
            response.sendRedirect("view.jsp");
            %>
            
    </body>
</html>

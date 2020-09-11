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
        Statement st=con.createStatement();
        String k=(String)session.getAttribute("id");    
       
        String par=request.getParameter("party");
        
        PreparedStatement ps=con.prepareStatement("INSERT INTO vote VALUES(?,?)");
            
            ps.setString(1,k);
            ps.setString(2,par);
            ps.executeUpdate();
           out.println("Voted Successfully");
          
          
        
        %>
       
    </body>
</html>

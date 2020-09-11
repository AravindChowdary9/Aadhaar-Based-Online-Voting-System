<%@include file="CSS3 Menu2.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br>
        <br>
    <center><form action="vote_action.jsp">
            Aadhar :  <%
                     String k=(String)session.getAttribute("id");    
                      out.print(k);
                    %><br>
            <br/>
            Party     :   <select name="party">
                <option>TDP</option>
                <option>TRS</option>
                <option>YCP</option>
                <option>MIM</option>
                <option>CONG</option>
                <option>BJP</option>
                <option>CPI/CPM</option>
                <option>JSP</option>
            </select>
            <input type="submit" value="Submit">
            <br/>
            <br/>
            
            
        </form></center>
    </body>
</html>

<%@include file="CSS3 Menu3.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .id{
                font-family: sans-serif;
                font-size: 30px;
                text-align: center;
            }
            .ed{
                text-align: center;
                font-size: 20px;
                
            }
            .body{
                background-image:url("barackobama.jpg");
            }
        </style>
    </head>
    <body class="body">
        <p class="id" style="color:whitesmoke">
            Welcome to Political Page 
        </p>
        <p style="color:whitesmoke" class="ed">
            <%
                String k=(String)session.getAttribute("id");
                %>
                
                Welcome   <%=k%>
        </p>
    </body>
</html>

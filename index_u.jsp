<%@include file="CSS3 Menu2.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .id{
                font-size: 40px;
                color: background;
                text-align: center;
                font-style: italic;
                font-family: sans-serif;
                
               }
               .body{
                   background-image: url("wallpaper.jpg");
                   background-size: 100%;
               }
               .wel{
                   font-size: 20px;
                   text-align: center;
                }
        </style>
    </head>
    <body class="body">
        
        <p class="wel" style="color:whitesmoke"><%
                String k=(String)session.getAttribute("id");
                %>
                
                Welcome     <%=k%>
        </p>
        <p class="id" style="color:black">
            Welcome to user page.
        </p>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
    </body>
</html>

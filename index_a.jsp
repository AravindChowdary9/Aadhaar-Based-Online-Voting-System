<%@include file="CSS3 Menu1.html"%>
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
        
        <p class="wel" style="color:black">
                 <%
                String k=(String)session.getAttribute("id");
                %>
                
                Welcome   <%=k%>
            </p>
            <p class="id" style="color:whitesmoke">
                Welcome To Admin Page                               
            </p>
            
                
                
        
    </body>
</html>

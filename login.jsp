<%@include file="CSS3 Menu.html" %>
<html>
    <head>
        <title>Login Page</title>
    </head>
    <body>
    <center><p style="color: whitesmoke"><em><strong>Welcome to Login Page of the Website...</strong></em></p></center>
        <form action="logindb.jsp">
            <table align="center" style="color: whitesmoke">
                <tr>
                    <td>
                        Enter Aadhar no: 
                    </td>
                    <td>
                        <input type="text" placeholder="Aadhar_no" name="aadhar"/>
                    </td>
                </tr>
                <tr>
                   <td>
                       Enter password
                    </td>
                    <td>
                      <input type="password" placeholder="Password" name="pwd"/>
                    </td> 
                </tr>
                <tr>
                    <td>
                        Please specify the type of registration
                    </td>
                    <td>
                        <input type="radio" name="type" value="user" >User
                        <input type="radio" name="type" value="admin" >Admin
                        <input type="radio" name="type" value="party"> Party 
                    </td>
                </tr>
                 <tr>
                <td>
                    <input type = "submit" value = "Login" />
                </td>
            </tr>
            </table>
        </form>
    </body>
</html>
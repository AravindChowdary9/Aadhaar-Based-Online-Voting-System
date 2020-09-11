<%@include file="CSS3 Menu3.html" %>
<html>
	<head>
        <title>Registration Form</title>
        
	</head>
    <body>
    <center><p style="color: whitesmoke"><strong><em>Welcome to Registration Page</em></strong></p></center>
    <form action="update.jsp">
            <table align="center" style="color: whitesmoke">
             <tr>   
            <td> 
                 Enter User Name:
            </td>
            <td>
                <input type="text" placeholder="Name" name="name" size="25"/>
            </td>
            </tr>
            <tr>
                <td>
                    Please click the type of gender:
                </td>
                <td>
                    <input type="radio" name="gender" value="male">Male
                    <input type="radio" name="gender" value="female">Female
                    <input type="radio" name="gender" value="other"> Other Category
            </td>
            </tr>
            <tr>
                <td> 
                    Please click the type of registration:                  
                </td>
                <td>
                 <input type="radio" name="type" value="user" >Party
                 </td>
            </tr>
            <tr>
                <td> 
                    Enter Address    :
                </td>
                <td>
                    <input type="text" placeholder="Address" name="address" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                        Enter Date of Birth :
                </td>
                <td>
                    <input type="date" name="date"/>
                </td>
            </tr>  
            <tr>
                <td>
                    Enter E-Mail address: 
                </td>
                <td>
                    <input type="text" placeholder="Email" name="email" size="25"/>
                </td>
            </tr>
            <tr>
                <td>
                    Enter Password :
                </td>
                <td>
                    <input type="password" placeholder="Password" name="pwd" size="10" />
                </td>
            </tr>
            <tr>
                <td>
                    Contact No: 
                </td>
                <td>
                    <input type="text" placeholder="Contact" name="contact" size="10"/>
                </td>
            </tr>
            <tr>
                <td>
                    Aadhar Number:
                </td>
                <td>
                    <%
                     String k=(String)session.getAttribute("id");    
                      out.print(k);
                    %>
                   
                </td>
            </tr>
            <tr>
                <td>
                 <input type = "submit" value = "Submit Form" />
                 
                 <input type = "reset" value = "Reset Form" />
                </td>
            </tr>
           </table>
        </form>
    </body>
</html>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="2">
    <tr> <th>User Name</th>
        <th>Gender</th>
        <th>Type</th>
        <th>Address</th>
        <th>DOB</th>
        <th>Email id</th>
        <th>Password</th>
        <th>Contact no</th>
        <th>Aadhar no</th> 
    </tr>
     <tr>
        <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from registration where status!='ACCEPTED'");
            while(rs.next())
            {
                %>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(9)%></td>
                <td><a href="update_status.jsp?aadhar_no=<%=rs.getString(9)%>">Accept</a></td>
                <td><a href="delete.jsp?id=<%=rs.getString(9)%>">Reject</a></td>
    </tr>
            <%           
            }%>
            <tr>
                <td>
                    
                </td>
            </tr>
      </table>
    </body>
</html>
<%@include file="connection.jsp"  %>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.*" %>
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
            String id=request.getParameter("aadhar");
            String psd=request.getParameter("pwd");
            String typ=request.getParameter("type");
           
            session.setAttribute("id", id);
            
            
            ResultSet rs=st.executeQuery("select aadhar_no, password, type from registration where aadhar_no='"+id+"' and status='ACCEPTED'");
            if(rs.next())
            {
                String u=rs.getString(1);
                String p=rs.getString(2);
                String t=rs.getString(3);
                if(p.equals(psd)&&u.equals(id)&&t.equals(typ))
                {
                   
                    if(t.equals("admin"))
                            {
                                response.sendRedirect("index_a.jsp?msg=accepted");
                            }
                    else if(t.equals("user"))
                    {
                                response.sendRedirect("index_u.jsp?msg=accepted");
                        }
                    else{
                                response.sendRedirect("index_p.jsp?msg=accepted");
                    }
                    
                }
                else
                {
                    
                   response.sendRedirect("error.jsp");
                    
                }
            }
            else
            {
                   response.sendRedirect("errorp.jsp");
            }
            %>
    </body>
</html>

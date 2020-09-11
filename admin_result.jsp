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
    String id=(String)session.getAttribute("id");
    %>
    <marquee><h3>Welcome <%=id%></h3></marquee>
       <center>
            <table border="2">
                <tr><td>TDP</td>
        <%
            String name="tdp";
            Statement st=con.createStatement();
            ResultSet rs = st.executeQuery("SELECT COUNT(PARTY) FROM VOTE where PARTY='"+name+"'");
            while(rs.next())
            {
        %>
        <td>
            <%=rs.getString(1)%></td></tr>
        <%}%>
        <tr><td>TRS</td>
        <%
            String name2="trs";
            Statement st2=con.createStatement();
            ResultSet rs2 = st2.executeQuery("SELECT COUNT(PARTY) FROM VOTE where PARTY='"+name2+"'");
            while(rs2.next())
            {
        %>
        <td><%=rs2.getString(1)%></td></tr>
        <%}%>
    <tr><td>YCP</td>
        <%
            String name3="ycp";
            Statement st3=con.createStatement();
            ResultSet rs3 = st3.executeQuery("SELECT COUNT(PARTY) FROM VOTE where PARTY='"+name3+"'");
            while(rs3.next())
            {
        %>
        <td> <%=rs3.getString(1)%></td></tr>
        <%}%>
        
    <tr><td>MIM</td>
        <%
            String name4="mim";
            Statement st4=con.createStatement();
            ResultSet rs4 = st4.executeQuery("SELECT COUNT(PARTY) FROM VOTE where PARTY='"+name4+"'");
            while(rs4.next())
            {
        %>
        <td> <%=rs4.getString(1)%></td></tr>
        <%}%>
    
    <tr><td>CONG</td>
        <%
            String name5="congress";
            Statement st5=con.createStatement();
            ResultSet rs5 = st5.executeQuery("SELECT COUNT(PARTY) FROM VOTE where PARTY='"+name5+"'");
            while(rs5.next())
            {
        %>
        <td> <%=rs5.getString(1)%></td></tr>
        <%}%>
     <tr><td>BJP</td>
        <%
            String name6="bjp";
            Statement st6=con.createStatement();
            ResultSet rs6 = st6.executeQuery("SELECT COUNT(PARTY) FROM VOTE where PARTY='"+name5+"'");
            while(rs6.next())
            {
        %>
        <td> <%=rs6.getString(1)%></td></tr>
        <%}%>
     <tr><td>CPI/CPM</td>
        <%
            String name7="cpi/cpm";
            Statement st7=con.createStatement();
            ResultSet rs7 = st7.executeQuery("SELECT COUNT(PARTY) FROM VOTE where PARTY='"+name5+"'");
            while(rs7.next())
            {
        %>
        <td> <%=rs7.getString(1)%></td></tr>
        <%}%>
     <tr><td>JSP</td>
        <%
            String name8="bjp";
            Statement st8=con.createStatement();
            ResultSet rs8 = st8.executeQuery("SELECT COUNT(PARTY) FROM VOTE where PARTY='"+name5+"'");
            while(rs8.next())
            {
        %>
        <td> <%=rs8.getString(1)%></td></tr>
        <%}%>
            </table></center>.
             
            
            
            
        <br><br>
        
    </body>
</html>

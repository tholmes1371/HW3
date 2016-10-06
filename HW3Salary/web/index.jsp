<%-- 
    Document   : index
    Created on : Oct 6, 2016, 9:22:41 AM
    Author     : Tom Holmes
--%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>"
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Salary Calculator Page</title>
    </head>
    <%
        
        Date today = new Date();
        
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyy");
        String ddMMyyyToday = dateFormat.format(today);
        
        
    %>
    <body>
        <h1>Hello World!</h1>
        <p> Today is: <%= today %> </p>
        <p> Today is: <%= ddMMyyyToday %> </p>
        <p> Test with VSC! </p>
    </body>
</html>

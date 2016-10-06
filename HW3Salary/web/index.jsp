<%-- 
    Document   : index
    Created on : Oct 6, 2016, 9:22:41 AM
    Author     : Tom Holmes
--%>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Salary Calculator Page</title>
    </head>
    <%
        Date today = new Date();
        


    %>
    <body>
        <h1>Hello World!</h1>
        <p> Today is: <%= today %> </p>
    </body>
</html>

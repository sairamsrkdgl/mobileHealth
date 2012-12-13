<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<head>
<title>MOBILE HEALTH :: SESSION EXPIRED</title>
</head>
<%@include file="head.html"%>
<%
session.invalidate();
%>
<i><b><p>Session got expired, Please login again!!!!!</p></b></i></br>
<a href="login.jsp">Login</a></br</br></br>

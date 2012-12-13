<%@page contentType="text/html" pageEncoding="windows-1252"%>

<!DOCTYPE html>
<html>
    <head>
        <META HTTP-EQUIV="refresh" CONTENT="<%= session.getMaxInactiveInterval() %>; sexpire.jsp" />
	 <title>MOBILE HEALTH :: ADMINISTRATOR PAGE</title>
    </head>
    <body>
     <%@include file="head.html"%><br/>
     <h2>WELCOME TO ADMINISTRATOR'S HOME PAGE</h2><br/>
     <div align="right"><a href="logout.jsp">Logout</a></div><br/>
     <%@include file="adminmenu.html" %>
    &nbsp;&nbsp;
    </body>
</html>

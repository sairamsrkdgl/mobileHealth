<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MOBILE HEALTH :: DOCTORS HOME PAGE </title>
        <link rel="stylesheet" href="styles.css"/>
    </head>
    <body>
    <%@include file="head.html"%>
<%
out.print("Welcome:"+session.getAttribute("sUserName"));
%>
<div align="right"><a href="logout.jsp">Logout</a></div><br/>
<%@include file="doctormenu.html"%>
    <form action="getpatientdetails.jsp">
        <!-- Enter patient id : 
         <input type=text size=10 name="pid" />
         <input type=submit value="Get Details"/> -->
    </form>
    
    <p/>
    &nbsp; &nbsp;
    <%--
    This example uses JSTL, uncomment the taglib directive above.
    To test, display the page like this: index.jsp?sayHello=true&name=Murphy
    --%>
    <%--
    <c:if test="${param.sayHello}">
        <!-- Let's welcome the user ${param.name} -->
        Hello ${param.name}!
    </c:if>
    --%>
    
    </body>
</html>

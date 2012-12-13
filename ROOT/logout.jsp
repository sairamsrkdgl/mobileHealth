<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<%
  session.invalidate();
  response.sendRedirect("login.jsp");
%>
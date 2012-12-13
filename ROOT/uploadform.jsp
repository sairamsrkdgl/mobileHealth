<%-- 
    Document   : uploadform
    Created on : Nov 29, 2012, 7:44:27 PM
    Author     : anilk
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>>MOBILE HEALTH :: DOCUMENT UPLOAD FORM</title>
    </head>
    <body>
         <%@include file="head.html"%>
          <br/><br/>
      <%@include file="patientmenu.html"%><br/>
      <form  action="upload.jsp"  method="post"  enctype="multipart/form-data">
        Select a Document <input type="file" name="file1">
        <input type=submit value="Upload">
        </form>
    </body>
</html>

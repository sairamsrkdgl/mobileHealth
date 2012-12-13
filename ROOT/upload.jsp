<%@page import="org.apache.commons.fileupload.*,java.util.*,java.io.*"%>
<jsp:useBean class="mhealth.Patient" scope="page" id="patient" />
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>MOBILE HEALTH :: DOCUMENT UPLOAD</title>
    </head>
    <body>
        <%@include file="head.html"%><br/><br/>
        <%@include file="patientmenu.html"%><br/>
<%
   // JSP to handle  uploading
   String pid1 = (String) session.getAttribute("patient_id");
   
   // Create a new file upload handler 
   DiskFileUpload upload = new DiskFileUpload();
   // parse request
   List items = upload.parseRequest(request);
   // get uploaded file 
   FileItem  file = (FileItem) items.get(0);
   String source = file.getName();
   File outfile = new File("/var/lib/tomcat6/webapps/ROOT/docs/"+ source);
   file.write(outfile);
   
   String aid_id = patient.update3(source,pid1);
           if (aid_id == null)
            out.println("Sorry! Document not uploaded!");
            else
            out.println("Document Uploaded succesfully!!!");
            %>
    </body>
</html>
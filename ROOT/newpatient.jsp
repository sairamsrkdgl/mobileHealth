<%@page contentType="text/html"%>
<%@page import="org.apache.commons.fileupload.*,java.util.*,java.io.*"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   
<jsp:useBean class="mhealth.Patient" scope="page" id="patient" />
<jsp:setProperty name="patient" property="*" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MOBILE HEALTH :: PATIENT REGISTRATION</title>
    </head>
    <body>
    <%@include file="head.html"%>
    <h2>Registration of Patient</h2>
    <%
        
    %>
        <h3> 
            <%
           
            
           
            DiskFileUpload upload = new DiskFileUpload();
            List items = upload.parseRequest(request);
            
            FileItem pname_f = (FileItem) items.get(0);
            String pname = pname_f.getString();
            
            FileItem age_f = (FileItem) items.get(1);
            String age = age_f.getString();
            
            FileItem gender_f = (FileItem) items.get(2);
            String gender = gender_f.getString();
            
            FileItem pcontactno_f = (FileItem) items.get(3);
            String pcontactno = pcontactno_f.getString();
            
            FileItem paddress_f = (FileItem) items.get(4);
            String paddress = paddress_f.getString();
            
            
            FileItem patientp_f = (FileItem) items.get(5);
            String patientp = patientp_f.getString();
            
            FileItem patientip_f = (FileItem) items.get(6);
            String patientip = patientip_f.getString();
            
           
            
            
            FileItem file1 = (FileItem) items.get(7);
            String selecteddoctor = file1.getString();
            
            FileItem file = (FileItem) items.get(8);
            String source = file.getName();
            
            
           
            File outfile = new File("/var/lib/tomcat6/webapps/ROOT/images/" + source);
            file.write(outfile);
            String patient_id = patient.add(pname,age,gender,paddress,pcontactno,selecteddoctor,patientp,patientip,source);
            String aid_id = patient.patientadd(selecteddoctor);
            
            
            if ( patient_id == null || aid_id == null)
            out.println("Sorry! Could not register a patient!");
            else
            out.println("Details are added successfully. Registred  Id : " + patient_id);
            %>
        </h3>
        <%@include file="footer1.html"%>
    </body>
   </html>
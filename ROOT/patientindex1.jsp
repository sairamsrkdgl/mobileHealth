<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="mhealth.*,java.util.*,java.lang.String"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<META HTTP-EQUIV="refresh" CONTENT="<%= session.getMaxInactiveInterval() %>; sexpire.jsp" />
        <titlePatient Health Details</title>
    </head>
    <body>
    <%@include file="head.html"%>
    <h2>Patient Health Details</h2><br/>
    <%
    if(session.getAttribute("sUserName")!=null)
    { 
     out.print("Welcome:"+session.getAttribute("sUserName"));
    }else{
    out.print("Welcome Admin");
    }
    %><br/>
    <%@include file="doctormenu1.html"%><br/>
    <form action="">
     <!--    Name : <input type="text" size="10" name="pname_f" value="${param.pname}">
       Age : <input type="text" size="5" name="fromage" value="${param.fromage}">
        To <input type="text" size="5" name="toage" value="${param.toage}">  -->
       <!-- Gender :
        <select name="gender">
            <option value="a" ${param.gender =="a"? "SELECTED" :""}>All</option>    
            <option value="m" ${param.gender =="m"? "SELECTED" :""}>Male</option>    
            <option value="f" ${param.gender =="f"? "SELECTED" :""}>Female</option>                
        </select>
        <input type="submit" value="Search"> -->
    </form>
    
    <%
     String patientID = request.getParameter("pid");
     String pid = (String) session.getAttribute("patient_id");
     session.setAttribute("patientID", patientID);

             //String pname = request.getParameter("pname_f");
     // do only when parameters are present
    // if ( pname != null ) {
   //         String fromage = request.getParameter("fromage");
   //       String toage = request.getParameter("toage");
       //  String gender = request.getParameter("gender");
         ArrayList<Patient> patients = Patient.getPatients1(patientID);
         if ( patients.size() == 0 )
             out.println("<h3>Sorry! No Records Found!</h3>");
         else {
       %>
       <table border=1 width="100%">
          <tr>
          <th>Date</th>
          <th>Timestamp(HH:MM:SS)</th>
          <th>Heart Rate</th>
          <!--<th>Gender </th>
          <th>Age </th>
          <th>Address</th> -->
          <th>Temperature</th>
          <th>SpO2</th>
          <th>Blood Sugar</th>
          <th>Blood Pressure</th>
          <th>Description</th>
         <!-- <th>Edit description</th -->
       </tr>
       <%
         for ( Patient p : patients) {
              out.println( "<tr>");
              out.println("<td  align=center>" + p.getHdate() + "</td>");
              out.println("<td align=center  >" + p.getBgroup() + "</td>");
              out.println("<td  align=center>" + p.getHrate() + "</td>");
              out.println("<td align=center>" + p.getBtemp() + "</td>");
              out.println("<td align=center>" + p.getSpo2() + "</td>");
              out.println("<td  align=center>" + p.getGlevel() + "</td>");
              out.println("<td  align=center>" + p.getBpressure() + "</td>");
              out.println("<td  align=center>" + p.getDescription());
              out.println("<a href=editdescriptiondetails.jsp?hid=" + p.getDaddress() + ">click</a>" + "</td>"); 
             
              out.println("</tr>");
         } //for
         out.println("</table>");
       }// else
      
    %>
    </body>
</html>

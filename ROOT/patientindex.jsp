<%@page contentType="text/html"%>
<META HTTP-EQUIV="refresh" CONTENT="<%= session.getMaxInactiveInterval() %>; sexpire.jsp" />
<%@page pageEncoding="UTF-8"%>
<%@page import="mhealth.*,java.util.*,java.lang.String,javax.servlet.RequestDispatcher"%>
<%@page contentType="text/html" import="java.util.*,mhealth.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MOBILE HEALTH :: PATIENT HOME PAGE </title>
        

    </head>
    <%@include file="head.html"%>
    <body>
        
    <h2>Personal Details</h2><p align="right"></p>
  
    <%
     String mysession = (String) session.getAttribute("patient_id");   
    %> <div align="right"><a href="logout.jsp">Logout</a></div><br/>
    <%
       mhealth.Patient p1 = mhealth.Patient.getAllDetails(mysession);
      %>
    <%@include file="patientmenu.html"%><br/><br/>
       Welcome :<b>  <%=p1.getGender().equals("m") ? "Mr." : "Ms/Mrs/Miss."%> <% out.print(p1.getPname()); %> </b>
      <table width="1000">
          <tr>
              <td>Personal ID:<b>  <%=mysession %></b></td>
              <td rowspan="5"><image src="images/<%=p1.getHid()%>" width="130" height="150"><br/></td>
          </tr>
          <tr>
              <td>Gender:<b>  <%=p1.getGender().equals("m") ? "Male" : "Female"%></b></td>
          </tr>
          <tr><td>Age:<b> <%=p1.getAge()%></b></td></tr>
          <tr><td>Address:<b> <%=p1.getPaddress()%></b></td></tr>
          <tr><td>Contact No:<b> <%=p1.getPcontactno()%></b></td></tr>
          <tr><td>Camera IP: <b><%=p1.getPatientip()%></b></td></tr>
      </table>
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
     //String pname = request.getParameter("pname_f");
     // do only when parameters are present
    // if ( pname != null ) {
   //         String fromage = request.getParameter("fromage");
   //       String toage = request.getParameter("toage");
       //  String gender = request.getParameter("gender");
         ArrayList<Patient> patients = Patient.getPatients2(pid);
         if ( patients.size() == 0 )
             out.println("<h3>Sorry! No HealthParameter Records Found!</h3>");
         else {
       %>
       <h2>Health Parameters</h2>
       </br>
       <table border=1 width="100%">
          <tr>
          <th>Date</th>
          <th>Timestamp(HH:MM:SS)</th>
          <th>Heart Rate</th>
          <th>Heart Pulse</th>
          <!--<th>Gender </th>
          <th>Age </th>
          <th>Address</th> -->
          <th>Temperature</th>
            <th>SpO2</th>
          <th>Blood Sugar</th>
          <th>Blood Pressure</th>
        
          <th>Description</th>
       </tr>
       <%
         for ( Patient p : patients) {
              out.println( "<tr>");
              out.println("<td align=center >" + p.getHdate() + "</td>");
              out.println("<td align=center >" + p.getBgroup() + "</td>");
              out.println("<td align=center >" + p.getHrate() + "</td>");
              out.println("<td align=center >" + p.getHpulse() + "</td>");
              out.println("<td align=center >" + p.getBtemp() + "</td>");
              out.println("<td align=center >" + p.getSpo2() + "</td>");
              out.println("<td align=center >" + p.getGlevel() + "</td>");
              out.println("<td align=center >" + p.getBpressure() + "</td>");
              out.println("<td>" + p.getDescription() + "</td>");
              
             
              out.println("</tr>");
         } //for
         out.println("</table>");
       }// else
      
    %>
    </br>
    
    
   </body>
</html>

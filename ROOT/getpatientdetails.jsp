<META HTTP-EQUIV="refresh" CONTENT="<%= session.getMaxInactiveInterval() %>; sexpire.jsp" />
<%@page contentType="text/html" import="java.util.*,mhealth.*" %>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MOBILE HEALTH :: PATIENT DETAILS </title>
    </head>
    <body>
    <%@include file="head.html"%><br/>
    <h2>Patient Details </h2><br/>
      <%@include file="adminmenu1.html" %><br/>
    <%
    String patient_id = request.getParameter("pid");
    session.setAttribute("pid", patient_id);
    mhealth.Patient p = mhealth.Patient.getAllDetails(patient_id);
    if ( p == null) {
         out.println("<h3>Sorry! Information Could Not Be Retrieved!</h3>");
    }
    else {
    // display details of patient  
    %>
        <table width="75%">
        <tr>
            <td valign="top" width="40%">
                <table width="850">
                    <tr>
                        <td>Patient Name </td>
                        <td><%= p.getPname()%></td>
                        <td rowspan=6><image src="images/<%=p.getHid()%>" width="120" height="150"><br/></td>
                    </tr>
                    <tr>
                        <td>Gender </td>
                        <td><%= p.getGender().equals("m") ? "Male" : "Female" %></td>
                    </tr>                   
                    <tr>
                        <td>Age: </td>
                        <td><%= p.getAge()%></td>
                    </tr>
                    <tr>
                        <td>Address </td>
                        <td><%= p.getPaddress()%></td>
                    </tr>
                    <tr>
                        <td>Contact No: </td>
                        <td><%= p.getPcontactno()%></td>
                    </tr
                    <tr>
                        <td>Camera IP: </td>
                        <td><%= p.getPatientip()%></td>
                    </tr>
                    
                </table>
            </td>
            <td >
             <a href="updatepatient.jsp">Update Patient Details</a> 
            </td>
          </tr>
         </table>   
                    
                    <%
     }
     %> 
    </body>

</html>

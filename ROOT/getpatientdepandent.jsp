<META HTTP-EQUIV="refresh" CONTENT="<%= session.getMaxInactiveInterval() %>; sexpire.jsp" />
<%@page contentType="text/html" import="java.util.*,mhealth.*" %>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MOBILE HEALTH :: PATIENT DEPENDENT DETAILS </title>
    </head>
    <body>
        <%@include file="head.html"%>
    <h2>Patient Dependent details </h2><br/><br/>
    <%@include file="doctormenu1.html"%><br/>
    <%
    String patient_id = request.getParameter("pid");
    // session.setAttribute("pid",patient_id);
    mhealth.Patient p = mhealth.Patient.getAllDDetails(patient_id);
    if ( p == null) {
         out.println("<h3>Sorry! Dependent Information Could Not Be Retrieved!</h3>");
    }
    else {
    // display details of patient  
    %>
    <br/>
    
    <table >
        <tr>
            <td valign="top" >
                <table>
                    
                    <tr><td>Patient Relative</td>
                        <td><%= p.getPname() %></td>
                    </tr>
                    <tr>
                        <td>Relative Address</td>
                        <td><%= p.getPaddress()%></td>
                    </tr>          
                    <tr>
                        <td>Relative Contact</td>
                        <td><%= p.getPcontactno()%></td>
                    </tr>
                </table>
            </td>
          </tr>
         </table>        
                    <%
     }
     %> 
    </body>
</html>

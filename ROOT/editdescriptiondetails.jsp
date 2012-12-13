
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<META HTTP-EQUIV="refresh" CONTENT="<%= session.getMaxInactiveInterval() %>; sexpire.jsp" />
<%@page import="mhealth.*,java.util.*,java.lang.String"%>
<%@page contentType="text/html" import="java.util.*,mhealth.*" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>MOBILE HEALTH :: DOCTOR DESCRIPTION EDITOR</title>
    </head>
    <body>
        <%@ include file="head.html"%>  
        
        <h4>Update Description</h4> <br>
        
        <% 
        
          String hid = request.getParameter("hid");
          session.setAttribute("hid",hid);
          Patient p = Patient.getHparametersDetails(hid);
          String patientidentity = p.getPatientp();
          String blood = p.getBgroup();
          String hrate = p.getHrate();
          String btemp = p.getBtemp();
          String glevel = p.getGlevel();
          String bpressure = p.getBpressure();
          String desc = p.getDescription();
         %>
      <form action="updatedescription.jsp" method="post" name="edit">
     
          <table>
            <tr>
                <td>PID</td>
                <td><%=patientidentity%> </td>
            </tr>
              <tr>
                <td>Blood Group </td>
                <td><input type=text readonly size=20 name=bloodgroup1 value='<%= blood %>' </td>
              </tr>
            <tr>
                <td>Heart Rate </td>
                <td><input type=text readonly size=20 name=heartrate1 value='<%=hrate%>' </td>
            </tr>
            <tr>
                <td>Body Temperature </td>
                <td><input type=text readonly size=20 name=bodytemperature1 value='<%=btemp%>' </td>
            </tr>
            <tr>
                <td>Glucose Level </td>
                <td><input type=text readonly size=20 name=glucose1 value='<%=glevel%>' </td>
            </tr>
            <tr>
                <td>Blood Pressure </td>
                <td><input type=text readonly size=20 name=bloodpressure1 value='<%=bpressure%>' </td>
            </tr>
              <tr>
                  <td>Description </td>
                <td><textarea cols=30 name=decription rows=3 valign="top"><%=desc%></textarea> </td>
            </tr>
       </table>
        <input type=submit value="Update" >
        <input type=reset value="Clear All">
    </form>
    </body>
</html>

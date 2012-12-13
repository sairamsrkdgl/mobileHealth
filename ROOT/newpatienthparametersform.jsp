<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*"%> 
<%@page import="mhealth.*,java.util.*,java.lang.String"%>
<html>
    <head>
        <title>PATIENT::HEALTH PARAMETERS FORM</title>
 <META HTTP-EQUIV="refresh" CONTENT="<%= session.getMaxInactiveInterval() %>; sexpire.jsp" />
    </head>
    <body>
        <%@include file="head.html"%><br/><br/>
        <% String pid1 = (String) session.getAttribute("patient_id"); 
        Patient par = Patient.getBloodgroup(pid1);
       // String value1=par;
        String value = par.getPname();
        System.out.println("Blooad group is:"+value); 
        %>
        <%@include file="patientmenu.html"%><br/>
        <form action="newpatienthparameters.jsp" method="post">
          <table>
            
              <tr>
                  <td>Personal ID:</td>
                  <td><input type="text" name="pid" value="<%=pid1%>" readonly="readonly" size="5"></td> 
              </tr>

              <%  if(value.equalsIgnoreCase("n")){ %>
              <tr>
                  <td>Blood Group:</td>
                  <td><input type="text" name="bgroup" value="" size="5"></td> 
              </tr>
              <% }else{ %>
               <tr>
                  <td>Blood Group:</td>
                  <td><input type="text" name="bgroup" value="<%=value%>" readonly="readonly" size="5"></td> 
               </tr>
              <% } %>
              <tr>
                  <td> Heart rate(bpm): </td>
                  <td><input type="text" name="hrate"  value="" size="5"></td>
              </tr>
              <tr>
                  <td> Heart pulse: </td>
                  <td><input type="text" name="hpulse"  value="" size="5"></td>
              </tr>
              <tr>
                  <td>Body Temperature(<sup>o</sup>C) :</td>
                  <td><input type="text" name="btemp" value="" size="5" ></td>
              </tr>
              <tr>
                  <td>Glucose level(mg/dL) :</td>
                  <td><input type="text" name="glevel" value="" size="5" ></td>
              </tr>
              <tr>
                  <td>Blood pressure (mmHg):</td>
                  <td><input type="text" name="bpressure" value="" size="5" ></td>
              </tr>
              <tr>
                  <td>SpO2 :</td>
                  <td><input type="text" name="spo2" value="" size="5" ></td>
              </tr>
              
          </table>
          <input type="submit" value="Add" />
          <input type="reset" value="Clear All" />
      </form>
    
    </body>
</html>

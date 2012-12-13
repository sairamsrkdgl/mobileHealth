<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Downlaod Document</title>
    </head>
    <body>
         <%@include file="head.html"%><br/>
         <%@include file="doctormenu1.html"%><br/>
         
      <%  
      String patient_id = request.getParameter("pid");
    session.setAttribute("pid", patient_id);
    mhealth.Patient p = mhealth.Patient.getDocument(patient_id);
    int res = p.getPname().charAt(1);
    if (res=='/')
    out.println("<h3>Sorry! Patient Document not found!!</h3>");
    else {
    %>
                                <form action="downloadlink.jsp" method="get">
                                <table>
                                <tr><td>Document: </td>
                                <td><input type="text" size="30" name="dloc" value="<%= p.getPname() %>" readonly="true" /></td>                                
                                </tr>
                                <tr>
                                    <td><input type="submit" value="Download" /></td>
                                </tr>
                                </table>
                                
                                </form>
                    <%
     }
     %>
    </body
</html>
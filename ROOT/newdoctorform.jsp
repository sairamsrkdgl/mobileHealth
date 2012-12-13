<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title>MOBILE HEALTH :: DOCTOR REGISTRATION FORM</title>
	<META HTTP-EQUIV="refresh" CONTENT="<%= session.getMaxInactiveInterval() %>; sexpire.jsp" />
  </head>
  <body>
      <%@include file="head.html"%><br/>
      <h2>Registration of Doctor</h2><br/>
      <%@include file="adminmenu.html" %><br/>
      
      <form action="newdoctor.jsp" method="post">
          <table>
              <tr>
                  <td>Doctor Name : 
                  <td><input type="text" name="dname" size-="20" />
              </tr>
              <tr>
                  <td>Doctor Password : 
                  <td><input type="password" name="dpass" size-="20" />
              </tr>
              <tr>
                  <td>Specialization:</td>
                  <td><input type="text" name="specialization"  size="50" /> 
              </tr>
              
              <tr>
                  <td>Address : </td>
                  <td><textarea name="daddress" rows="4" cols="30"></textarea>
              </tr>
              <tr>
                  <td>Contact No. :</td>
                  <td><input type="text" name="dcontactno" value="" size="15" />
              </tr>
          </table>
          <p/>
          <input type="submit" value="Add Doctor" />
          <input type="reset" value="Clear All" />
      </form>
  </body>
</html>


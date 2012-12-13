<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.*"%>
<html>
  <head>
    <title>MOBILE HEALTH :: PATIENT REGISTRATION FORM</title>
  </head>
  <body>
      <%@include file="head.html"%><br/>
      
      <h2>Registration form of Patient </h2><br/>
      <%@include file="adminmenu.html" %><br/>
      <form action="newpatient.jsp" method="post" enctype="multipart/form-data">
          <table>
              <tr>
                  <td>Name : 
                  <td><input type="text" name="pname" size-="20" />
              </tr>
              <tr>
                  <td>Age :</td>
                  <td><input type="text" name="age" value="" size="10" /> (Ex: 30)
              </tr>
              <tr>
                  <td>Gender :</td>
                  <td><input type="radio" name="gender" value="m" />Male
                  <input type="radio" name="gender" value="f" />Female
              </tr>
              
              <tr>
                  <td>Contact No. :</td>
                  <td><input type="text" name="pcontactno" value="" size="15" />
              </tr>

              <tr>
                  <td>Address : </td>
                  <td><textarea name="paddress" rows="4" cols="30"></textarea>
              </tr>
              <tr>
                  <td>Patient Password : </td>
                  <td><input type="password" name="patientp" value="" size="15" />
              </tr>
		<tr>
                  <td>Patient Camera IP Address : </td>
                  <td><input type="text" name="patientip" value="" size="15" />
              </tr>
              
              <tr>
                  <td>Doctor id : </td>
                  <td>
                <select name="doctoridpf">
                    <%
         
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mhealthdefault","mhealth","mhealth");
            Statement st=con.createStatement(); 
            ResultSet rs=st.executeQuery("Select doctor_id,d_name,specialization from doctors");
            while(rs.next()){
            String str=rs.getString("doctor_id");
            String str1=rs.getString("d_name");
            String str2=rs.getString("specialization");
                    %>
            <option value="<%=str%>"><%=str%>---<%=str1%>---<%=str2%></option>
            <%
                }
            %>
</select>
                  </td>
              </tr>
              <tr>
                  <td>Photo Upload : </td>
                  <td><input type=file name="pfile" />
              </tr>
          </table>
<input type="submit" value="Add Patient" />
 <input type="reset" value="Clear All" />
      </form>
  </body>
</html>

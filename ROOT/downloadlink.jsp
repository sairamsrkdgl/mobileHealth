<%
String filename = request.getParameter("dloc");
String filepath = "/var/lib/tomcat6/webapps/ROOT/docs/"; 
response.setContentType("APPLICATION/OCTET-STREAM");
response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");
java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + filename);
int i;
while ((i=fileInputStream.read()) != -1) {
out.write(i);
}
fileInputStream.close(); 
%>

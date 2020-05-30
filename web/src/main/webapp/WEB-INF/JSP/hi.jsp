<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
     <%String   name =  (String) request.getAttribute("name");
     out.println(name);     
     %>  
     
       <form id="form1" action="finalBill">
<input type="SUBMIT" name="Hiiiiiiii" value="S"/>
	  </form>
	  
	  
	  <jsp:forward page="finalBill.jsp"> 
	<jsp:param name="name" value= name /> 
	<jsp:param name="1" value= "${2}" />
	</jsp:forward>
	 
</body>
</html>
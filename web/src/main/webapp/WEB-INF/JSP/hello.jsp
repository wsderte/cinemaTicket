<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
    <%@include file="/WEB-INF/css/style.css"%>
</style>
 <%  session.setAttribute("chair", new int[][] {{1,1},{1,1},{1,1}});
	  session.setAttribute("cinema", "awer");
	 %>
</head>

 <body>
 <h1>Simba</h1>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   <body>
  		 <div class='result'></div>
  		<div class='cinemaHall zal1'></div>
   </body>
      <script type="text/javascript">
   		 <%@include file="/WEB-INF/js/room.js"%>
	 </script> 
	 

	 
</body>
   
</html>
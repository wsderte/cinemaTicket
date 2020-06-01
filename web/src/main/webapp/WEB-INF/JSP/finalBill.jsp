<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 
</head>
<body>

<script type="text/javascript">
<%String name = (String) session.getAttribute("Name");%>  
<%int[] Chair = (int[]) session.getAttribute("chair");%>  
<%int[] raw = (int[]) session.getAttribute("raw");%>  

var s="<%=name%>";
var c ="<%=Chair%>";
var r="<%=raw%>";
//document.getElementById("my8345").value= c.toString();

function order()
{
if(s == "Admin"){
	//alert( "Oww,Hi MArk " + c + " " + r);
	document.getElementById("my8345").type="text";
	document.getElementById("my8345").value= c.toString();
		// document.getElementById("res").type="text";
	}else{
		alert( "Oww,Hi Mark ");
	}
}
 </script>
 
<form id="res"  action="finalBill">
	<input type="SUBMIT" name="Res" value="Click to access your order"/>
</form>
<form id="res" action="logIn">
	<input type="SUBMIT" name="Res" value="Click to go back"/>
</form>

<input type="hidden" name="name1" id="my8345" >
   <input type="button" name="button2" value="See all orders" onClick="order()">

</body>
</html>
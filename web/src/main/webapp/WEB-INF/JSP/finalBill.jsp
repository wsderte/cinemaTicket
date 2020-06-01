<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 <%@include file="/WEB-INF/css/finalBill.css"%>
 </style>
</head>
<body>

<script type="text/javascript">
<%String name = (String) session.getAttribute("Name");%>  

<%String r = (String) session.getAttribute("R");%>

var s="<%=name%>";
var r="<%=r%>";

var substr = r.split(',');
for(let i=0;i<substr.length;i++){
let raw = substr[2*i];
let chair = substr[2*i+1];
//console.log(substr[i]);
}

//console.log(r);
//document.getElementById("my8345").value= c.toString();

function order()
{
if(s == "Admin"){
	//alert( "Oww,Hi MArk " + c + " " + r);
	document.getElementById("my8345").type="text";
	document.getElementById("my8345").value= c.toString();
		// document.getElementById("res").type="text";
	}else{
		alert( "Oww,Hi Mark " + r);
	}
}
 </script>
 
<form id="res1"  action="finalBill">
	<input id="but1" type="SUBMIT" name="Res" value="Click to access your order"/>
</form>
<form id="res2" action="logIn">
	<input id="but2" type="SUBMIT" name="Res" value="Click to go back"/>
</form>

<input type="hidden" name="name1" id="my8345" >

<form id="res3" action="logIn">
   <input id="but3" type="button" name="button2" value="See all orders" onClick="order()">
</form>

</body>
</html>
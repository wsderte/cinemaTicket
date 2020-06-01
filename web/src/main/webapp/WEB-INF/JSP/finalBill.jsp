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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
 <div class='result'></div>
 
 
<script type="text/javascript">
<%String name = (String) session.getAttribute("Name");%>  

<%String r = (String) session.getAttribute("R");%>

var s="<%=name%>";
var r="<%=r%>";
console.log(r);
var text = "";
var substr = r.split(',');
for(let i=0;i<substr.length/2;i++){
let raw = substr[2*i];
let chair = substr[2*i+1];
text += " Raw: " + substr[2*i] + " Chair:" + substr[2*i+1];

//console.log(substr[i]);
}


//console.log(r);
//document.getElementById("my8345").value= c.toString();

function order()
{
if(s == "Admin"){
  //console.log(text);
	//document.getElementById("di").style="display: block";
	document.getElementById("area4").value = text;
	//let subs = '<div class="seat" data-row="' +
   	//	      text +'">&nbsp;</div>';
   	// $('.zal1').html(subs);
	//document.getElementById("f").value= text ;
	//alert( "Oww,Hi Mark " + r);

		// document.getElementById("res").type="text";
	}else{
		alert( "Oww,Hi Mark " + r);
	}
}
 </script>
<%  
//out.println("<div id='di' style='display: none;'>"+ r +"</div>");
%>


<form id="res1"  action="finalBill">
	<input id="but1" type="SUBMIT" name="Res" value="Click to access your order"/>
</form>

<form id="res2" action="logIn">
	<input id="but2" type="SUBMIT" name="Res" value="Click to go back"/>
</form>

<form id="res3">
   <input id="but3" type="button" name="button2" value="See current orders" onClick="order()">
</form>

<form id="res4">
<input type="hidden" name="name1" id="my">
 <textarea id="area4"></textarea>
</form>

</body>
</html>
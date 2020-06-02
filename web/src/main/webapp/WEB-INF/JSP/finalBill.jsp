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
 
<script type="text/javascript">
<%String name = (String) session.getAttribute("Name");%>  
<%String r = (String) session.getAttribute("R");%>

<%String ci = (String) session.getAttribute("ci");%>
<%String na = (String) session.getAttribute("na");%>
<%String cha = (String) session.getAttribute("cha");%>
<%String ra = (String) session.getAttribute("ra");%>

var s="<%=name%>";
var r="<%=r%>";

var ci="<%=ci%>";
var na="<%=na%>";
var cha="<%=cha%>";
var ra="<%=ra%>";

var users = "";

var subra = ra.split(',');
var subci = ci.split(',');
var subna = na.split(',');
var subcha = cha.split(',');
console.log(subra);
for(let i=0;i<subra.length-1;i++){
users +=" User number:" + i+1 + " Raw: " + subra[i] + " Chair:" + subcha[i] + " Name: " + subna[i] + " Cinema:" + subci[i] + "\n";

//console.log(users);
}


//console.log(r);
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
function allT(){
	if(s == "Admin"){
		document.getElementById("area5").value = users;
	 // console.log(text);
		//document.getElementById("di").style="display: block";
		//document.getElementById("area4").value = text;
		
		//document.getElementById("f").value= text ;
			// document.getElementById("res").type="text";
		}else{
			alert( "Only as Admin ");
		}
}


function order()
{
//if(s == "Admin"){
  //console.log(text);
	//document.getElementById("di").style="display: block";
	document.getElementById("area4").value = text;
	//let subs = '<div class="seat" data-row="' +
   	//	      text +'">&nbsp;</div>';
   	// $('.zal1').html(subs);
	//document.getElementById("f").value= text ;
	//alert( "Oww,Hi Mark " + r);

		// document.getElementById("res").type="text";
//	}else{
	//	alert( "Only as Admin ");
	//}
}
 </script>
<%  
//out.println("<div id='di' style='display: none;'>"+ r +"</div>");
%>


<form id="res1"  action="finalBill">
	<input id="but1" type="SUBMIT" name="Res" value="Click to confirm your order"/>
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

<form id="res5">
 <input id="but4" type="button" name="button3" value="See all orders" onClick="allT()">
 <textarea id="area5"></textarea>
</form>

</body>
</html>
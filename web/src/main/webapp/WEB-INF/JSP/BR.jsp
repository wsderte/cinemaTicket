<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blade Runner</title>

<style>
    <%@include file="/WEB-INF/css/style.css"%>
    <%@include file="/WEB-INF/css/hello.css"%>
</style>

</head>
<body>
 <h1>Blade Runner</h1>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   <body>
  		 <div class='result'></div>
  		<div class='cinemaHall zal1'></div>
   </body>
      <script type="text/javascript">
// type="hidden"
	<%String cha = (String) session.getAttribute("cha");%>
	<%String ci = (String) session.getAttribute("ci");%>
	<%String ra = (String) session.getAttribute("ra");%>
	
	var cha="<%=cha%>";
	var ra="<%=ra%>";
	var ci="<%=ci%>";
	
	//console.log(cha);
	//console.log(ra);
	//console.log(ci);
	var users =[];
	var u = {
			pair: [] ,
		    row: [] ,
		    chair: []
	};
	var subra = ra.split(',');
	var subci = ci.split(',');
	var subcha = cha.split(',');
	//console.log(subci[0]);
	for(let i=0;i<subra.length-1;i++){
		if(subci[i] === "BladeRunner"){
	 		u.row.push(subra[i]);
	 		u.chair.push(subcha[i]);
	 	    u.pair.push([subra[i],subcha[i]]);
	 		
		}
		//console.dir(u.row);
	}
//	console.dir(u);

	
   	var cinemaHall1 = {
   		    row: [10, 20, 30, 30, 30, 30, 30, 30, 30, 30, 30] },
   		  cinemaHallMap = '';
   	$.each(cinemaHall1.row, function(colum, numberOfSeats) {
   		  cinemaHallRow = '';
   		  colum++;
   	for (i = 1; i <= numberOfSeats; i++) {
   		    // собираем ряды
   		    cinemaHallRow += '<div class="seat" data-row="' +
   		      colum + '" data-seat="' +
   		      i + '">&nbsp;</div>';
    }
   		  //собираем зал с проходами между рядами
   		  cinemaHallMap += cinemaHallRow + '<div class="passageBetween">&nbsp;</div>';
   		 
   		});
   	

   		//заполняем в html зал 
 $('.zal1').html(cinemaHallMap);

	  //ищем все места купленные и закрываем их
	  $.each($('.seat'), function(key, item) {
		 // console.log(item);
		// console.log(u.row.indexOf("8"));
	    if(u.row.indexOf($(item).data().row.toString()) != -1 && u.chair.indexOf($(item).data().seat.toString()) != -1){  
	  // if($(item).data().seat == 1){
	    	$(item).toggleClass('close');
    }
});
   	
//$('.seat').on('click', function(e) {
//		  $(e.currentTarget).toggleClass('close');
//});
   		
   		// тут по клику определяем что место выкуплено
 $('.seat').on('click', function(e) {
   		  // если первый раз кликнули билет выкупили, 
   		  // если повторно значит вернули билет
   		//  console.log($(e.currentTarget).data().row );
   		if(u.row.indexOf($(e.currentTarget).data().row.toString()) != -1 && u.chair.indexOf($(e.currentTarget).data().seat.toString()) != -1){  
   		  // if($(item).data().seat == 1){
   		    	alert("It's already used");
   	    }else{
   	     $(e.currentTarget).toggleClass('bay');
   	    }
   		  //показываем сколько билетов выкуплено
    showBaySeat();

   		});

 function showBaySeat() {
   		  result = '';
   		  res = [];
   		  //ищем все места купленные и показываем список выкупленных мест
   		  $.each($('.seat.bay'), function(key, item) {
   		    result += '<div class="ticket">Raw: ' +
   		      $(item).data().row + ' Chair:' +
   		      $(item).data().seat + '</div>';
   		  //  res += `R:` +  $(item).data().row + ' C:' + $(item).data().seat;
   		    res[key] =[$(item).data().row, $(item).data().seat];
   		  
   		    //var a = " " + [$(item).data().row, $(item).data().seat];
   		   // document.getElementById('tableTextId').value = "";
   		   // document.getElementById('tableTextId').value += a;
});
   		  
   		// console.log(res);
$('.result').html(result);
   		 // console.log(res);
   		//document.getElementById('tableTextId').value = 0;
   		  // json
   	 var foo = res;
   		//document.getElementById('tableTextId').value = 1; //= JSON.stingify(foo);
   			var elem = document.getElementById('tableTextId');
   			elem.value = foo;
   			//
   			
   	}
 <%  
 String name = (String) session.getAttribute("Name");
 %>
 var s="<%=name%>";
 // ошибка если пользователь не выбрал место
 function onSubmit(){
     if (!tableTextId.value) {
    	 tableTextId.focus();
         alert(s + ", plese choose your seat");
         return false;
     }
   }
 
 </script> 

	  
<form id="imp" onsubmit="return onSubmit()" id="BR" action="BR">
 <input type="hidden" name="tableValue" id="tableTextId" > <br />
<input id="BR" type="SUBMIT" name="I accept my choose" value="I accept my choose"/>
</form>
 <%  
// String name = (String) session.getAttribute("Name");
 
 	//session.setAttribute("chair", new int[][] {{1,1},{1,1},{1,1}});
 //	session.setAttribute("cinema", "awer");
 	
// String[] s = (String[]) request.getParameterValues("tableValue");
 //session.setAttribute("Sas", s);
 //	 out.println(s);
 %>
</body>
</html>
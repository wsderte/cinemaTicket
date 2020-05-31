<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blade Runner</title>

<style>
    <%@include file="/WEB-INF/css/style.css"%>
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

   		//заполняем в html зал номер 1
 $('.zal1').html(cinemaHallMap);
   		// тут по клику определяем что место выкуплено
 $('.seat').on('click', function(e) {
   		  // если первый раз кликнули билет выкупили, 
   		  // если повторно значит вернули билет
 $(e.currentTarget).toggleClass('bay');
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
	 </script> 

	  
<form id="BR" action="BR">
 <input  name="tableValue" id="tableTextId" > <br />
<input type="SUBMIT" name="I accept my choose" value="I accept my choose"/>
</form>
 <%  
 	//session.setAttribute("chair", new int[][] {{1,1},{1,1},{1,1}});
 //	session.setAttribute("cinema", "awer");
 	
// String[] s = (String[]) request.getParameterValues("tableValue");
 //session.setAttribute("Sas", s);
 //	 out.println(s);
 %>
</body>
</html>
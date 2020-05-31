// план зала по рядам общая вместительность 300 мест
// планов может быть и больше... и разные...

//document.getElementById('tableTextId').value = "customer";

//<!-- <%@include file="/WEB-INF/js/room.js"%> -->



var cinemaHall1 = {
    row: [10, 20, 30, 30, 30, 30, 30, 30, 30, 30, 30]
    },
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
  res = '';
  //ищем все места купленные и показываем список выкупленных мест
  $.each($('.seat.bay'), function(key, item) {
    result += '<div class="ticket">Raw: ' +
      $(item).data().row + ' Chair:' +
      $(item).data().seat + '</div>';
  //  res += `R:` +  $(item).data().row + ' C:' + $(item).data().seat;
  //  res[key] =[$(item).data().row, $(item).data().seat];
    res += 1;
    //var a = " " + [$(item).data().row, $(item).data().seat];
   // document.getElementById('tableTextId').value = "";
   // document.getElementById('tableTextId').value += a;
  });
// console.log(res);
  $('.result').html(result);
//  console.log(res);
 // document.getElementById('tableTextId').value = res;
}
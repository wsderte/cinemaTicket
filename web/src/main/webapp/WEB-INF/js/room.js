// план зала по рядам общая вместительность 300 мест
// планов может быть и больше... и разные...
var cinemaHall1 = {
    row: [10, 20, 30, 30, 30, 30, 30, 30, 30, 30, 30]
    },
  cinemaHallMap = '';

$.each(cinemaHall1.row, function(colum, numberOfSeats) {
  cinemaHallRow = '';
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
  //ищем все места купленные и показываем список выкупленных мест
  $.each($('.seat.bay'), function(key, item) {
    result += '<div class="ticket">Raw: ' +
      $(item).data().row + ' Chair:' +
      $(item).data().seat + '</div>';
  });

  $('.result').html(result);
}
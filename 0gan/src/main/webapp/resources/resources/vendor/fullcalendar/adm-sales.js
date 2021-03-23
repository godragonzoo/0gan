/*
 2021-03-19 17:28 수정
 */

$(document).ready(function() {
	var calendarEl = document.getElementById('calendar');
	var calendar = new FullCalendar.Calendar(calendarEl, {
		initialView: 'dayGridMonth'
	});
	calendar.render();
});
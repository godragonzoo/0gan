
	document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
    
      var calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list', 'bootstrap' ],
		themeSystem: 'bootstrap',
		selectable: true,
		header: {
			    left: 'prev,next today',
			    center: 'title',
			    right: 'dayGridMonth , dayGridWeek, listDay'
		},
		eventLimit: true,
		eventLimitText: "more",
        eventLimitClick: "popover",
        editable: false,
        events: [
	    {
	      title: 'ItawonSR',
	      start: '2021-04-07T14:30:00',
	      extendedProps: {
	        status: 'done'
	      }
	    },
	    {
	      title: 'haha',
	      start: '2021-04-07T07:00:00',
	      backgroundColor: 'green',
	      borderColor: 'green'
	    }
	  ],
	  
	  eventClick: function(info) {
	    var eventObj = info.event;
		alert(eventObj.title);
	  },

	  eventRender: function(info) {
	    if (info.event.extendedProps.status === 'done') {
	
	      // Change background color of row
	      info.el.style.backgroundColor = 'navy';
	
	      // Change color of dot marker
	      var dotEl = info.el.getElementsByClassName('fc-event-dot')[0];
	      if (dotEl) {
	        dotEl.style.backgroundColor = 'white';
	      }
	    }
	  },

	 select: function(info) {
      alert(info.startStr + ' to ' + info.endStr);
    } 

  
      });

      calendar.render();
});
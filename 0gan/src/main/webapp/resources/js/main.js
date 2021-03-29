$(document).ready(function() {
  
	//BestSlide
	if($(".best_prev").click()|| $(".best_next").click()){
		var i = $(".best_panel li").index(this);
		var len = $(".best_panel li").length;
		showSlide();
		$(".best_prev").click(function() {
		    if (i <= 0) {
		      i = len - 1;
		    } else {
		      i = i - 1;
		    }
		    showSlide();
	  	});
	
		  $(".best_next").click(function() {
		    if (i >= len-1) {
		      i = 0;
		    } else {
		      i = i + 1;
		    }
		    showSlide();
		  });
		 
		function showSlide() {
			$(".best_panel li").stop(true, true).fadeOut();
			$(".best_panel li").eq(i).stop(true, true).fadeIn();
		}
	}
	//RevwSlide
	if($(".revw_prev").click()|| $(".revw_next").click()){
		var i = $(".btn li.on").index();
		var len = $(".revw_panel li").length;
		showSlide();
		$(".revw_prev").click(function() {
		    if (i <= 0) {
		      i = len - 1;
		    } else {
		      i = i - 1;
		    }
		    showSlide();
	  	});
	
		  $(".revw_next").click(function() {
		    if (i >= len-1) {
		      i = 0;
		    } else {
		      i = i + 1;
		    }
		    showSlide();
		  });
		 
		function showSlide() {
			$(".revw_panel li").stop(true, true).fadeOut();
			$(".revw_panel li").eq(i).stop(true, true).fadeIn();
		}
	}
	//RecomSlide
	if($(".recom_prev").click()|| $(".recom_next").click()){
		var i = $(".btn li.on").index();
		var len = $(".recom_panel li").length;
		showSlide();
		$(".recom_prev").click(function() {
		    if (i <= 0) {
		      i = len - 1;
		    } else {
		      i = i - 1;
		    }
		    showSlide();
	  	});
	
		  $(".recom_next").click(function() {
		    if (i >= len-1) {
		      i = 0;
		    } else {
		      i = i + 1;
		    }
		    showSlide();
		  });
		 
		function showSlide() {
			$(".recom_panel li").stop(true, true).fadeOut();
			$(".recom_panel li").eq(i).stop(true, true).fadeIn();
		}
	}
});





    //-------------------------------------------------------------------------------------
    // 달력 - 한글 변형
    // endDate달력은 startDate달력에서 선택된 이전 날짜 선택 불가
 /* $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#startDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yymmdd",
                 minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                      //시작일(startDate) datepicker가 닫힐때
                      //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                     $("#endDate").datepicker( "option", "minDate", selectedDate );
                 }    
 
            });
            
          
    //-------------------------------------------------------------------------------------
    // 달력 - 한글 변형
    // endDate달력 최대 선택 날짜 제한 제거  
            $( "#endDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yymmdd",
                 //maxDate: 0,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                
                /* onClose: function( selectedDate ) {    
                     // 종료일(endDate) datepicker가 닫힐때
                     // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                     $("#startDate").datepicker( "option", "maxDate", selectedDate );
                 }    
 
            });    
    });
    */
    $(function () {
		$('#startDate').datetimepicker({ format: 'L'}); 
		$('#endDate').datetimepicker({ format: 'L', useCurrent: false }); 
		$("#startDate").on("change.datetimepicker", function (e) { 
			$('#endDate').datetimepicker('minDate', e.date); 
		}); 
		$("#endDate").on("change.datetimepicker", function (e) { 
			$('#startDate').datetimepicker('maxDate', e.date); 
		}); 
	});

    //-------------------------------------------------------------------------------------
    // 슬라이드 시간 조절
$(function() {
	 $('.carousel').carousel({
		interval: 2000
	});
});

    //-------------------------------------------------------------------------------------
    // 팝업
$(document).ready(function(){
    $("#menuIcon").click(function(){
        $("#myModal2").modal({backdrop: false});
    });
});

    //-------------------------------------------------------------------------------------
    // dropdown
$(document).ready(function(){
 $(".dropdown-toggle").dropdown();

	var profileList = document.getElementById("profileList");
	var menuList = document.getElementById("menuList");
	
	$("#profileIcon").click(function() {
		menuList.style.display='none';
		if($("#profileList").css('display')=='none'){
			profileList.style.display='block';
			$("#profileIcon").attr('aria-expanded','true');
			document.getElementById("submenu").style.display='block';
		} else {
			profileList.style.display='none';
			$("#profileIcon").attr('aria-expanded','false');
		}
	});
	$("#menuIcon").click(function() {
		profileList.style.display='none';
		if($("#menuList").css('display')=='none'){
			menuList.style.display='block';
			$("#menuIcon").attr('aria-expanded','true');
		} else {
			menuList.style.display='none';
			$("#menuIcon").attr('aria-expanded','false');
		}
	});
});
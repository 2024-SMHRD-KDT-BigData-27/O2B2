<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>calender</title>
<link href="${pageContext.request.contextPath}/css/calender.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file="header.jsp"%>
	<h1 id="calender-header" align="center">마이 캘린더</h1>
	<hr class="line">
	<div id="calendar"></div>
	<div id="memoModal" style="display: none;">
		<form action="AddCalenderService">
			<h3>메모 추가</h3>
			<p id="modalDate"></p>
			시작일 : <input id="startDate" type="text" name="startDate"> <br>
			종료일 : <input id="endDate" type="text" name="endDate"> <br>
			제목 : <input id="title" type="text" name="title"><br>
			<textarea id="memoInput" placeholder="메모를 입력하세요" name="content"></textarea>
			배경색 : <input type="color" id="schBColor" value="#4A80FF"
				name="backColor"> &ensp; 글자색 : <input type="color"
				id="schFColor" value="#FFFFFF" name="textColor"> <br>
			<button type="submit" id="saveMemo">저장</button>
			<button type="button" id="closeModal">닫기</button>
		</form>
	</div>

	<div id="editModal" style="display: none;">
		<form action="UpdateCalenderService">
			<div class="Cont">
			<div id="editCont">
				<h3>일정 수정/삭제</h3>
				<input type="hidden" id="editId" name="calId">
				제목 : <input type="text" id="editTitle" name="title"><br>
				<br> 내용 :
				<textarea type="text" id="editContent" name="content"></textarea>
				<br>
				<br> 배경색 : <input type="color" id="editBColor" name="backColor"> &ensp;
				글자색 : <input type="color" id="editFColor" name="textColor"><br>
				<br>
				<button type="submit">수정</button>
				&ensp;
				<a id="deleteButton" href="#"><button type="button">삭제</button></a>
				&ensp;
				<button type="button" onclick="fEditClose()">닫기</button>
				</div>
			</div>
		</form>
	</div>

	<script>
    document.addEventListener('DOMContentLoaded', function() {
      let calendarEl = document.getElementById('calendar');
      let clickedDate;

      const calendar = new FullCalendar.Calendar(calendarEl, {
        locale: 'ko',
        initialDate: '2025-01-11',
        editable: true,
        selectable: true,
        businessHours: true,
        dayMaxEvents: true,
        events: [
        	  { title: '설날', start: '2025-01-28', end: '2025-01-31' },
        	  { title: '2차 핵심 발표', start: '2025-01-21' },
        	  { title: 'Click for Google', url: 'http://google.com/', start: '2023-01-28' },
        	  <%userDTO info1 = (userDTO) session.getAttribute("info");
if (info1 != null) {
	CalenderDAO cal_dao = new CalenderDAO();
	ArrayList<CalenderDTO> list = cal_dao.findCal(info1.getID());
	for (CalenderDTO cal : list) {%>
        	        {
        	        	
        	            title: "<%=cal.getCLD_TITLE()%>",
        	            start: "<%=cal.getSTART_DT()%>",
        	            end: "<%=cal.getEND_DT()%>",
        	            backgroundColor: "<%=cal.getBACK_COLOR()%>",
        	            textColor: "<%=cal.getTEXT_COLOR()%>",
        	            extendedProps: {
        	            	cal_id : "<%=cal.getCLD_ID()%>",
        	                content: "<%=cal.getCLD_CONTENT()%>"
        	            }
        	        },
        	  <%}
}%>
        	],

        dateClick: function(info) {
          clickedDate = info.dateStr;
          openMemoModal(info.dateStr);
        },
        
        eventClick: function(info){
        	let modal = document.getElementById('editModal');
        	let editId = document.getElementById('editId');
            let editTitle = document.getElementById('editTitle');
            let editContent = document.getElementById('editContent');
            let editBColor = document.getElementById('editBColor');
            let editFColor = document.getElementById('editFColor');

            let event = info.event;

            editId.value = event.extendedProps.cal_id;
            editTitle.value = event.title;
            editContent.innerText = event.extendedProps.content;
            editBColor.value = event.backgroundColor;
            editFColor.value = event.textColor;
            
            if (event.extendedProps.cal_id) {
                deleteButton.href = `DeleteCalenderService?calId=\${event.extendedProps.cal_id}`;
            }

            window.selectedEvent = event;

            modal.style.display = 'block';
        	
        }
      });
      
     

      calendar.render();

      function openMemoModal(date) {
        let modal = document.getElementById('memoModal');
        let memoInput = document.getElementById('memoInput');
        let startDate = document.getElementById('startDate');
        let endDate = document.getElementById('endDate');

        modalDate.textContent = date;
        startDate.value = date;
        
        let enddate = new Date(date);
        
        enddate.setDate(enddate.getDate() + 1);
        
        endDate.value = enddate.toISOString().split('T')[0];
        memoInput.value = '';
        modal.style.display = 'block';
      }

      document.getElementById('saveMemo').onclick = function() {
        let memoText = memoInput.value;
        let memoInput = document.getElementById('memoInput');

        if (memoText.trim() !== '') {
          calendar.addEvent({
            title: memoText,
            start: clickedDate,
            allDay: true
          });
          alert('메모가 저장되었습니다.');
          document.getElementById('memoModal').style.display = 'none';
        } else {
          alert('메모를 입력해주세요!');
        }
      };

      document.getElementById('closeModal').addEventListener('click', function() {
        document.getElementById('memoModal').style.display = 'none';
      });
    });
    function fEditClose() {
  	  let modal = document.getElementById('editModal');
  	  modal.style.display = 'none';
  	}
  </script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css" rel="stylesheet">
  <meta charset="UTF-8">
  <title>calender</title>
  <link href="${pageContext.request.contextPath}/css/calender.css" rel="stylesheet" type="text/css">
</head>
<body>
  <%@ include file="header.jsp" %>
  <h1 id="calender-header" align="center"> 맘's 캘린더</h1>
  <hr class="line">
  <div id="calendar"></div>
  <div id="memoModal" style="display: none;">
    <h3>메모 추가</h3>
    <p id="modalDate"></p>
    <textarea id="memoInput" placeholder="메모를 입력하세요"></textarea>
    <button id="saveMemo">저장</button>
    <button id="closeModal">닫기</button>
  </div>
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
      var clickedDate;

      var calendar = new FullCalendar.Calendar(calendarEl, {
        locale: 'ko',
        initialDate: '2025-01-11',
        editable: true,
        selectable: true,
        businessHours: true,
        dayMaxEvents: true,
        events: [
          { title: '설날', start: '2025-01-28', end: '2025-01-31' },
          { title: '2차 핵심 발표', start: '2025-01-21' },
          { title: 'Click for Google', url: 'http://google.com/', start: '2023-01-28' }
        ],
        dateClick: function(info) {
          clickedDate = info.dateStr;
          openMemoModal(info.dateStr);
        }
      });

      calendar.render();

      function openMemoModal(date) {
        var modal = document.getElementById('memoModal');
        var modalDate = document.getElementById('modalDate');
        var memoInput = document.getElementById('memoInput');

        modalDate.textContent = date;
        memoInput.value = '';
        modal.style.display = 'block';
      }

      document.getElementById('saveMemo').onclick = function() {
        var memoInput = document.getElementById('memoInput');
        var memoText = memoInput.value;

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
  </script>
</body>
</html>

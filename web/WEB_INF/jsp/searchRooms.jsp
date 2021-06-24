<%--
  Created by IntelliJ IDEA.
  User: k_voroshkovatut.by
  Date: 6/23/21
  Time: 12:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
<c:import url="header.jsp"/>



<div  title="Create new booking">
  <form action="${pageContext.request.contextPath}/controller?command=SEARCH_ROOM" method="post">
    <fieldset>
      <label for="dateFrom">Date From</label>
      <input type="date" name="dateFrom" id="dateFrom" class="text ui-widget-content ui-corner-all">
      <label for="dateTo">Date To</label>
      <input type="date" name="dateTo" id="dateTo" class="text ui-widget-content ui-corner-all">
      <label for="capacity">Capacity</label>
      <input type="number" name="capacity" id="capacity" class="text ui-widget-content ui-corner-all">
      <label for="roomType">Room Type</label>
      <input type="text" name="roomType" id="roomType" class="text ui-widget-content ui-corner-all">

      <!-- Allow form submission with keyboard without duplicating the dialog button -->

    </fieldset>
    <button type="submit" value="Search" tabindex="-1" style="position:absolute">Search</button>
  </form>
</div>

<div id="bookings-contain" class="ui-widget">
  <h1>Existing Bookings:</h1>
  <table id="bookings" class="ui-widget ui-widget-content">
    <thead>
    <tr class="ui-widget-header ">
      <th>Date From</th>
      <th>Date To</th>
      <th>Room Type</th>
      <th>Capacity</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${bookings}" var="booking">
      <tr>
        <td>${booking.dateFrom}</td>
        <td>${booking.dateTo}</td>
        <td>${booking.roomType}</td>
        <td>${booking.Capacity}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>

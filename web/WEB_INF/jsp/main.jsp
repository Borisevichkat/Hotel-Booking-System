<%--
  Created by IntelliJ IDEA.
  User: k_voroshkovatut.by
  Date: 6/17/21
  Time: 1:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:import url="header.jsp"/>
    <title>Title</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>

<%--    <div id="users-contain" class="ui-widget">--%>
<%--        <h1>Existing Bookings:</h1>--%>
<%--        <table id="bookings" class="ui-widget ui-widget-content">--%>
<%--            <thead>--%>
<%--            <tr class="ui-widget-header ">--%>
<%--                <th>Date From</th>--%>
<%--                <th>Date To</th>--%>
<%--                <th>Room Type</th>--%>
<%--                <th>Capacity</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            <c:forEach items="${bookings}" var="booking">--%>
<%--                <tr>--%>
<%--                    <td>${booking.dateFrom}</td>--%>
<%--                    <td>${booking.dateTo}</td>--%>
<%--                    <td>${booking.roomType}</td>--%>
<%--                    <td>${booking.capacity}</td>--%>

<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--            </tbody>--%>
<%--        </table>--%>
<%--    </div>--%>
    <a href="${pageContext.request.contextPath}/controller?command=GO_TO_SEARCH_ROOMS">Create new booking</a>
</body>
</html>

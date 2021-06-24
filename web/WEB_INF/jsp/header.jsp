<%--
  Created by IntelliJ IDEA.
  User: k_voroshkovatut.by
  Date: 6/21/21
  Time: 2:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <div class="container">
    <div class="header">
      <p>Hello, ${user.firstName} ${user.lastName} </p>
      <a href="${pageContext.request.contextPath}/controller?command=logout">Log Out</a>
      <a href="${pageContext.request.contextPath}/controller?command=GO_TO_GUESTS">Manage Guests</a>
    </div>
  </div>
</body>
</html>

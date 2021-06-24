<%--
  Created by IntelliJ IDEA.
  User: k_voroshkovatut.by
  Date: 6/15/21
  Time: 11:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
<div class="regbox box">
    <img class="avatar" src="img/collaboration.png">
    <h1>Authorisation</h1>
    <form action="${pageContext.request.contextPath}/controller?command=AUTHORISATION" method="post">
        <p>Email</p>
        <input type="text" placeholder="Useremail" name="email" required>
        <p>Password</p>
        <input type="password" placeholder="Password" name="password" required>
        <input type="submit" value="Login">
        <a href="${pageContext.request.contextPath}/controller?command=go_to_registration">
            Registration
        </a>
    </form>
</div>

</div>
</body>
</html>

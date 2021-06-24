<%--
  Created by IntelliJ IDEA.
  User: k_voroshkovatut.by
  Date: 6/15/21
  Time: 2:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Register Account</title>
  <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
  <link href="css/style1.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
  <div class="regbox box">
    <img class="avatar" src="img/collaboration.png">
    <h1>Register Account</h1>
    <form action="${pageContext.request.contextPath}/controller?command=REGISTRATION" method="post">
      <p>First Name</p>
      <input type="text" placeholder="Username" name="firstName" required>
      <p>LastName</p>
      <input type="text" placeholder="Username" name="lastName" required>
      <p>Email</p>
      <input type="text" placeholder="Useremail" name="email" required>
      <p>Password</p>
      <input type="password" placeholder="Password" name="password" required>
      <input type="submit" value="Sign up">
      <a href="../../index.jsp">Already have Account?</a>
    </form>
  </div>

</div>

</body>
</html>

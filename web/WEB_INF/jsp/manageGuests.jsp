<%--
  Created by IntelliJ IDEA.
  User: k_voroshkovatut.by
  Date: 6/18/21
  Time: 12:58 AM
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
<script>

        $( function() {

            function addUser() {
                dialog.find("form").submit();
                return true;
            }

            dialog = $("#dialog-form").dialog({
                autoOpen: false,
                height: 400,
                width: 350,
                modal: true,
                buttons: {
                    "Create a guest": addUser,
                    Cancel: function () {
                        dialog.dialog("close");
                    }
                },
                close: function () {
                    form[0].reset();
                    allFields.removeClass("ui-state-error");
                }
            });

            $("#create-user").button().on("click", function () {
                dialog.dialog("open");
            });
        });
</script>
    <c:import url="header.jsp"/>


    <div id="dialog-form" title="Create new guest">
        <form action="${pageContext.request.contextPath}/controller?command=CREATE_GUEST" method="post">
            <fieldset>
                <label for="firstName">First Name</label>
                <input type="text" name="firstName" id="firstName" class="text ui-widget-content ui-corner-all">
                <label for="lastName">Last Name</label>
                <input type="text" name="lastName" id="lastName" class="text ui-widget-content ui-corner-all">
                <label for="birthDate">Birth Date</label>
                <input type="date" name="birthDate" id="birthDate" class="text ui-widget-content ui-corner-all">
                <label for="phone">Telephone number</label>
                <input type="text" name="phone" id="phone" class="text ui-widget-content ui-corner-all">
                <label for="passport">Pasport</label>
                <input type="passport" name="passport" id="passport" class="text ui-widget-content ui-corner-all">

                <!-- Allow form submission with keyboard without duplicating the dialog button -->
                <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
            </fieldset>
        </form>
    </div>


    <div id="users-contain" class="ui-widget">
        <h1>Existing Guests:</h1>
        <table id="users" class="ui-widget ui-widget-content">
            <thead>
            <tr class="ui-widget-header ">
                <th>First Name</th>
                <th>Last Name</th>
                <th>Birth Date</th>
                <th>Telephone number</th>
                <th>Passport</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${guests}" var="guest">
                <tr>
                    <td>${guest.firstName}</td>
                    <td>${guest.lastName}</td>
                    <td>${guest.birthDate}</td>
                    <td>${guest.telephoneNumber}</td>
                    <td>${guest.passport}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <button id="create-user">Create new guest</button>

</body>
</html>

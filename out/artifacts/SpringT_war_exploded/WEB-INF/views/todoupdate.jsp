<%--
  Created by IntelliJ IDEA.
  User: QuyPN
  Date: 6/23/2017
  Time: 6:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap-theme.min.css"/>">

    <link rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/icon?family=Material+Icons"/>">
    <link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap-material-datetimepicker.css"/> ">

    <script type="text/javascript" src="<c:url value="/bootstrap/js/jquery-3.2.1.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/bootstrap/js/bootstrap.min.js"/> "></script>

    <script type="text/javascript"
            src="<c:url value="http://momentjs.com/downloads/moment-with-locales.min.js"/>"></script>
    <script type="text/javascript"
            src="<c:url value="/bootstrap/js/bootstrap-material-datetimepicker.js"/> "></script>

    <title>Update todo</title>
</head>
<body>
<div class="container">
    <H1>Add a Todo</H1>
    <form:form method="post" commandName="todo">

        <form:hidden path="id"/>
        <input type="hidden" value="${todo.id}" name="id">
        <input type="hidden" value="${todo.userid}" name="userid">

        <fieldset class="form-group">
            <form:label path="job">Job</form:label>
            <form:input path="job" type="text" class="form-control"/>
            <form:errors path="job" cssClass="text-warning"/>
        </fieldset>

        <fieldset class="form-group">
            <form:label path="date">Date</form:label>
            <form:input path="date" type="text" class="form-control"/>
            <form:errors path="date" cssClass="text-warning"/>
        </fieldset>

        <fieldset class="form-group">
            <label>Done</label>
            <input type="checkbox" name="isdone" style="margin-top: 5px;"
                   <c:if test="${todo.done == true}">checked="checked"</c:if>
            >
        </fieldset>
        <input class="btn btn-success" type="submit" value="Update"/>
    </form:form>
</div>

<script type="text/javascript">
    $(function () {
        $('#date').bootstrapMaterialDatePicker({format: 'DD/MM/YYYY', minDate: new Date()});
    });
</script>
</body>
</html>

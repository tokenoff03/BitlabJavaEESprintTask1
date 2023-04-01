<%--
  Created by IntelliJ IDEA.
  User: Адиль
  Date: 4/1/2023
  Time: 1:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body>

    <div style="width: 95%; margin-left: auto; margin-right: auto">
        <%@include file="vendor/header.jsp"%>
        <form action="/addTask" method="post" style="width: 50%; margin-left: auto; margin-right: auto; margin-top: 30px">

            <div class="form-group">
                <label for="exampleInputEmail1">Наименование: </label>
                <input type="text" class="form-control" id="exampleInputEmail1" name = "name" >

            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Описание: </label>
                <textarea class="form-control" id="exampleFormControlTextarea1" name="description" rows="3"></textarea>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Крайний срок: </label>
                <input type="date" class="form-control" name="deadlineDate" >

            </div>


            <button class="btn btn-primary">Добавить</button>

        </form>

    </div>
</body>
</html>

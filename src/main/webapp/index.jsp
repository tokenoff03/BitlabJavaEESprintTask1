<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.sprinttask1.db.Tasks" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>TASK MANAGER</title>
    <%@include file="vendor/head.jsp"%>

</head>
<body>
    <div style="width: 95%; margin-left: auto; margin-right: auto">
        <%@include file="vendor/header.jsp"%>
        <%
            if(request.getAttribute("checkAddButton")!=null){


            boolean checkAddButton = (boolean) request.getAttribute("checkAddButton");
            if( checkAddButton == true){


        %>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="margin-top: 20px; color: white; background-color: rgb(31,26,98);">+ Add Task</button>

        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="/addTask" method="post">
                        <div class="modal-header" >
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Новая задание</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">

                            <div class="form-group" style="margin-top: 10px">
                                <label for="exampleInputEmail1">Наименование: </label>
                                <input type="text" class="form-control" id="exampleInputEmail1" name = "name" >

                            </div>
                            <div class="form-group" style="margin-top: 20px">
                                <label for="exampleFormControlTextarea1">Описание: </label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" name="description" rows="3"></textarea>
                            </div>
                            <div class="form-group" style="margin-top: 20px">
                                <label for="exampleInputEmail1">Крайний срок: </label>
                                <input type="date" class="form-control" name="deadlineDate" >

                            </div>
                        </div>
                        <div class="modal-footer" style="margin-top: 20px">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Add Task</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <%
                }
            }
        %>
        <%
            ArrayList<Tasks> tasks = (ArrayList<Tasks>) request.getAttribute("tasks");
            if(tasks!=null){



        %>
        <table class="table" style="margin-top: 10px">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Наименование</th>
                <th scope="col">Крайний срок</th>
                <th scope="col">Выполнено</th>
                <th scope="col">Детали</th>
            </tr>
            </thead>
            <tbody>
            <%for (Tasks t: tasks){
            %>
            <tr>
                <th scope="row"><%=t.getId()%></th>
                <td><%=t.getName()%></td>
                <td><%=t.getDeadlineDate()%></td>
                <td><%=t.isDone()? "Да" : "Нет"%></td>
                <td><a href="/details?id=<%=t.getId()%>" class="btn" style="background-color: rgb(31,26,98); color: white;">Детали</a></td>
            </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
    </div>




</body>
</html>
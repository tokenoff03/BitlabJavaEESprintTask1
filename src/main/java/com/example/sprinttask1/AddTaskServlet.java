package com.example.sprinttask1;

import com.example.sprinttask1.db.DBManager;
import com.example.sprinttask1.db.Tasks;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/addTask")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/addTask.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Tasks task = new Tasks();
        ArrayList<Tasks> tasks = DBManager.getAllTasks();
        task.setDone(false);
        task.setDescription((String) request.getParameter("description"));
        task.setName((String) request.getParameter("name"));
        task.setDeadlineDate((String) request.getParameter("deadlineDate"));
        DBManager.addTask(task);
        response.sendRedirect("/index");
    }
}

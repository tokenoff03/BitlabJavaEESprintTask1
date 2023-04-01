package com.example.sprinttask1;

import java.io.*;
import java.util.ArrayList;

import com.example.sprinttask1.db.DBManager;
import com.example.sprinttask1.db.Tasks;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(value = "/index")
public class HomeServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        ArrayList<Tasks> tasks = DBManager.getAllTasks();
        request.setAttribute("tasks", tasks);
        boolean checkAddButton = true;
        request.setAttribute("checkAddButton", checkAddButton);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {


    }

}
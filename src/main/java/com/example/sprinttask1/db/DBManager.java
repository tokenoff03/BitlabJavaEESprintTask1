package com.example.sprinttask1.db;

import java.util.ArrayList;
import java.util.List;

public class DBManager {
    static ArrayList<Tasks> tasks = new ArrayList<>();
    private static Long id = 4L;
    static{
        tasks.add(new Tasks(1L, "Low case", "Ku", "2023-02-15"));
        tasks.add(new Tasks(2L, "Meduim case", "Ku", "2023-02-10"));
        tasks.add(new Tasks(3L, "High case", "Ku", "2023-02-05"));

    }

    public static void addTask(Tasks task){
        task.setId(id);
        id++;
        tasks.add(task);
    }

    public static Tasks getTask(Long id){
        for (Tasks t: tasks){
            if(t.getId()==id){
                return t;
            }
        }
        return null;
    }

    public static ArrayList getAllTasks(){
        return tasks;
    }

    public static void deleteTask(Long id){
        for (Tasks t: tasks){
            if(t.getId()==id){
                tasks.remove(t);
            }
        }
    }

    public static void upDateTasks(ArrayList<Tasks> updTasks){
        tasks = updTasks;
    }

}

package controller;

import dao.ProgramDao;
import dao.SheduleDao;
import dao.TeamDao;
import model.Schedule;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class ScheduleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Schedule> schedules = SheduleDao.all_schedule();

        System.out.println(schedules.get(0).getDay());
        System.out.println(schedules.get(schedules.size()-1).getDay());
        System.out.println(schedules.get(schedules.size()-1).getTeam().getName());

        req.setAttribute("schedules",schedules);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/schedule.ftl");
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}

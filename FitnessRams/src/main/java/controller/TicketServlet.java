package controller;

import dao.AbonementDao;
import model.Abonement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class TicketServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Abonement> abonements = AbonementDao.all_abonement();
        req.setAttribute("abonements",abonements);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/ticket.ftl");
        requestDispatcher.forward(req, resp);
    }
}

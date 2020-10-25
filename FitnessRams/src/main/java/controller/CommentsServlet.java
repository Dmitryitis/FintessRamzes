package controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class CommentsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Object user = req.getSession().getAttribute("user");
        if (user == "") {
            System.out.println("it yvgjjkn");
            resp.setContentType("text/plain");
            PrintWriter out = resp.getWriter();
            resp.sendRedirect("/FitnessRams_war/home");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Object user = req.getSession().getAttribute("user");
        if (user == null) {
            req.setAttribute("error", "Вы не вошли в систему");
        }
    }
}
package controller;

import dao.LoginDao;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User();
        Cookie[] cookies = req.getCookies();
        System.out.println(cookies.length);
        if (cookies.length > 1) {
            System.out.println(cookies.length);
            System.out.println(cookies[1].getValue());
            user.setEmail(cookies[1].getValue());
            user.setPassword(cookies[2].getValue());
            user.setId(cookies[3].getValue());
            user = LoginDao.auth(user);
            req.getSession().setAttribute("user", user);
            req.setAttribute("user", user);
        } else {
            req.getSession().setAttribute("user","");;
            req.setAttribute("user","");
        }

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/home.ftl");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getSession().setAttribute("user","");;
        req.setAttribute("user","");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/home.ftl");
        requestDispatcher.forward(req, resp);

    }
}

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
        if (req.getCookies().length > 1) {
            System.out.println("ua");
            req.setAttribute("comment_error", "");
            req.setAttribute("error", "");
            Cookie[] cookies = req.getCookies();
            User user = new User();

            System.out.println(cookies[0].getValue());
            user.setEmail(cookies[1].getValue());
            user.setPassword(cookies[2].getValue());
            user.setId(cookies[3].getValue());
            System.out.println(user.getPassword());
            user = LoginDao.auth(user);

            req.getSession().setAttribute("user",user);
            req.setAttribute("user", user);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/home.ftl");
            requestDispatcher.forward(req, resp);
        } else if (req.getSession().getAttribute("user") != null) {
            req.setAttribute("comment_error", "Вы не вошли в систему");
            req.setAttribute("error", "");
            req.setAttribute("user",req.getSession().getAttribute("user"));
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/home.ftl");
            requestDispatcher.forward(req, resp);
        } else if (req.getSession().getAttribute("user")== null){
            System.out.println("uraa");
            req.setAttribute("comment_error", "Вы не вошли в систему");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/home.ftl");
            requestDispatcher.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getSession().setAttribute("user", "");

        req.setAttribute("user", "");
        req.setAttribute("error", "");
        req.setAttribute("comment_error", "");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/home.ftl");
        requestDispatcher.forward(req, resp);

    }
}

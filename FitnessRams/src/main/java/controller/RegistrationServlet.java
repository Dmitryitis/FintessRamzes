package controller;

import dao.LoginDao;
import dao.RegistrationDao;
import filter.LoginFilter;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegistrationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        RegistrationDao registrationDao = new RegistrationDao();
        User user = new User();
        user.setUsername(req.getParameter("username"));
        user.setSurname(req.getParameter("surname"));
        user.setEmail(req.getParameter("email"));
        user.setPhone(req.getParameter("phone"));

        String password = req.getParameter("password");
        String repeat_password = req.getParameter("password-repeat");
        if (!password.equals(repeat_password)) {
            System.out.println("ouu it is work");
            req.setAttribute("error", "Пароли не совпадают");

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/registration.ftl");
            requestDispatcher.forward(req, resp);
            return;
        } else {
            req.setAttribute("error", "");
            user.setPassword(password);
        }

        if (LoginDao.uniqUser(user)) {
            req.setAttribute("error", "Такой email уже зарегистрирован");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/registration.ftl");
            requestDispatcher.forward(req, resp);
            return;
        } else {
            req.setAttribute("error", "");

        }

        String userRegistr = registrationDao.registerUser(user);

        if (userRegistr.equals("SUCCESS")) {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/login.ftl");
            requestDispatcher.forward(req, resp);
        } else {
            req.setAttribute("error", "Укажите правильно логин или пароль");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("error","");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/registration.ftl");
        requestDispatcher.forward(req, resp);
    }
}

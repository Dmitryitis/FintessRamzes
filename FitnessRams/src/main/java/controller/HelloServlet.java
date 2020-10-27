package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();

        if (cookies.length < 2) {
            req.getSession().setAttribute("user", "");
            req.setAttribute("user", "");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/index.ftl");
            requestDispatcher.forward(req, resp);
        } else {
            resp.sendRedirect("/FitnessRams_war/home");
        }
//        } else {
//            for (Cookie cookie : cookies) {
//                cookie.setValue("");
//                cookie.setMaxAge(0);
//                resp.addCookie(cookie);
//            }
//
//            req.getSession().setAttribute("user", "");
//            req.setAttribute("user", "");
//            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/index.ftl");
//            requestDispatcher.forward(req, resp);
//        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();

        if (cookies != null){
            for (Cookie cookie : cookies) {
                cookie.setValue("");
                cookie.setMaxAge(0);
                resp.addCookie(cookie);
            }

            req.getSession().setAttribute("user", "");
            req.setAttribute("user", "");
        }

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/index.ftl");
        requestDispatcher.forward(req, resp);
    }
}

package controller;

import dao.CommentDao;
import dao.LoginDao;
import model.Comment;
import model.User;
import utilite.KnuthMorrisPrathPatternSearch;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Pattern;

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
            if (KnuthMorrisPrathPatternSearch.patternOfSearch(cookies[1].getValue(),"@")){
                System.out.println("True@");
                user.setEmail(cookies[1].getValue());
                user.setPassword(cookies[2].getValue());
                user.setId(cookies[3].getValue());
            } else {
                user.setEmail(cookies[0].getValue());
                user.setPassword(cookies[1].getValue());
                user.setId(cookies[2].getValue());
            }

            System.out.println(user.getPassword());
            user = LoginDao.auth(user);


            ArrayList<Comment> comments = CommentDao.all_comment();
            if (comments.isEmpty()){
                req.setAttribute("comments",null);
            } else {
                req.setAttribute("comments",comments);
            }

            req.getSession().setAttribute("user",user);
            req.setAttribute("user", user);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/home.ftl");
            requestDispatcher.forward(req, resp);
        }  else if (req.getSession().getAttribute("user") != null) {
            ArrayList<Comment> comments = CommentDao.all_comment();
            System.out.println(comments.get(0).getText_comment());
            System.out.println(comments.get(0).getUser().getImg());

            req.setAttribute("comments",comments);
            req.setAttribute("comment_error", "");
            req.setAttribute("error", "");
            req.setAttribute("user",req.getSession().getAttribute("user"));
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/home.ftl");
            requestDispatcher.forward(req, resp);
        } else if (req.getSession().getAttribute("user")== null){

            ArrayList<Comment> comments = CommentDao.all_comment();
            if (comments.isEmpty()){
                req.setAttribute("comments","");
            } else {
                req.setAttribute("comments",comments);
            }

            System.out.println("uraa");
            req.setAttribute("comment_error", "Вы не вошли в систему");
//            req.setAttribute("comment","");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/home.ftl");
            requestDispatcher.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getSession().setAttribute("user", "");
        ArrayList<Comment> comments = CommentDao.all_comment();

        req.setAttribute("comments",comments);
        req.setAttribute("user", "");
        req.setAttribute("error", "");
        req.setAttribute("comment_error", "Вы не вошли в систему");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/home.ftl");
        requestDispatcher.forward(req, resp);

    }
}

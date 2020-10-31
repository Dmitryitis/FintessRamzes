package controller;

import dao.CommentDao;
import model.Comment;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

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
        req.setCharacterEncoding("UTF-8");

        if (user == null || user.equals("")) {
            System.out.println("blzzz");
            req.setAttribute("error", "Вы не вошли в систему");
            req.setAttribute("comment_error", "Вы не вошли в систему");
        } else {
            String text_comment = req.getParameter("comment");
            System.out.println(text_comment);
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            Date date = new Date();
            String date_comment = dateFormat.format(date);
            Comment comment = new Comment();
            comment.setText_comment(text_comment);
            comment.setDate_comment(date_comment);
            comment.setUser((User)user);
            if (!text_comment.equals("")){
                String res = CommentDao.insert_comment(comment);
            }
        }

        resp.sendRedirect("/FitnessRams_war/home");
    }
}

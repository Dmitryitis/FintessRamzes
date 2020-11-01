package controller;

import dao.DiaryDao;
import model.Diary;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class DiaryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");

        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "abcdefghijklmnopqrstuvxyz";
        int n = 8;


        ArrayList<Diary> diaries = DiaryDao.all_diary(Integer.parseInt(user.getId()));
        for (int j = 0; j < diaries.size(); j++) {
            StringBuilder sb = new StringBuilder(n);
            for (int i = 0; i < n; i++) {
                int index = (int) (AlphaNumericString.length() * Math.random());

                sb.append(AlphaNumericString.charAt(index));
            }
            int ex = (int) ((Math.random() * 4) + 1);
            System.out.println(ex);
            diaries.get(j).setEvent_color(ex);
            diaries.get(j).setString(sb.toString());
        }

        req.setAttribute("diaries", diaries);
        req.getRequestDispatcher("templates/diary.ftl").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String iddiary = req.getParameter("id");
        System.out.println("Diary2: " + iddiary);
        String result = DiaryDao.delete_diary(Integer.parseInt(iddiary));

        if (result.equals("SUCCESS")) {
            resp.sendRedirect("/FitnessRams_war/redactDiary");
        } else {
            req.setAttribute("error_time", "Упс...запись не кдалилась попробуйте снова. Или сообщите нам об ошибке");
            resp.sendRedirect("/FitnessRams_war/redactDiary");
        }

    }
}

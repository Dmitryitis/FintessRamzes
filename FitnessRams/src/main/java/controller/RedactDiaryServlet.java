package controller;

import dao.DiaryDao;
import dao.ProfileDao;
import model.Diary;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class RedactDiaryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        ArrayList<Diary> diaries = DiaryDao.all_diary(Integer.parseInt(user.getId()));

        req.setAttribute("diaries", diaries);
        req.setAttribute("error_time", "");
        req.getRequestDispatcher("templates/redactDiary.ftl").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String[] day = req.getParameterValues("day");
        String[] start_time = req.getParameterValues("start_time");
        String[] end_time = req.getParameterValues("end_time");
        String[] text = req.getParameterValues("text");
        int st_sec = 0;
        int end_sec = 0;
        int st_secJ = 0;
        int end_secJ = 0;
        int right_sec = 9 * 60 * 60;
        int left_sec = 18 * 60 * 60;

        String[] sp_sec = start_time[0].split(":");
        st_sec += Integer.parseInt(sp_sec[0]) * 60 * 60;
        st_sec += Integer.parseInt(sp_sec[1]) * 60;

        String[] sp_sec2 = end_time[0].split(":");
        end_sec += Integer.parseInt(sp_sec2[0]) * 60 * 60;
        end_sec += Integer.parseInt(sp_sec2[1]) * 60;

        if (start_time[0].equals(end_time[0]) || st_sec>end_sec){
            st_sec = 0;
            end_sec = 0;
            User user = (User) req.getSession().getAttribute("user");
            ArrayList<Diary> diaries = DiaryDao.all_diary(Integer.parseInt(user.getId()));

            req.setAttribute("diaries", diaries);
            req.setAttribute("error_time","Время начальное совпадает с временем конечным или больше начальное чем конечное");
            req.getRequestDispatcher("templates/redactDiary.ftl").forward(req,resp);
            return;
        }

        for (int i = 1; i < day.length; i++) {
            st_sec = 0;
            end_sec = 0;

            sp_sec = start_time[i].split(":");

            st_sec += Integer.parseInt(sp_sec[0]) * 60 * 60;
            st_sec += Integer.parseInt(sp_sec[1]) * 60;

            sp_sec2 = end_time[i].split(":");
            end_sec += Integer.parseInt(sp_sec2[0]) * 60 * 60;
            end_sec += Integer.parseInt(sp_sec2[1]) * 60;

            if (st_sec > end_sec) {
                User user = (User) req.getSession().getAttribute("user");
                ArrayList<Diary> diaries = DiaryDao.all_diary(Integer.parseInt(user.getId()));

                req.setAttribute("diaries", diaries);
                req.setAttribute("error_time", "Начальное время больше конечного");
                req.getRequestDispatcher("templates/redactDiary.ftl").forward(req, resp);
                return;
            } else if (st_sec < right_sec) {
                User user = (User) req.getSession().getAttribute("user");
                ArrayList<Diary> diaries = DiaryDao.all_diary(Integer.parseInt(user.getId()));

                req.setAttribute("diaries", diaries);
                req.setAttribute("error_time", "Начальное время меньше 9:00");
                req.getRequestDispatcher("templates/redactDiary.ftl").forward(req, resp);
                return;
            } else if (end_sec > left_sec) {
                User user = (User) req.getSession().getAttribute("user");
                ArrayList<Diary> diaries = DiaryDao.all_diary(Integer.parseInt(user.getId()));

                req.setAttribute("diaries", diaries);

                req.setAttribute("error_time", "Конечное время больше 18:00");
                req.getRequestDispatcher("templates/redactDiary.ftl").forward(req, resp);
                return;
            }
            for (int j = 0; j < i; j++) {
                st_secJ = 0;
                end_secJ = 0;
                String[] sp_secJ = start_time[j].split(":");
                String[] sp_secJ2 = end_time[j].split(":");

                st_secJ += Integer.parseInt(sp_secJ[0]) * 60 * 60;
                st_secJ += Integer.parseInt(sp_secJ[1]) * 60;

                end_secJ += Integer.parseInt(sp_secJ2[0]) * 60 * 60;
                end_secJ += Integer.parseInt(sp_secJ2[1]) * 60;


                if (day[i].equals(day[j])) {
                    if ((start_time[i].equals(start_time[j]))
                            || (start_time[j].equals(end_time[j]))
                            || (end_time[i].equals(end_time[j]))
                            || (end_secJ > st_sec && end_sec > end_secJ)
                            || (st_secJ < end_sec)
                            || (st_sec > st_secJ && end_sec > end_secJ)) {
                        User user = (User) req.getSession().getAttribute("user");
                        ArrayList<Diary> diaries = DiaryDao.all_diary(Integer.parseInt(user.getId()));

                        req.setAttribute("diaries", diaries);
                        req.setAttribute("error_time", "Некоторые промежутки времени пересекаются");
                        req.getRequestDispatcher("templates/redactDiary.ftl").forward(req, resp);
                        return;
                    }
                }
            }
        }


        User user = (User) req.getSession().getAttribute("user");
        String result = "";

        ArrayList<Diary> diaries = DiaryDao.all_diary(Integer.parseInt(user.getId()));
        for (int i = 0; i < day.length; i++) {
            for (int j = 0;j<diaries.size();j++) {
                if (diaries.get(j).getDay().equals(day[i])) {
                    st_secJ = 0;
                    end_secJ = 0;

                    String[] sp_secJ = start_time[i].split(":");
                    String[] sp_secJ2 = end_time[i].split(":");

                    st_secJ += Integer.parseInt(sp_secJ[0]) * 60 * 60;
                    st_secJ += Integer.parseInt(sp_secJ[1]) * 60;

                    end_secJ += Integer.parseInt(sp_secJ2[0]) * 60 * 60;
                    end_secJ += Integer.parseInt(sp_secJ2[1]) * 60;

                    st_sec = 0;
                    end_sec = 0;

                    sp_sec = diaries.get(j).getStart_time().split(":");

                    st_sec += Integer.parseInt(sp_sec[0]) * 60 * 60;
                    st_sec += Integer.parseInt(sp_sec[1]) * 60;

                    sp_sec2 = diaries.get(j).getEnd_time().split(":");

                    end_sec += Integer.parseInt(sp_sec2[0]) * 60 * 60;
                    end_sec += Integer.parseInt(sp_sec2[1]) * 60;

                    if (start_time[i].equals(diaries.get(j).getStart_time()) || (end_time[i].equals(diaries.get(j).getEnd_time()))
                            || (end_secJ > st_sec && end_sec > end_secJ)
                            || (st_secJ < end_sec)
                            || (st_sec > st_secJ && end_sec > end_secJ)) {
                        req.setAttribute("error_time", "Время пересекается у добавленных и добовляемых");
                        resp.sendRedirect("/FitnessRams_war/redactDiary");
                        return;
                    }
                }
            }
        }

        for (int i = 0; i < day.length; i++) {
            Diary diary = new Diary(day[i], start_time[i], end_time[i], text[i], Integer.parseInt(user.getId()));
            diary.setUser(ProfileDao.getUserForId(Integer.parseInt(user.getId())));

            result = DiaryDao.insert_diary(diary);
        }

        if (result.equals("SUCCESS")) {
            resp.sendRedirect("/FitnessRams_war/diary");
            return;
        } else {

            req.setAttribute("diaries", diaries);
            req.setAttribute("error_time", "Ошибка при вводе");
            req.getRequestDispatcher("templates/redactDiary.ftl").forward(req, resp);
        }

        req.setAttribute("error_time", "");
        resp.sendRedirect("/FitnessRams_war/diary");
    }
}

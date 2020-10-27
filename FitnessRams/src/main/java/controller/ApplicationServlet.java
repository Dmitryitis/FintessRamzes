package controller;

import dao.AbonementDao;
import dao.ProfileDao;
import model.Abonement;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ApplicationServlet extends HttpServlet {
    int id_abonement = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String abon1 = req.getParameter("1");
        String abon2 = req.getParameter("2");
        String abon3 = req.getParameter("3");
        if (abon1 != null){
            id_abonement = 1;
        } else if (abon2 != null){
            id_abonement = 2;
        } else if (abon3 != null){
            id_abonement = 3;
        }
        req.setAttribute("error_app", "");
        req.setAttribute("user", "");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/application.ftl");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String email = req.getParameter("email");

        if (req.getSession().getAttribute("user") == "") {
            req.setAttribute("error_app", "Войдите в систему");
            req.setAttribute("user", "");
        } else {
            User user = (User) req.getSession().getAttribute("user");
            if (user.getStatus_abonement() == 1) {
                if (email.equals(user.getEmail())) {
                    ProfileDao.getUser(user);


                    Abonement abonement = AbonementDao.getAbonement(user.getAbonement_id());
                    user.setAbonement(abonement);
                    req.setAttribute("error_app", "У вас уже есть абонемент посмотрите в личном кабинете");
                } else {
                    req.setAttribute("error_app", "Неправильный email, посмотрите в личном кабинете");
                }
            } else {
                if (email.equals(user.getEmail())){
                    System.out.println("urer");
                    user.setStatus_abonement(1);
                    user.setAbonement_id(id_abonement);
                    String res = AbonementDao.updateAbonement(user);
                    if (res.equals("SUCCESS")){
                        Abonement abonement = AbonementDao.getAbonement(user.getAbonement_id());
                        user.setAbonement(abonement);
                        req.setAttribute("error_app", "Ваша заявка отправлена \n Зайдите в личный кабиенет");
                    }
                } else {
                    req.setAttribute("error_app", "Неправильный email, посмотриие в личном кабинете");
                }

            }
        }
        req.getRequestDispatcher("templates/application.ftl").forward(req,resp);
    }
}

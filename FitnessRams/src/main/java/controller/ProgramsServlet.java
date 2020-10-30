package controller;

import com.google.gson.Gson;
import dao.ProgramDao;
import model.Program;
import utilite.KnuthMorrisPrathPatternSearch;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class ProgramsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Program> programs = ProgramDao.all_program();
        req.setAttribute("programs", programs);
        req.setAttribute("err", "");
        req.setAttribute("display", "none");
        req.setAttribute("paginator","block");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/programs.ftl");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        ArrayList<Program> programs = new ArrayList<Program>();
        ArrayList<Program> search_program = new ArrayList<Program>();

        String search = req.getParameter("search");
        req.setAttribute("err", "");

        programs = ProgramDao.all_program();
        if (search != null && !search.equals("")) {
            for (Program program : programs) {
                boolean flag = KnuthMorrisPrathPatternSearch.patternOfSearch(program.getName_program(), search);
                if (flag) {
                    search_program.add(program);
                }

            }
        }  else {
            search_program.addAll(programs);
            req.setAttribute("programs", search_program);
            req.setAttribute("display", "none");
            req.setAttribute("paginator","block");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/programs.ftl");
            requestDispatcher.forward(req, resp);
            return;
        }

        if (search_program.isEmpty()){
            req.setAttribute("err", "Ничего не найдено");
            req.setAttribute("paginator","none");
            req.setAttribute("programs", search_program);
            req.setAttribute("display", "block");

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/programs.ftl");
            requestDispatcher.forward(req, resp);
            return;
        }

        req.setAttribute("programs", search_program);
        req.setAttribute("display", "block");
        req.setAttribute("paginator","block");

        int pr = search_program.size();
        resp.setContentType("text/plain");
        String json = "Найдено: " + pr + " программ";
        System.out.println(json);
        resp.getWriter().print(pr);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/programs.ftl");
        requestDispatcher.forward(req, resp);
    }
}

package controller;

import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

public class ImgServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        User user = (User) req.getSession().getAttribute("user");


        resp.setContentType("image/jpg");
        resp.setCharacterEncoding("UTF-8");
        String file_path = user.getImg();
        File file = new File("C:\\Users\\45\\IdeaProjects\\FitnessRams\\src\\main\\webapp\\"+file_path);
        System.out.println("cook");
        InputStream inp = new FileInputStream(file);
        OutputStream os = resp.getOutputStream();;
        byte[] mass = new byte[2048];
        int b = 0;
        while ((b = inp.read(mass))!= -1){
            os.write(mass,0,b);
        }
        os.close();
        inp.close();
    }
}

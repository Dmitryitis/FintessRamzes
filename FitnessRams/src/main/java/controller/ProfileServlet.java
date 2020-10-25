package controller;

import dao.LoginDao;
import dao.ProfileDao;
import model.User;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.*;
import java.nio.file.Paths;
import java.util.List;

@MultipartConfig
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        User user = (User) req.getSession().getAttribute("user");
        String username = req.getParameter("username");
        System.out.println(username);
        String surname = req.getParameter("surname");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        Part part = req.getPart("img");
        String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        String pathFile = "";
        String absPath = "";

        if (fileName.length()>1){
            InputStream fileContent = part.getInputStream();
            pathFile = "templates\\assets\\dataImg\\"+ user.getEmail()+fileName;
            absPath = "C:\\Users\\45\\IdeaProjects\\FitnessRams\\src\\main\\webapp\\"+pathFile;
            File file = new File(absPath);
            boolean created = file.createNewFile();
            OutputStream os = new FileOutputStream(absPath);
            byte[] b = new byte[2048];
            int j;
            while ((j = fileContent.read(b)) != -1) {
                os.write(b, 0, j);
            }
            fileContent.close();
            os.close();
        }

        if (!pathFile.equals("")){
            user.setImg(pathFile);
        }

        if (!username.equals("")){
            user.setUsername(username);
        }
        if (!surname.equals("")){
            user.setSurname(surname);
        }
        if (!email.equals("")){
            user.setEmail(email);
        }
        if (!phone.equals("")){
            user.setPhone(phone);
        }

        if (LoginDao.uniqUser(user) && email.equals(user.getEmail())) {
            req.setAttribute("error_email", "Такой email уже есть");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/profile.ftl");
            requestDispatcher.forward(req, resp);
            return;
        }

        String redactUser = ProfileDao.redactUser(user);

        req.setAttribute("error_email", "");
        if (redactUser.equals("SUCCESS")) {
            req.setAttribute("user", user);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/redactProfile.ftl");
            requestDispatcher.forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        User user = (User) req.getSession().getAttribute("user");

        req.setAttribute("user", user);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("templates/redactProfile.ftl");
        requestDispatcher.forward(req, resp);
    }
}

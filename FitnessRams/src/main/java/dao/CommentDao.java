package dao;

import model.Comment;
import model.User;
import utilite.DBConnector;

import java.sql.*;
import java.util.ArrayList;

public class CommentDao {
    public static String insert_comment(Comment comment){
        String text_comment = comment.getText_comment();
        String date_comment = comment.getDate_comment();
        int iduser = Integer.parseInt(comment.getUser().getId());

        Connection con = DBConnector.createConnection();

        try {
            String query = "insert into comment (text_comment,date_comment,iduser) values(?,?,?)";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1,text_comment);
            preparedStatement.setString(2,date_comment);
            preparedStatement.setInt(3,iduser);
            int i = preparedStatement.executeUpdate();

            if (i != 0){
                return "SUCCESS";
            }
            con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return "";
    }

    public static ArrayList<Comment> all_comment(){
        ArrayList<Comment> comments = new ArrayList<>();
        String text_comment;
        String date_comment;
        int idUser;
        int idComment;

        Connection con = DBConnector.createConnection();
        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from comment order by idcomment DESC;");
            while (resultSet.next()){
                idUser = resultSet.getInt("iduser");
                idComment = resultSet.getInt("idcomment");
                text_comment = resultSet.getString("text_comment");
                date_comment = resultSet.getString("date_comment");
                Comment comment = new Comment(idComment,text_comment,date_comment,idUser);
                User user = ProfileDao.getUserForId(idUser);
                comment.setUser(user);
                comments.add(comment);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return comments;
    }
}

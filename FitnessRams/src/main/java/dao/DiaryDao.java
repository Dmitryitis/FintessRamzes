package dao;

import model.Diary;
import model.User;
import utilite.DBConnector;

import java.sql.*;
import java.util.ArrayList;

public class DiaryDao {
    public static String insert_diary(Diary diary) {
        Connection con = DBConnector.createConnection();

        try {
            String query = "insert into diary(day,start_time,end_time,text,iduser) values (?,?,?,?,?)";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, diary.getDay());
            preparedStatement.setString(2, diary.getStart_time());
            preparedStatement.setString(3, diary.getEnd_time());
            preparedStatement.setString(4, diary.getText());
            preparedStatement.setInt(5, diary.getIduser());

            int i = preparedStatement.executeUpdate();

            if (i != 0) {
                return "SUCCESS";
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public static ArrayList<Diary> all_diary(int iduser) {
        ArrayList<Diary> diaries = new ArrayList<>();
        int iddiary;
        String day;
        String start_time;
        String end_time;
        String text;
        User user;


        Connection con = DBConnector.createConnection();

        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from diary where iduser = " + iduser);
            while (resultSet.next()) {
                iddiary = resultSet.getInt("iddiary");
                day = resultSet.getString("day");
                start_time = resultSet.getString("start_time");
                end_time = resultSet.getString("end_time");
                text = resultSet.getString("text");
                user = ProfileDao.getUserForId(iduser);
                Diary diary = new Diary(day, start_time, end_time, text, iduser);
                diary.setIddiary(iddiary);
                diary.setUser(user);
                diaries.add(diary);
            }
            con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return diaries;
    }

    public static String delete_diary(int iddiary) {
        Connection connection = DBConnector.createConnection();

        try {
            Statement statement = connection.createStatement();
            int i = statement.executeUpdate("delete from diary where iddiary = " + iddiary);
            if (i != 0) {
                return "SUCCESS";
            }
            connection.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return "";
    }
}

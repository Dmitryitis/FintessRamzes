package dao;

import model.User;
import utilite.DBConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProfileDao {
    public static String redactUser(User user) {
        String username = user.getUsername();
        System.out.println(username);
        String surname = user.getSurname();
        String email = user.getEmail();
        String phone = user.getPhone();

        Connection con = DBConnector.createConnection();

        try {
            if (user.getImg() == null){
                String query = "UPDATE user SET username = ?, surname = ?, email = ?, phone = ? WHERE iduser = ?";
                PreparedStatement preparedStatement = con.prepareStatement(query);
                preparedStatement.setString(1,username);
                preparedStatement.setString(2,surname);
                preparedStatement.setString(3,email);
                preparedStatement.setString(4,phone);
                preparedStatement.setString(5,user.getId());

                int i = preparedStatement.executeUpdate();
                if (i != 0){
                    preparedStatement.close();
                    con.close();
                    return "SUCCESS";
                }
            } else {
                String query = "UPDATE user SET username = ?, surname = ?, email = ?, phone = ?, img = ? WHERE iduser = ?";
                PreparedStatement preparedStatement = con.prepareStatement(query);
                preparedStatement.setString(1,username);
                preparedStatement.setString(2,surname);
                preparedStatement.setString(3,email);
                preparedStatement.setString(4,phone);
                preparedStatement.setString(5,user.getImg());
                preparedStatement.setString(6,user.getId());

                int i = preparedStatement.executeUpdate();
                if (i != 0){
                    preparedStatement.close();
                    con.close();
                    return "SUCCESS";
                }
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return "";
    }
}

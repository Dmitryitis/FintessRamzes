package dao;

import model.User;
import utilite.DBConnector;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {
    public static User auth(User user) {
        String username = user.getEmail();
        String password = user.getPassword();

        if (username == null || password == null){
            return null;
        }

        String usernameDB = "";
        String passwordDB = "";

        Connection con = DBConnector.createConnection();
        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from user");

            while (resultSet.next()) {
                usernameDB = resultSet.getString("email");
                passwordDB = resultSet.getString("password");
                User result = new User();
                if (username.equals(usernameDB) && password.equals(passwordDB)) {
                    result.setEmail(resultSet.getString("email"));
                    result.setId(resultSet.getString("iduser"));
                    result.setImg(resultSet.getString("img"));
                    result.setPassword(resultSet.getString("password"));
                    result.setUsername(resultSet.getString("username"));
                    result.setSurname(resultSet.getString("surname"));
                    result.setStatus_abonement(resultSet.getString("status_abonement"));
                    return result;
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return null;
    }
}

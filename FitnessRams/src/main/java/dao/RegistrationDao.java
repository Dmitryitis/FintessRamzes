package dao;

import model.User;
import utilite.DBConnector;
import utilite.HashingPassword;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegistrationDao {
    public String registerUser(User user){
        String username  = user.getUsername();
        String surname = user.getSurname();
        String password = HashingPassword.md5Custom(user.getPassword());
        String email = user.getEmail();
//        String img = user.getImg();
        String phone = user.getPhone();

        Connection con = DBConnector.createConnection();
        try{
            String query = "insert into user(username,password,surname,email,phone" +
                    ") values (?,?,?,?,?)";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            preparedStatement.setString(3,surname);
            preparedStatement.setString(4,email);
            preparedStatement.setString(5,phone);

            int i= preparedStatement.executeUpdate();
            if (i != 0){
                return "SUCCESS";
            }
            con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}

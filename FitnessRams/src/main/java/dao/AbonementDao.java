package dao;

import model.Abonement;
import model.User;
import utilite.DBConnector;

import javax.jws.soap.SOAPBinding;
import java.sql.*;
import java.util.ArrayList;

public class AbonementDao {
    public static ArrayList<Abonement> all_abonement() {
        ArrayList<Abonement> abonements = new ArrayList<>();
        int idabonement;
        String name_abonement;
        String text;
        int price;

        Connection con = DBConnector.createConnection();

        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from abonement");
            while (resultSet.next()) {
                idabonement = resultSet.getInt("idabonement");
                name_abonement = resultSet.getString("name_abonement");

                text = resultSet.getString("text");
                price = resultSet.getInt("price");
                Abonement abonement = new Abonement(idabonement, text, price, name_abonement);
                abonement.getT();
                abonements.add(abonement);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return abonements;
    }

    public static Abonement getAbonement(int abonement_id) {
        Abonement abonement = null;
        int idabonement;
        String name_abonement;
        String text;
        int price;


        Connection con = DBConnector.createConnection();
        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from abonement where idabonement = " + abonement_id);
            while (resultSet.next()) {
                idabonement = resultSet.getInt("idabonement");
                name_abonement = resultSet.getString("name_abonement");
                text = resultSet.getString("text");
                price = resultSet.getInt("price");
                abonement = new Abonement(idabonement, text, price, name_abonement);
            }
            con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return abonement;
    }

    public static String updateAbonement(User user){
        int status_abonement = user.getStatus_abonement();
        int idabonement = user.getAbonement_id();

        Connection con = DBConnector.createConnection();

        try {
            String query = "update user set status_abonement = ?, abonement_id = ? where iduser = ? ";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setInt(1,status_abonement);
            preparedStatement.setInt(2,idabonement);
            preparedStatement.setString(3,user.getId());

            int i = preparedStatement.executeUpdate();
            if (i != 0){
                preparedStatement.close();
                con.close();
                return "SUCCESS";
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return "";
    }
}

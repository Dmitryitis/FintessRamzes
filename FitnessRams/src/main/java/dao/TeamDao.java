package dao;

import model.Team;
import utilite.DBConnector;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TeamDao {
    public static ArrayList<Team> all_team() {
        ArrayList<Team> teams = new ArrayList<Team>();

        int id;
        String name;
        String surname;
        String about;
        int exp;
        String phone;
        String img;
        String team_id;
        String vk_link;
        String whats_link;

        Connection con = DBConnector.createConnection();

        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from team;");

            while (resultSet.next()) {
                id = resultSet.getInt("idteam");
                name = resultSet.getString("name");
                surname = resultSet.getString("surname");
                about = resultSet.getString("about");
                exp = resultSet.getInt("exp");
                phone = resultSet.getString("phone");
                vk_link = resultSet.getString("vk-link");
                whats_link = resultSet.getString("whatsUp-link");
                img = resultSet.getString("img");
                team_id = resultSet.getString("team_id");
                Team team = new Team(id, name, surname, about, exp, phone, img, team_id, vk_link, whats_link);
                teams.add(team);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        System.out.println(teams);
        return teams;
    }
}

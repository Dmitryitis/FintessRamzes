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
            con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        System.out.println(teams);
        return teams;
    }

    public static Team getTeam(int idteam){
        Team team = new Team();

        Connection con = DBConnector.createConnection();
        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from team");
            while (resultSet.next()){
                if (idteam == resultSet.getInt("idteam")){
                    team.setId(resultSet.getInt("idteam"));
                    team.setName(resultSet.getString("name"));
                    team.setSurname(resultSet.getString("surname"));
                    team.setAbout(resultSet.getString("about"));
                    team.setExp(resultSet.getInt("exp"));
                    team.setPhone(resultSet.getString("phone"));
                    team.setVk_link(resultSet.getString("vk-link"));
                    team.setWhats_link(resultSet.getString("whatsUp-link"));
                    team.setImg(resultSet.getString("img"));
                    team.setTeam_id(resultSet.getString("team_id"));
                    return team;
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return team;
    }
}

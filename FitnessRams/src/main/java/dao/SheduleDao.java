package dao;

import model.Schedule;
import utilite.DBConnector;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class SheduleDao {
    public static ArrayList<Schedule> all_schedule(){
        ArrayList<Schedule> schedules = new ArrayList<>();
        int idschedules;
        String start_time;
        String end_time;
        int team_id;
        int program_id;
        String day;
        String modalid;
        Connection con = DBConnector.createConnection();

        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from shedules");
            while (resultSet.next()) {
                idschedules = resultSet.getInt("idshedules");
                start_time = resultSet.getString("start_time");
                end_time = resultSet.getString("end_time");
                team_id = resultSet.getInt("team_id");
                program_id = resultSet.getInt("program_id");
                day = resultSet.getString("day");
                modalid = resultSet.getString("modalId");
                Schedule schedule = new Schedule(idschedules, start_time, end_time,team_id,program_id,day);
                schedule.setProgram(ProgramDao.getProgram(program_id));
                schedule.setNameForBootstrap(modalid);
                schedule.setTeam(TeamDao.getTeam(team_id));
                schedules.add(schedule);
            }
            con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return schedules;
    }
}

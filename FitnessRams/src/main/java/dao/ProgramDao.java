package dao;

import model.Program;
import utilite.DBConnector;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ProgramDao {
    public static ArrayList<Program> all_program() {
        ArrayList<Program> programs = new ArrayList<Program>();
        int idprogram;
        String name_program;
        int time;
        String text;
        String search_name;
        String img;
        String level;

        Connection con = DBConnector.createConnection();

        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from program;");
            while (resultSet.next()){
                idprogram = resultSet.getInt("idprogram");
                name_program = resultSet.getString("name_program");
                time = resultSet.getInt("time");
                text = resultSet.getString("text");
                search_name = resultSet.getString("search_name");
                level = resultSet.getString("level");
                img = resultSet.getString("img");
                Program program = new Program(idprogram,name_program,time,level,text,search_name,img);
                programs.add(program);
            }
            con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return programs;
    }
}

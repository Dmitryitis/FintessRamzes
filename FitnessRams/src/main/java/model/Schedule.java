package model;

public class Schedule {
    private int idshedules;
    private String start_time;
    private String end_time;
    private int team_id;
    private int program_id;
    private String day;
    private Program program;
    private Team team;
    private String nameForBootstrap;


    public Schedule(int idshedules, String start_time, String end_time, int team_id, int program_id, String day) {
        this.idshedules = idshedules;
        this.start_time = start_time;
        this.end_time = end_time;
        this.team_id = team_id;
        this.program_id = program_id;
        this.day = day;
    }

    public String getNameForBootstrap() {
        return nameForBootstrap;
    }

    public void setNameForBootstrap(String nameForBootstrap) {
        this.nameForBootstrap = nameForBootstrap;
    }

    public Program getProgram() {
        return program;
    }

    public void setProgram(Program program) {
        this.program = program;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    public int getIdshedules() {
        return idshedules;
    }

    public void setIdshedules(int idshedules) {
        this.idshedules = idshedules;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }

    public int getTeam_id() {
        return team_id;
    }

    public void setTeam_id(int team_id) {
        this.team_id = team_id;
    }

    public int getProgram_id() {
        return program_id;
    }

    public void setProgram_id(int program_id) {
        this.program_id = program_id;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }
}

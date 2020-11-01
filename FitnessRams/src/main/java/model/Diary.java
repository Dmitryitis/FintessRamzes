package model;

public class Diary {
    private int iddiary;
    private String day;
    private String start_time;
    private String end_time;
    private String text;
    private int iduser;
    private User user;

    private String string;
    private int event_color;

    public Diary(){}

    public Diary(String day, String start_time, String end_time, String text, int iduser) {
        this.day = day;
        this.start_time = start_time;
        this.end_time = end_time;
        this.text = text;
        this.iduser = iduser;
    }

    public int getEvent_color() {
        return event_color;
    }

    public void setEvent_color(int event_color) {
        this.event_color = event_color;
    }

    public String getString() {
        return string;
    }

    public void setString(String string) {
        this.string = string;
    }

    public int getIddiary() {
        return iddiary;
    }

    public void setIddiary(int iddiary) {
        this.iddiary = iddiary;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
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

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getIduser() {
        return iduser;
    }

    public void setIduser(int iduser) {
        this.iduser = iduser;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}

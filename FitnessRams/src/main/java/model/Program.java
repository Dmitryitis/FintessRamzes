package model;

public class Program {
    private int idprogram;
    private String name_program;
    private int time;
    private String level;
    private String text;
    private String img;
    private String search_name;

    public Program(int idprogram, String name_program, int time, String level, String text, String search_name, String img) {
        this.idprogram = idprogram;
        this.name_program = name_program;
        this.time = time;
        this.level = level;
        this.text = text;
        this.search_name = search_name;
        this.img = img;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public int getIdprogram() {
        return idprogram;
    }

    public void setIdprogram(int idprogram) {
        this.idprogram = idprogram;
    }

    public String getName_program() {
        return name_program;
    }

    public void setName_program(String name_program) {
        this.name_program = name_program;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getSearch_name() {
        return search_name;
    }

    public void setSearch_name(String search_name) {
        this.search_name = search_name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}

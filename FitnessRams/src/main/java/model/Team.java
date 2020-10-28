package model;

public class Team {
    private int id;
    private String name;
    private String surname;
    private String about;
    private int exp;
    private String phone;
    private String img;
    private String team_id;
    private String vk_link;
    private String whats_link;

    public Team(){}

    public Team(int id, String name, String surname, String about, int exp, String phone, String img, String team_id, String vk_link, String whats_link) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.about = about;
        this.exp = exp;
        this.phone = phone;
        this.img = img;
        this.team_id = team_id;
        this.vk_link = vk_link;
        this.whats_link = whats_link;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public int getExp() {
        return exp;
    }

    public void setExp(int exp) {
        this.exp = exp;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTeam_id() {
        return team_id;
    }

    public void setTeam_id(String team_id) {
        this.team_id = team_id;
    }

    public String getVk_link() {
        return vk_link;
    }

    public void setVk_link(String vk_link) {
        this.vk_link = vk_link;
    }

    public String getWhats_link() {
        return whats_link;
    }

    public void setWhats_link(String whats_link) {
        this.whats_link = whats_link;
    }
}

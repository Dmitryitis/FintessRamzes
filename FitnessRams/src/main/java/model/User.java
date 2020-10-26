package model;

public class User {
    private String id;
    private String username;
    private String surname;
    private String password;
    private String email;
    private String img;
    private int status_abonement;
    private String phone;
    private int abonement_id;
    private Abonement abonement;

    public int getAbonement_id() {
        return abonement_id;
    }

    public void setAbonement_id(int abonement_id) {
        this.abonement_id = abonement_id;
    }

    public Abonement getAbonement() {
        return abonement;
    }

    public void setAbonement(Abonement abonement) {
        this.abonement = abonement;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getStatus_abonement() {
        return status_abonement;
    }

    public void setStatus_abonement(int status_abonement) {
        this.status_abonement = status_abonement;
    }
}

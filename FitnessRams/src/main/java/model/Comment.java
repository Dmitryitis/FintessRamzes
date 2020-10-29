package model;

public class Comment {
    private int idcomment;
    private String text_comment;
    private String date_comment;
    private int idUser;
    private User user;

    public Comment(){
    }

    public Comment(int idcomment, String text_comment, String date_comment, int idUser) {
        this.idcomment = idcomment;
        this.text_comment = text_comment;
        this.date_comment = date_comment;
        this.idUser = idUser;
    }

    public int getIdcomment() {
        return idcomment;
    }

    public void setIdcomment(int idcomment) {
        this.idcomment = idcomment;
    }

    public String getText_comment() {
        return text_comment;
    }

    public void setText_comment(String text_comment) {
        this.text_comment = text_comment;
    }

    public String getDate_comment() {
        return date_comment;
    }

    public void setDate_comment(String date_comment) {
        this.date_comment = date_comment;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}

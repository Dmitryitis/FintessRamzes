package model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public class Abonement {
    private int idabonement;
    private String name_abonement;
    private String text;
    private ArrayList<String> t;
    private int price;


    public Abonement(int idabonement, String text, int price, String name_abonement) {
        this.idabonement = idabonement;
        this.text = text;
        this.price = price;
        this.name_abonement = name_abonement;
    }

    public String getName_abonement() {
        return name_abonement;
    }

    public void setName_abonement(String name_abonement) {
        this.name_abonement = name_abonement;
    }

    public int getIdabonement() {
        return idabonement;
    }

    public void setIdabonement(int idabonement) {
        this.idabonement = idabonement;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getPrice() {
        return price;
    }

    public ArrayList<String> getT() {
        t = new ArrayList<>();
        String[] texts = text.split("/");
        for (int i = 0; i < texts.length; i++) {
            t.add(texts[i]);
        }
        return t;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}

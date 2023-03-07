package com.example.demo.Model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public class Utilisateur implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long Id;
    private String Prénom;
    private String Nom;
    private String Adresse;
    private String téléphone;
    


    public Utilisateur() {
         super();
    }


    public Utilisateur(long id, String prénom, String nom, String adresse, String téléphone) {
        super();
        this.Id = id;
        this.Prénom = prénom;
        this.Nom = nom;
        this.Adresse = adresse;
        this.téléphone = téléphone;
    }

    
    public long getId() {
        return Id;
    }
    public void setId(long id) {
        Id = id;
    }
    public String getPrénom() {
        return Prénom;
    }
    public void setPrénom(String prénom) {
        Prénom = prénom;
    }
    public String getNom() {
        return Nom;
    }
    public void setNom(String nom) {
        Nom = nom;
    }
    public String getAdresse() {
        return Adresse;
    }
    public void setAdresse(String adresse) {
        Adresse = adresse;
    }
    public String getTéléphone() {
        return téléphone;
    }
    public void setTéléphone(String téléphone) {
        this.téléphone = téléphone;
    }
}


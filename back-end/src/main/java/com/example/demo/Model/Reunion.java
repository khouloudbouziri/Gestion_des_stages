package com.example.demo.Model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;

@Entity
public class Reunion implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long idReunion;
    private Date date;
    private String type;
    private String Description;

    @ManyToOne
    @JoinColumn(name="idEncadrant")
    private Encadrant encadrant ;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id")
    private Stagiaire stagiaire;

    public Reunion() {
        super();
    }

    public Reunion(long idReunion, Date date, String type, String description, Encadrant encadrant,
            Stagiaire stagiaire) {
        this.idReunion = idReunion;
        this.date = date;
        this.type = type;
        Description = description;
        this.encadrant = encadrant;
        this.stagiaire = stagiaire;
    }

    public long getIdReunion() {
        return idReunion;
    }

    public void setIdReunion(long idReunion) {
        this.idReunion = idReunion;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public Encadrant getEncadrant() {
        return encadrant;
    }

    public void setEncadrant(Encadrant encadrant) {
        this.encadrant = encadrant;
    }

    public Stagiaire getStagiaire() {
        return stagiaire;
    }

    public void setStagiaire(Stagiaire stagiaire) {
        this.stagiaire = stagiaire;
    }
    
    
}

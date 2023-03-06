package com.example.demo.Model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class DepartementSociete  implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long idDepSociete;
    private String libelle ;
    @ManyToOne
    @JoinColumn(name="id")
    private Societe societe ;


    public DepartementSociete() {
        super();
    }

    public DepartementSociete(long idDepSociete, String libelle, Societe Societe) {
    this.idDepSociete = idDepSociete;
    this.libelle = libelle;
    this.societe = societe;
    }

    public long getIdDepSociete() {
        return idDepSociete;
    }
    public void setIdDepSociete(long idDepSociete) {
        this.idDepSociete = idDepSociete;
    }
    public String getLibelle() {
        return libelle;
    }
    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }
    public Societe getSociete() {
        return societe;
    }
    public void setSociete(Societe Societe) {
        this.societe = Societe;
    }

}
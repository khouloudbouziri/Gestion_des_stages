package com.example.demo.Model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class DepartementScolaire  implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long idDepS;
    private String libelle ;
    @ManyToOne
    @JoinColumn(name="id_etablissement")
    private Etablissement etablissement ;


    public DepartementScolaire() {
        super();
    }

    public DepartementScolaire(long idDepS, String libelle, Etablissement etablissement) {
    this.idDepS = idDepS;
    this.libelle = libelle;
    this.etablissement = etablissement;
    }

    public long getIdDepS() {
        return idDepS;
    }
    public void setIdDepS(long idDepS) {
        this.idDepS = idDepS;
    }
    public String getLibelle() {
        return libelle;
    }
    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }
    public Etablissement getEtablissement() {
        return etablissement;
    }
    public void setEtablissement(Etablissement etablissement) {
        this.etablissement = etablissement;
    }

}
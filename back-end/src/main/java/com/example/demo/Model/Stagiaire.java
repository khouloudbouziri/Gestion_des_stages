package com.example.demo.Model;



import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Stagiaire extends Utilisateur {

    private String urlCV;
    private String urlLinkedin;

    @ManyToOne
    @JoinColumn(name = "id_etablissement")
    private Etablissement etablissement;

    public Stagiaire() {
        super();
    }


    public Stagiaire(long id, String prénom, String nom, String adresse, String téléphone, String urlCV,
            String urlLinkedin, Etablissement etablissement) {
        super(id, prénom, nom, adresse, téléphone);
        this.urlCV = urlCV;
        this.urlLinkedin = urlLinkedin;
        this.etablissement = etablissement;
    }


    public String getUrlCV() {
    
      return urlCV;
    }

public Etablissement getEtablissement() {
        return etablissement;
    }





    public void setEtablissement(Etablissement etablissement) {
        this.etablissement = etablissement;
    }





    
    public void setUrlCV(String urlCV) {
        this.urlCV = urlCV;
    }


    public String getUrlLinkedin() {
        return urlLinkedin;
    }


    public void setUrlLinkedin(String urlLinkedin) {
        this.urlLinkedin = urlLinkedin;
    }



    
    
}











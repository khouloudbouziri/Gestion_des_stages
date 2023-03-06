package com.example.demo.Model;

import java.util.Date;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;

@Entity
public class OffreDeStage {
    @EmbeddedId
    private OffreId idAssociationOffre;
    private String type;
    private String description;
    private String location;
    private Date dateDeb;
    private Date dateFin;
    private String travailDemandé;
    private String EnvironnementTechnique;
    private String profilRecherché;
    private int nombreDeStagiaire ;
    private Boolean Renumere;

    
    public OffreDeStage() {
        super();
    }


    public OffreDeStage(OffreId idAssociationOffre, String type, String description, String location, Date dateDeb,
            Date dateFin, String travailDemandé, String environnementTechnique, String profilRecherché,
            int nombreDeStagiaire, Boolean renumere) {
                super();
        this.idAssociationOffre = idAssociationOffre;
        this.type = type;
        this.description = description;
        this.location = location;
        this.dateDeb = dateDeb;
        this.dateFin = dateFin;
        this.travailDemandé = travailDemandé;
        EnvironnementTechnique = environnementTechnique;
        this.profilRecherché = profilRecherché;
        this.nombreDeStagiaire = nombreDeStagiaire;
        Renumere = renumere;
    }


    public OffreId getIdAssociationOffre() {
        return idAssociationOffre;
    }


    public void setIdAssociationOffre(OffreId idAssociationOffre) {
        this.idAssociationOffre = idAssociationOffre;
    }


    public String getType() {
        return type;
    }


    public void setType(String type) {
        this.type = type;
    }


    public String getDescription() {
        return description;
    }


    public void setDescription(String description) {
        this.description = description;
    }


    public String getLocation() {
        return location;
    }


    public void setLocation(String location) {
        this.location = location;
    }


    public Date getDateDeb() {
        return dateDeb;
    }


    public void setDateDeb(Date dateDeb) {
        this.dateDeb = dateDeb;
    }


    public Date getDateFin() {
        return dateFin;
    }


    public void setDateFin(Date dateFin) {
        this.dateFin = dateFin;
    }


    public String getTravailDemandé() {
        return travailDemandé;
    }


    public void setTravailDemandé(String travailDemandé) {
        this.travailDemandé = travailDemandé;
    }


    public String getEnvironnementTechnique() {
        return EnvironnementTechnique;
    }


    public void setEnvironnementTechnique(String environnementTechnique) {
        EnvironnementTechnique = environnementTechnique;
    }


    public String getProfilRecherché() {
        return profilRecherché;
    }


    public void setProfilRecherché(String profilRecherché) {
        this.profilRecherché = profilRecherché;
    }


    public int getNombreDeStagiaire() {
        return nombreDeStagiaire;
    }


    public void setNombreDeStagiaire(int nombreDeStagiaire) {
        this.nombreDeStagiaire = nombreDeStagiaire;
    }


    public Boolean getRenumere() {
        return Renumere;
    }


    public void setRenumere(Boolean renumere) {
        Renumere = renumere;
    }
    
    
    

    
    
}

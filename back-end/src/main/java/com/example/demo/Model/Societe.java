package com.example.demo.Model;

import jakarta.persistence.Entity;


@Entity
public class Societe extends Utilisateur  {

    private String NomSociete;
    private String Matricule_fiscale;
    private long Taille;
    private String Secteur;
    private String Domaine;
    private String Url_lego;

    public Societe() {
        super();
    }

    public Societe(long id, String prénom, String nom, String adresse, String téléphone, String nom2,
            String matricule_fiscale, long taille, String secteur, String domaine,String Url_lego) {
        super(id, prénom, nom, adresse, téléphone);
        NomSociete = nom;
        Matricule_fiscale = matricule_fiscale;
        Taille = taille;
        Secteur = secteur;
        Domaine = domaine;
        Url_lego=Url_lego;
    }

    public String getUrl_lego() {
        return Url_lego;
    }

    public void setUrl_lego(String url_lego) {
        Url_lego = url_lego;
    }

    public String getNom() {
        return NomSociete;
    }

    public void setNom(String nom) {
        NomSociete = nom;
    }

    public String getMatricule_fiscale() {
        return Matricule_fiscale;
    }

    public void setMatricule_fiscale(String matricule_fiscale) {
        Matricule_fiscale = matricule_fiscale;
    }

    
    public long getTaille() {
        return Taille;
    }

    public void setTaille(long taille) {
        Taille = taille;
    }

    public String getSecteur() {
        return Secteur;
    }

    public void setSecteur(String secteur) {
        Secteur = secteur;
    }

    public String getDomaine() {
        return Domaine;
    }

    public void setDomaine(String domaine) {
        Domaine = domaine;
    }

    public String getNomSociete() {
        return NomSociete;
    }

    public void setNomSociete(String nomSociete) {
        NomSociete = nomSociete;
    }

}



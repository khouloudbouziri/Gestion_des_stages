package com.example.demo.Model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.OneToMany;


@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public class Societe extends Utilisateur  {

    private String NomSociete;
    private String Matricule_fiscale;
    private long Taille;
    private String Secteur;
    private String Domaine;
    private String Url_logo;

    
    @OneToMany(mappedBy = "societe")
    protected static List<DepartementSociete> DepartementSocietes;
    
    @OneToMany
    @JoinTable(
            name = "OffreDeStage",
            joinColumns ={ @JoinColumn(name = "id",referencedColumnName = "id")},
            inverseJoinColumns = @JoinColumn(name = "idStage")

    )
    private List<Stage> stages;


    public Societe() {
        super();
    }

    public Societe(long id, String prénom, String nom, String adresse, String téléphone, String nom2,
            String matricule_fiscale, long taille, String secteur, String domaine,String Url_logo, List<DepartementSociete> departementSocietes2, List<Stage> stages2) {
        super(id, prénom, nom, adresse, téléphone);
        NomSociete = nom;
        Matricule_fiscale = matricule_fiscale;
        Taille = taille;
        Secteur = secteur;
        Domaine = domaine;
        Url_logo=Url_logo;
    }

    public String getUrl_logo() {
        return Url_logo;
    }

    public void setUrl_logo(String url_logo) {
        Url_logo = url_logo;
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



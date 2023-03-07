package com.example.demo.Model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.OneToMany;

@Entity
public class Encadrant extends Societe{
    
    private long idEncadrant;

       
    @OneToMany(mappedBy = "encadrant")
    private List<Reunion> Reunions;

    @OneToMany
    @JoinTable(
            name = "Suivie",
            joinColumns = @JoinColumn(name = "idEncadrant"),
            inverseJoinColumns = @JoinColumn(name = "idStage")
    )
    private List<Stage> stages;

    public Encadrant() {
        super();
       
    }


    public Encadrant(long id, String prénom, String nom, String adresse, String téléphone, String nom2,
            String matricule_fiscale, long taille, String secteur, String domaine, String Url_logo, long idEncadrant,
            List<Reunion> reunions, List<Stage> stages) {
        super(id, prénom, nom, adresse, téléphone, nom2, matricule_fiscale, taille, secteur, domaine, Url_logo, DepartementSocietes, stages);
        this.idEncadrant = idEncadrant;
        Reunions = reunions;
        this.stages = stages;
    }


    public long getIdEncadrant() {
        return idEncadrant;
    }

    public void setIdEncadrant(long idEncadrant) {
        this.idEncadrant = idEncadrant;
    }
    
    public List<Reunion> getReunions() {
        return Reunions;
    }

    public void setReunions(List<Reunion> reunions) {
        Reunions = reunions;
    }


    public List<Stage> getStages() {
        return stages;
    }


    public void setStages(List<Stage> stages) {
        this.stages = stages;
    }
    
}

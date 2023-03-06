package com.example.demo.Model;



import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;

@Entity
public class Stagiaire extends Utilisateur {

    private String urlCV;
    private String urlLinkedin;

    @ManyToOne
    @JoinColumn(name = "id_etablissement")
    private Etablissement etablissement;

    @ManyToMany
    @JoinTable(
        name = "DemandeDeStage",
        joinColumns = @JoinColumn(name = "id"),
        inverseJoinColumns = @JoinColumn(name = "idStage")
    )
    private List<Stage> stages;
    
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "idTodo", referencedColumnName = "idTodo")
    private  ToDoList toDoList;


    public Stagiaire() {
        super();
    }


    


    public Stagiaire(long id, String prénom, String nom, String adresse, String téléphone, String urlCV,
            String urlLinkedin, Etablissement etablissement, List<Stage> stages, ToDoList toDoList) {
        super(id, prénom, nom, adresse, téléphone);
        this.urlCV = urlCV;
        this.urlLinkedin = urlLinkedin;
        this.etablissement = etablissement;
        this.stages = stages;
        this.toDoList = toDoList;
        
    }





    public List<Stage> getStages() {
        return stages;
    }





    public void setStages(List<Stage> stages) {
        this.stages = stages;
    }





    public ToDoList getToDoList() {
        return toDoList;
    }





    public void setToDoList(ToDoList toDoList) {
        this.toDoList = toDoList;
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











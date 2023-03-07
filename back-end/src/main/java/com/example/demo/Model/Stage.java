package com.example.demo.Model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;

@Entity
public class Stage implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long idStage;
    private long duree;

    @ManyToMany(mappedBy = "stages")
    private List<Stagiaire> stagiaires;

    public Stage() {
        super();
    
    }

    public Stage(long idStage, long duree) {
        super();
        this.idStage = idStage;
        this.duree = duree;
    }

    public long getIdStage() {
        return idStage;
    }

    public void setIdStage(long idStage) {
        this.idStage = idStage;
    }

    public long getDuree() {
        return duree;
    }

    public void setDuree(long duree) {
        this.duree = duree;
    }
    

    


    
}

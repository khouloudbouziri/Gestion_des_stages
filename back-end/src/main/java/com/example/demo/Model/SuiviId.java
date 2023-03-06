package com.example.demo.Model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class SuiviId  implements Serializable{

    @Column(name="idEncadrant")
    private long idEncadrant;
    
    @Column(name="idStage")
    private long idStage;

    public long getIdEncadrant() {
        return idEncadrant;
    }

    public void setIdEncadrant(long idEncadrant) {
        this.idEncadrant = idEncadrant;
    }

    public long getIdStage() {
        return idStage;
    }

    public void setIdStage(long idStage) {
        this.idStage = idStage;
    }
    
    
}

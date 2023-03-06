package com.example.demo.Model;

import java.io.Serializable;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name="Suivie")
public class Suivi implements Serializable{
    @EmbeddedId
    private SuiviId idAssociation;
    
    private String note ;


    public Suivi() {
        super();
    }


    public Suivi(SuiviId idAssociation, String note) {
        this.idAssociation = idAssociation;
        
        this.note = note;
    }


    public SuiviId getIdAssociation() {
        return idAssociation;
    }


    public void setIdAssociation(SuiviId idAssociation) {
        this.idAssociation = idAssociation;
    }


    public String getNote() {
        return note;
    }


    public void setNote(String note) {
        this.note = note;
    }

    

   


    
}

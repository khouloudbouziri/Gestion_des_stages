package com.example.demo.Model;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;

@Entity
public class DemandeDeStage {
    @EmbeddedId
    private DemandeId idAssociationDemande;
    private String Description;

    
    public DemandeDeStage() {
        super();
    }


    public DemandeDeStage(DemandeId idAssociationDemande, String description) {
        super();
        this.idAssociationDemande = idAssociationDemande;
        Description = description;
    }


    public DemandeId getIdAssociationDemande() {
        return idAssociationDemande;
    }


    public void setIdAssociationDemande(DemandeId idAssociationDemande) {
        this.idAssociationDemande = idAssociationDemande;
    }


    public String getDescription() {
        return Description;
    }


    public void setDescription(String description) {
        Description = description;
    }
    
    
}

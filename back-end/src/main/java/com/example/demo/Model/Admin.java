package com.example.demo.Model;

import jakarta.persistence.Entity;

@Entity
public class Admin extends Utilisateur {

    public Admin() {
        super();
    }

    public Admin(long id, String prénom, String nom, String adresse, String téléphone) {
        super(id, prénom, nom, adresse, téléphone);
    }
    
}

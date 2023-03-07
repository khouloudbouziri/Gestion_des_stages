package com.example.demo.Model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Etablissement implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id_etablissement;
    private String nomEtab;
    private String adresseE;
    private String telephoneE;
    private String fax;
    private String email;

    @OneToMany(mappedBy = "etablissement")
    private List<Stagiaire> stagiaires;

    @OneToMany(mappedBy = "etablissement")
    private List<DepartementScolaire> departementScolaires;

    public Etablissement() {
        super();
    }

   

    public Etablissement(long id_etablissement, String nomEtab, String adresseE, String telephoneE, String fax,
            String email, List<Stagiaire> stagiaires, List<DepartementScolaire> departementScolaires) {
                super();
        this.id_etablissement = id_etablissement;
        this.nomEtab = nomEtab;
        this.adresseE = adresseE;
        this.telephoneE = telephoneE;
        this.fax = fax;
        this.email = email;
        this.stagiaires = stagiaires;
        this.departementScolaires = departementScolaires;
    }



    public String getNomEtab() {
        return nomEtab;
    }



    public void setNomEtab(String nomEtab) {
        this.nomEtab = nomEtab;
    }



    public List<DepartementScolaire> getDepartementScolaires() {
        return departementScolaires;
    }



    public void setDepartementScolaires(List<DepartementScolaire> departementScolaires) {
        this.departementScolaires = departementScolaires;
    }



    public long getId_etablissement() {
        return id_etablissement;
    }

    public void setId_etablissement(long id_etablissement) {
        this.id_etablissement = id_etablissement;
    }

    public String getNomE() {
        return nomEtab;
    }

    public void setNomE(String nomE) {
        this.nomEtab = nomE;
    }

    public String getAdresseE() {
        return adresseE;
    }

    public void setAdresseE(String adresseE) {
        this.adresseE = adresseE;
    }

    public String getTelephoneE() {
        return telephoneE;
    }

    public void setTelephoneE(String telephoneE) {
        this.telephoneE = telephoneE;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Stagiaire> getStagiaires() {
        return stagiaires;
    }

    public void setStagiaires(List<Stagiaire> stagiaires) {
        this.stagiaires = stagiaires;
    }

}
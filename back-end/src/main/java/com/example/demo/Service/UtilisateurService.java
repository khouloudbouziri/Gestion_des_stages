package com.example.demo.Service;


import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.Exception.UserNotFoundException;
import com.example.demo.Model.Utilisateur;
import com.example.demo.Repository.UtilisateurRepository;
@Service
@Transactional
public class UtilisateurService {
	private final UtilisateurRepository utilsateurRepo;
	
	@Autowired
	public UtilisateurService(UtilisateurRepository utilsateurRepo) {
		this.utilsateurRepo = utilsateurRepo;
	}
	
	public Utilisateur addUtilisateur(Utilisateur utilisateur) {
		utilisateur.setNom(UUID.randomUUID().toString());
		return utilsateurRepo.save(utilisateur);
	}
	
	 public List<Utilisateur> findAllUtilisateurs() {
		 return utilsateurRepo.findAll();
	 }
	 
	 public Utilisateur findUtilisateurById(Long id) {
		 return utilsateurRepo.findUtilisateurById(id)
				 .orElseThrow(() -> new UserNotFoundException ("User by id "+ id + "was not found"));
	 }
	 
	 public Utilisateur updateUtilisateur(Utilisateur utilisateur) {
		 return utilsateurRepo.save(utilisateur);
	 }
	 
	 public void deleteUtilisateur(Long id) {
		 utilsateurRepo.deleteUtilisateurById(id);
	 }

}

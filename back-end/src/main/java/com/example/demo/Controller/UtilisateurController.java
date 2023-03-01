package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.Model.Utilisateur;
import com.example.demo.Service.UtilisateurService;
 

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/user")
public class UtilisateurController {
	private final UtilisateurService utilisateurService;
	
	@Autowired
	public UtilisateurController (UtilisateurService utilisateurService) {
		this.utilisateurService = utilisateurService;
	}
	
	@GetMapping("/all")
	public ResponseEntity<List<Utilisateur>> getAllUtilisateur(){
		List<Utilisateur> utilisateurs = utilisateurService.findAllUtilisateurs();
		return new ResponseEntity<>(utilisateurs, HttpStatus.OK);
	}
	
	@GetMapping("/find/{id}")
	public ResponseEntity<Utilisateur> getutilisateurById(@PathVariable("id") Long id){
		Utilisateur utilisateur = utilisateurService.findUtilisateurById(id);
		return new ResponseEntity<>(utilisateur, HttpStatus.OK);
	}
	
	@PostMapping("/add")
	public ResponseEntity<Utilisateur> addutilisateur(@RequestBody Utilisateur utilisateur) {
		Utilisateur newutilisateur = utilisateurService.addUtilisateur(utilisateur);
		return new ResponseEntity<>(newutilisateur, HttpStatus.CREATED);
	}
	
	@PutMapping("/update")
	public ResponseEntity<Utilisateur> updateutilisateur(@RequestBody Utilisateur utilisateur) {
		Utilisateur updateutilisateur = utilisateurService.updateUtilisateur(utilisateur);
		return new ResponseEntity<>(updateutilisateur, HttpStatus.OK);
	}
	
	@DeleteMapping("/delete/{id}")
	public ResponseEntity<?> deleteutilisateur(@PathVariable("id") Long id) {
		utilisateurService.deleteUtilisateur(id);
		return new ResponseEntity<>(HttpStatus.OK);
	}

}
    

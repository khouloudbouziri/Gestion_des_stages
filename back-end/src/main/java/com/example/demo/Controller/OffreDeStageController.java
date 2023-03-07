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

import com.example.demo.Model.OffreDeStage;
import com.example.demo.Service.OffreDeStageService;
 

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/OffreDeStage")
public class OffreDeStageController {
	private final OffreDeStageService offreDeStageService;
	
	@Autowired
	public OffreDeStageController (OffreDeStageService offreDeStageService) {
		this.offreDeStageService = offreDeStageService;
	}
	
	@GetMapping("/all")
	public ResponseEntity<List<OffreDeStage>> getAllOffreDeStage(){
		List<OffreDeStage> OffreDeStages = offreDeStageService.findAllOffreDeStages();
		return new ResponseEntity<>(OffreDeStages, HttpStatus.OK);
	}
	
	//@GetMapping("/find/{id}")
	//public ResponseEntity<OffreDeStage> getOffreDeStageById(@PathVariable("id") Long id){
	//	OffreDeStage offreDeStage = offreDeStageService.findOffreDeStageById(id);
	//	return new ResponseEntity<>(offreDeStage, HttpStatus.OK);
	//}
	
	@PostMapping("/add")
	public ResponseEntity<OffreDeStage> addOffreDeStage(@RequestBody OffreDeStage OffreDeStage) {
		OffreDeStage newOffreDeStage = offreDeStageService.addOffreDeStage(OffreDeStage);
		return new ResponseEntity<>(newOffreDeStage, HttpStatus.CREATED);
	}
	
	@PutMapping("/update")
	public ResponseEntity<OffreDeStage> updateOffreDeStage(@RequestBody OffreDeStage OffreDeStage) {
		OffreDeStage updateOffreDeStage = offreDeStageService.updateOffreDeStage(OffreDeStage);
		return new ResponseEntity<>(updateOffreDeStage, HttpStatus.OK);
	}
	
//	@DeleteMapping("/delete/{id}")
	//public ResponseEntity<?> deleteOffreDeStage(@PathVariable("id") Long id) {
	//	offreDeStageService.deleteOffreDeStage(id);
	//	return new ResponseEntity<>(HttpStatus.OK);
	//}

}
    

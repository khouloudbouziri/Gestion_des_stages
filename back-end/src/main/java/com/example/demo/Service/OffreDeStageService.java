package com.example.demo.Service;


import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.Exception.OffreNotFoundException;
import com.example.demo.Model.OffreDeStage;
import com.example.demo.Repository.OffreRepository;
@Service
@Transactional
public class OffreDeStageService {
	private final OffreRepository offreRepo;
	
	@Autowired
	public OffreDeStageService(OffreRepository offreRepo) {
		this.offreRepo = offreRepo;
	}
	
	public OffreDeStage addOffreDeStage(OffreDeStage offreDeStage) {
		offreDeStage.setDescription(UUID.randomUUID().toString());
		return offreRepo.save(offreDeStage);
	}
	
	 public List<OffreDeStage> findAllOffreDeStages() {
		 return offreRepo.findAll();
	 }
	 
	// public OffreDeStage getOffreDeStage(Long id, Long idStage) {
   //     return offreRepo.findByEmbeddedId(id, idStage).orElseThrow(() -> new OffreNotFoundException ("offre by id "+ id + "was not found"));
   // }

	 public OffreDeStage updateOffreDeStage(OffreDeStage OffreDeStage) {
		 return offreRepo.save(OffreDeStage);
	 }
	 
	// public void deleteOffreDeStage(Long id) {
	//	 offreRepo.deleteOffreById(id);
	 //}

}

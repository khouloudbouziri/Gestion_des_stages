package com.example.demo.Repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Model.OffreDeStage;

@Repository
public interface OffreRepository extends JpaRepository<OffreDeStage, Long>{

	//void deleteOffreById(Long id);
	
	//Optional<OffreDeStage> findOffreById(Long id);

   // OffreDeStage findByEmbeddedId(Long id, Long idStage);
}


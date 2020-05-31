package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


import com.example.demo.models.Paquete;
import com.example.demo.services.PaqueteService;

@RestController
@RequestMapping("/paquetes")
public class PaqueteController {

	@Autowired
	private PaqueteService paqueteService;
	
    @RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<List<Paquete>> listPaquetes(){
		List<Paquete> paquetes= paqueteService.findPaqueteAll();
		if(paquetes.isEmpty()) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(paquetes);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Paquete> getPaqueteFromID(@PathVariable ("id") Integer id){
		Paquete paquete=paqueteService.getPaquete(id);
		if(paquete==null) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(paquete);
	}
	
	@PostMapping
	public ResponseEntity<Paquete> createPaquete(@RequestBody Paquete paquete, BindingResult result){
		if(result.hasErrors()) {
			return null;
		}
		Paquete paqueteDB=paqueteService.createPaquete(paquete);
		return ResponseEntity.status(HttpStatus.CREATED).body(paqueteDB);
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<Paquete> updatePaquete(@PathVariable("id") Integer id, @RequestBody Paquete paquete){
		paquete.setId(id);
		Paquete paqueteDB=paqueteService.updatePaquete(paquete);
		if(paqueteDB==null) {
			return ResponseEntity.notFound().build();
		}
		return ResponseEntity.ok(paqueteDB);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Paquete> deletePaquete(@PathVariable("id") Integer id){
		Paquete paqueteDB=paqueteService.getPaquete(id);
		if(paqueteDB==null) {
			return ResponseEntity.notFound().build();
		}
		Paquete deletedPaquete=paqueteService.deletePaquete(paqueteDB);
		return ResponseEntity.ok(deletedPaquete);
	}
	
}

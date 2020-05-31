package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.models.Mueble;
import com.example.demo.services.MuebleService;

@RestController
@RequestMapping("/muebles")
public class MuebleController {
	
	@Autowired
	private MuebleService muebleService;
	
	@GetMapping
	public ResponseEntity<List<Mueble>> listMuebles(){
		List<Mueble> muebles= muebleService.findMuebleAll();
		if(muebles.isEmpty()) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(muebles);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Mueble> getMuebleFromID(@PathVariable ("id") Integer id){
		Mueble mueble=muebleService.getMueble(id);
		if(mueble==null) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(mueble);
	}
	
	@PostMapping
	public ResponseEntity<Mueble> createMueble(@RequestBody Mueble mueble, BindingResult result){
		if(result.hasErrors()) {
			return null;
		}
		Mueble muebleDB=muebleService.createMueble(mueble);
		return ResponseEntity.status(HttpStatus.CREATED).body(muebleDB);
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<Mueble> updateMueble(@PathVariable("id") Integer id, @RequestBody Mueble mueble){
		mueble.setId(id);
		Mueble muebleDB=muebleService.updateMueble(mueble);
		if(muebleDB==null) {
			return ResponseEntity.notFound().build();
		}
		return ResponseEntity.ok(muebleDB);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Mueble> deleteMueble(@PathVariable("id") Integer id){
		Mueble muebleDB=muebleService.getMueble(id);
		if(muebleDB==null) {
			return ResponseEntity.notFound().build();
		}
		Mueble deletedMueble=muebleService.deleteMueble(muebleDB);
		return ResponseEntity.ok(deletedMueble);
	}
}

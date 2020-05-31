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

import com.example.demo.models.MueblePlantilla;
import com.example.demo.services.MueblePlantillaService;

@Controller
@RequestMapping("/mueblePlantillas")
public class MueblePlantillaController {
	
	@Autowired
	private MueblePlantillaService mueblePlantillaService;
	
	@GetMapping
	public ResponseEntity<List<MueblePlantilla>> listMueblePlantillas(){
		List<MueblePlantilla> mueblePlantillas= mueblePlantillaService.findMueblePlantillaAll();
		if(mueblePlantillas.isEmpty()) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(mueblePlantillas);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<MueblePlantilla> getMueblePlantillaFromID(@PathVariable ("id") Integer id){
		MueblePlantilla mueblePlantilla=mueblePlantillaService.getMueblePlantilla(id);
		if(mueblePlantilla==null) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(mueblePlantilla);
	}
	
	@PostMapping
	public ResponseEntity<MueblePlantilla> createMueblePlantilla(@RequestBody MueblePlantilla mueblePlantilla, BindingResult result){
		if(result.hasErrors()) {
			return null;
		}
		MueblePlantilla mueblePlantillaDB=mueblePlantillaService.createMueblePlantilla(mueblePlantilla);
		return ResponseEntity.status(HttpStatus.CREATED).body(mueblePlantillaDB);
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<MueblePlantilla> updateMueblePlantilla(@PathVariable("id") Integer id, @RequestBody MueblePlantilla mueblePlantilla){
		mueblePlantilla.setId(id);
		MueblePlantilla mueblePlantillaDB=mueblePlantillaService.updateMueblePlantilla(mueblePlantilla);
		if(mueblePlantillaDB==null) {
			return ResponseEntity.notFound().build();
		}
		return ResponseEntity.ok(mueblePlantillaDB);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<MueblePlantilla> deleteMueblePlantilla(@PathVariable("id") Integer id){
		MueblePlantilla mueblePlantillaDB=mueblePlantillaService.getMueblePlantilla(id);
		if(mueblePlantillaDB==null) {
			return ResponseEntity.notFound().build();
		}
		MueblePlantilla deletedMueblePlantilla=mueblePlantillaService.deleteMueblePlantilla(mueblePlantillaDB);
		return ResponseEntity.ok(deletedMueblePlantilla);
	}
}

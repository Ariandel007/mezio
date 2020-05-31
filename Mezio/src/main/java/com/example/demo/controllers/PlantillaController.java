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

import com.example.demo.models.Mueble;
import com.example.demo.models.MueblePlantilla;
import com.example.demo.models.Plantilla;
import com.example.demo.services.MueblePlantillaService;
import com.example.demo.services.MuebleService;
import com.example.demo.services.PlantillaService;

@Controller
@RequestMapping("/plantillas")
public class PlantillaController {
	
	@Autowired
	private PlantillaService plantillaService;
	@Autowired
	private MueblePlantillaService mueblePlantillaService;
	@Autowired
	private MuebleService muebleService;
	
	@GetMapping
	public ResponseEntity<List<Plantilla>> listPlantillas(){
		List<Plantilla> plantillas= plantillaService.findPlantillaAll();
		if(plantillas.isEmpty()) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(plantillas);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Plantilla> getPlantillaFromID(@PathVariable ("id") Integer id){
		Plantilla plantilla=plantillaService.getPlantilla(id);
		if(plantilla==null) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(plantilla);
	}
	
	@PostMapping
	public ResponseEntity<Plantilla> createPlantilla(@RequestBody Plantilla plantilla, BindingResult result){
		if(result.hasErrors()) {
			return null;
		}
		Plantilla plantillaDB=plantillaService.createPlantilla(plantilla);
		return ResponseEntity.status(HttpStatus.CREATED).body(plantillaDB);
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<Plantilla> updatePlantilla(@PathVariable("id") Integer id, @RequestBody Plantilla plantilla){
		plantilla.setId(id);
		Plantilla plantillaDB=plantillaService.updatePlantilla(plantilla);
		if(plantillaDB==null) {
			return ResponseEntity.notFound().build();
		}
		return ResponseEntity.ok(plantillaDB);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Plantilla> deletePlantilla(@PathVariable("id") Integer id){
		Plantilla plantillaDB=plantillaService.getPlantilla(id);
		if(plantillaDB==null) {
			return ResponseEntity.notFound().build();
		}
		Plantilla deletedPlantilla=plantillaService.deletePlantilla(plantillaDB);
		return ResponseEntity.ok(deletedPlantilla);
	}
	
	@PutMapping("/{plantilla_id}/addMueble/{mueble_id}")
	public ResponseEntity<Plantilla> addmueble(@PathVariable("plantilla_id") Integer plantilla_id, @PathVariable("mueble_id")Integer mueble_id, @RequestBody MueblePlantilla mueblePlantilla){
		Mueble muebleDB= muebleService.getMueble(mueble_id);
		if(muebleDB==null) {
			return ResponseEntity.notFound().build();
		}
		Plantilla plantillaDB= plantillaService.getPlantilla(plantilla_id);
		mueblePlantilla.setMueble(muebleDB);
		mueblePlantilla.setPlantilla(plantillaDB);
		mueblePlantillaService.createMueblePlantilla(mueblePlantilla);
		return ResponseEntity.ok(plantillaDB);
	}
	
}

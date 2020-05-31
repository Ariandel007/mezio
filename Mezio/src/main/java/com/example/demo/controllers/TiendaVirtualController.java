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


import com.example.demo.models.TiendaVirtual;
import com.example.demo.services.TiendaVirtualService;

@RestController
@RequestMapping("/tiendas")
public class TiendaVirtualController {
	@Autowired
	private TiendaVirtualService tiendaVirtualService;
	
    @RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<List<TiendaVirtual>> listTiendaVirtuals(){
		List<TiendaVirtual> tiendaVirtuals= tiendaVirtualService.findTiendaVirtualAll();
		if(tiendaVirtuals.isEmpty()) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(tiendaVirtuals);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<TiendaVirtual> getTiendaVirtualFromID(@PathVariable ("id") Integer id){
		TiendaVirtual tiendaVirtual=tiendaVirtualService.getTiendaVirtual(id);
		if(tiendaVirtual==null) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(tiendaVirtual);
	}
	
	@PostMapping
	public ResponseEntity<TiendaVirtual> createTiendaVirtual(@RequestBody TiendaVirtual tiendaVirtual, BindingResult result){
		if(result.hasErrors()) {
			return null;
		}
		TiendaVirtual tiendaVirtualDB=tiendaVirtualService.createTiendaVirtual(tiendaVirtual);
		return ResponseEntity.status(HttpStatus.CREATED).body(tiendaVirtualDB);
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<TiendaVirtual> updateTiendaVirtual(@PathVariable("id") Integer id, @RequestBody TiendaVirtual tiendaVirtual){
		tiendaVirtual.setId(id);
		TiendaVirtual tiendaVirtualDB=tiendaVirtualService.updateTiendaVirtual(tiendaVirtual);
		if(tiendaVirtualDB==null) {
			return ResponseEntity.notFound().build();
		}
		return ResponseEntity.ok(tiendaVirtualDB);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<TiendaVirtual> deleteTiendaVirtual(@PathVariable("id") Integer id){
		TiendaVirtual tiendaVirtualDB=tiendaVirtualService.getTiendaVirtual(id);
		if(tiendaVirtualDB==null) {
			return ResponseEntity.notFound().build();
		}
		TiendaVirtual deletedTiendaVirtual=tiendaVirtualService.deleteTiendaVirtual(tiendaVirtualDB);
		return ResponseEntity.ok(deletedTiendaVirtual);
	}
}

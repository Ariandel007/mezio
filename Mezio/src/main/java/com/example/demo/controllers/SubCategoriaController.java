package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.models.SubCategoria;
import com.example.demo.services.SubCategoriaService;

@RestController
@RequestMapping("/subcategoria")
public class SubCategoriaController {
	SubCategoriaService subCategoriaService;

    @Autowired
    public SubCategoriaController(SubCategoriaService subCategoriaService) {
        this.subCategoriaService=subCategoriaService;
    }
    
    @CrossOrigin
    @RequestMapping
    public ResponseEntity<List<SubCategoria>> listCategorias(){
    	return ResponseEntity.ok(subCategoriaService.findSubCategoriaAll());    
    }
    
    @CrossOrigin
    @RequestMapping(path="/{id}",method = RequestMethod.GET)
    public ResponseEntity<SubCategoria> getCategoria(@PathVariable Integer id){
        return ResponseEntity.ok(subCategoriaService.getSubCategoria(id));
    }
    
    @CrossOrigin
    @PostMapping
    public ResponseEntity<SubCategoria> create(@RequestBody SubCategoria categoria){
        return ResponseEntity.ok(subCategoriaService.createSubCategoria(categoria));
    }
    
    @CrossOrigin
    @PutMapping
    public ResponseEntity<SubCategoria> update(@RequestBody SubCategoria categoria){ 
    	return ResponseEntity.ok(subCategoriaService.updateSubCategoria(categoria));
    }
    
    @CrossOrigin
    @RequestMapping(path="/{id}",method = RequestMethod.DELETE)
    public ResponseEntity<Void> delete(@PathVariable Integer id){
    	SubCategoria subCategoriaEliminar = subCategoriaService.getSubCategoria(id);
    	subCategoriaService.deleteSubCategoria(subCategoriaEliminar);
        return ResponseEntity.noContent().build();
    }
    
}


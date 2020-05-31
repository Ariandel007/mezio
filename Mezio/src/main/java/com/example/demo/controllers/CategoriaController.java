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

import com.example.demo.models.Categoria;
import com.example.demo.services.CategoriaService;

@RestController
@RequestMapping("/categoria")
public class CategoriaController {
	CategoriaService categoriaService;

    @Autowired
    public CategoriaController(CategoriaService categoriaService) {
        this.categoriaService=categoriaService;
    }
    
    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<Categoria>> listCategorias(){
    	return ResponseEntity.ok(categoriaService.findCategoriaAll());    
    }
    
    @CrossOrigin
    @RequestMapping(path="/{id}",method = RequestMethod.GET)
    public ResponseEntity<Categoria> getCategoria(@PathVariable Integer id){
        return ResponseEntity.ok(categoriaService.getCategoria(id));
    }
    @CrossOrigin
    @PostMapping
    public ResponseEntity<Categoria> create(@RequestBody Categoria categoria){
    	categoriaService.createCategoria(categoria);
        return ResponseEntity.ok(categoria);
    }
    @CrossOrigin
    @PutMapping
    public ResponseEntity<Categoria> update(@RequestBody Categoria categoria){ 
    	return ResponseEntity.ok(categoriaService.updateCategoria(categoria));
    }
    @CrossOrigin
    @RequestMapping(path="/{id}",method = RequestMethod.DELETE)
    public ResponseEntity<Void> delete(@PathVariable Integer id){
    	Categoria categoriaEliminar = categoriaService.getCategoria(id);
    	categoriaService.deleteCategoria(categoriaEliminar);
        return ResponseEntity.noContent().build();
    }
    

}

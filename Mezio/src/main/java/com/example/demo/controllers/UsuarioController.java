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

import com.example.demo.models.Usuario;
import com.example.demo.services.UsuarioService;

@RestController
@RequestMapping("/usuario")
public class UsuarioController {
	UsuarioService usuarioService;

    @Autowired
    public UsuarioController(UsuarioService usuarioService) {
        this.usuarioService=usuarioService;
    }
    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity <List<Usuario>> listUsuarios(){    
    	return ResponseEntity.ok(usuarioService.findUsuarioAll());    
    }
    @CrossOrigin
    @RequestMapping(path="/{id}",method = RequestMethod.GET)
    public ResponseEntity<Usuario> getUsuario(@PathVariable int id){
        return ResponseEntity.ok(usuarioService.getUsuario(id));
    }
    @CrossOrigin
    @PostMapping
    public ResponseEntity<Usuario> create(@RequestBody Usuario usuario){
        return ResponseEntity.ok(usuarioService.createUsuario(usuario));
    }
    @CrossOrigin
    @PutMapping
    public ResponseEntity<Usuario> update(@RequestBody Usuario usuario){
    	return ResponseEntity.ok(usuarioService.updateUsuario(usuario));
    }
    @CrossOrigin
    @RequestMapping(path="/{id}",method = RequestMethod.DELETE)
    public ResponseEntity<Void> delete(@PathVariable int id){
    	Usuario usuarioEliminar = usuarioService.getUsuario(id);
    	usuarioService.deleteUsuario(usuarioEliminar);
    	return ResponseEntity.noContent().build();
    }
}

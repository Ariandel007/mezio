package com.example.demo.services;

import java.util.List;

import com.example.demo.models.Usuario;

public interface UsuarioService {

	List<Usuario> findUsuarioAll();
	
	Usuario createUsuario(Usuario usuario);
	Usuario updateUsuario(Usuario usuario);
	Usuario deleteUsuario(Usuario usuario);
	
	Usuario getUsuario(Integer id);
}

package com.example.demo.services;

import java.util.List;

import com.example.demo.models.Usuario;

public interface UsuarioService {

	List<Usuario> findUsuarioAll();
	
	Usuario createUsuario(Usuario Usuario);
	Usuario updateUsuario(Usuario Usuario);
	Usuario deleteUsuario(Usuario Usuario);
	
	Usuario getUsuario(Integer id);
}

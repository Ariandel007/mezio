package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.Usuario;
import com.example.demo.repository.UsuarioRepository;
import com.example.demo.services.UsuarioService;

@Service	
public class UsuarioServiceImpl implements UsuarioService{
	@Autowired
	private UsuarioRepository usuarioRepository;
	@Override
	public List<Usuario> findUsuarioAll() {
		return usuarioRepository.findAll();
	}

	@Override
	public Usuario createUsuario(Usuario usuario) {
		Usuario UsuarioDB=usuarioRepository.findByNumberId(usuario.getId());
		if(UsuarioDB!=null) {
			return null;
		}
		UsuarioDB=usuarioRepository.save(usuario);
		return UsuarioDB;
	}

	@Override
	public Usuario updateUsuario(Usuario usuario) {
		Usuario usuarioDB=usuarioRepository.findByNumberId(usuario.getId());
		if(usuarioDB==null) {
			return null;
		}
		usuarioDB.setCorreo(usuario.getCorreo());
		usuarioDB.setPassword(usuario.getPassword());
		usuarioDB.setUsername(usuario.getUsername());
		usuarioRepository.save(usuarioDB);
		return usuarioDB;
	}

	@Override
	public Usuario deleteUsuario(Usuario usuario) {
		Usuario usuarioDB=usuarioRepository.findByNumberId(usuario.getId());
		if(usuarioDB!=null) {
			return null;
		}
		usuarioRepository.delete(usuarioDB);
		return usuarioDB;
	}

	@Override
	public Usuario getUsuario(Integer id) {
		Usuario usuarioDB=usuarioRepository.findByNumberId(id);
		if(usuarioDB!=null) {
			return null;
		}
		return usuarioDB;
	}
}

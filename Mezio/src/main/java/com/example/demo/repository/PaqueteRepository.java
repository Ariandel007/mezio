package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.models.Categoria;
import com.example.demo.models.Paquete;
import com.example.demo.models.Usuario;



public interface PaqueteRepository extends JpaRepository<Paquete,Integer> {
	
	List<Paquete> findByUsuario(Usuario usuario);
	Paquete findByNumberId(Integer id);
}

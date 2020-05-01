package com.example.demo.services;

import java.util.List;

import com.example.demo.models.Categoria;

public interface CategoriaService {
	
	List<Categoria> findCategoriaAll();
	
	Categoria createCategoria(Categoria categoria);
	Categoria updateCategoria(Categoria categoria);
	Categoria deleteCategoria(Categoria categoria);
	
	Categoria getCategoria(Integer id);

}

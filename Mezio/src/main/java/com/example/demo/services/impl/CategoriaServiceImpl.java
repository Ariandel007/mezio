package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.Categoria;
import com.example.demo.repository.CategoriaRepository;
import com.example.demo.services.CategoriaService;

@Service
public class CategoriaServiceImpl implements CategoriaService{

	@Autowired
	private CategoriaRepository categoriaRepository;
	@Override
	public List<Categoria> findCategoriaAll() {
		return categoriaRepository.findAll();
	}

	@Override
	public Categoria createCategoria(Categoria categoria) {
		Categoria categoriaDB=categoriaRepository.findByNumberId(categoria.getId());
		if(categoriaDB!=null) {
			return null;
		}
		categoriaDB=categoriaRepository.save(categoria);
		return categoriaDB;
	}

	@Override
	public Categoria updateCategoria(Categoria categoria) {
		Categoria categoriaDB=categoriaRepository.findByNumberId(categoria.getId());
		if(categoriaDB==null) {
			return null;
		}
		categoriaDB.setNombre(categoria.getNombre());
		return categoriaDB;
	}

	@Override
	public Categoria deleteCategoria(Categoria categoria) {
		Categoria categoriaDB=categoriaRepository.findByNumberId(categoria.getId());
		if(categoriaDB==null) {
			return null;
		}
		categoriaRepository.delete(categoriaDB);
		return categoriaDB;
	}

	@Override
	public Categoria getCategoria(Integer id) {
		Categoria categoriaDB=categoriaRepository.findByNumberId(id);
		if(categoriaDB==null) {
			return null;
		}
		return categoriaDB;
	}

}

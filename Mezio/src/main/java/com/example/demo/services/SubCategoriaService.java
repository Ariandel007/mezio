package com.example.demo.services;

import java.util.List;

import com.example.demo.models.SubCategoria;

public interface SubCategoriaService {
	
	List<SubCategoria> findSubCategoriaAll();
	
	SubCategoria createSubCategoria(SubCategoria SubCategoria);
	SubCategoria updateSubCategoria(SubCategoria SubCategoria);
	SubCategoria deleteSubCategoria(SubCategoria SubCategoria);
	
	SubCategoria getSubCategoria(Integer id);
}

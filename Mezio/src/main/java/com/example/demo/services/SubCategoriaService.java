package com.example.demo.services;

import java.util.List;

import com.example.demo.models.SubCategoria;

public interface SubCategoriaService {
	
	List<SubCategoria> findSubCategoriaAll();
	
	SubCategoria createSubCategoria(SubCategoria subCategoria);
	SubCategoria updateSubCategoria(SubCategoria subCategoria);
	SubCategoria deleteSubCategoria(SubCategoria subCategoria);
	
	SubCategoria getSubCategoria(Integer id);
}

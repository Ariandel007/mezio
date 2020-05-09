package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.SubCategoria;
import com.example.demo.repository.SubCategoriaRepository;
import com.example.demo.services.SubCategoriaService;

@Service
public class SubCategoriaServiceImpl implements SubCategoriaService{
	@Autowired
	private SubCategoriaRepository subCategoriaRepository;
	@Override
	public List<SubCategoria> findSubCategoriaAll() {
		return subCategoriaRepository.findAll();
	}

	@Override
	public SubCategoria createSubCategoria(SubCategoria subCategoria) {
		SubCategoria subCategoriaDB=subCategoriaRepository.findByNumberId(subCategoria.getId());
		if(subCategoriaDB!=null) {
			return null;
		}
		subCategoriaDB=subCategoriaRepository.save(subCategoria);
		return subCategoriaDB;
	}

	@Override
	public SubCategoria updateSubCategoria(SubCategoria subCategoria) {
		SubCategoria subCategoriaDB=subCategoriaRepository.findByNumberId(subCategoria.getId());
		if(subCategoriaDB==null) {
			return null;
		}
		subCategoriaDB.setNombre(subCategoria.getNombre());
		subCategoriaDB.setCategoria(subCategoria.getCategoria());
		subCategoriaRepository.save(subCategoriaDB);
		return subCategoriaDB;
	}

	@Override
	public SubCategoria deleteSubCategoria(SubCategoria subCategoria) {
		SubCategoria subCategoriaDB=subCategoriaRepository.findByNumberId(subCategoria.getId());
		if(subCategoriaDB==null) {
			return null;
		}
		subCategoriaRepository.delete(subCategoriaDB);
		return subCategoriaDB;
	}

	@Override
	public SubCategoria getSubCategoria(Integer id) {
		SubCategoria subCategoriaDB=subCategoriaRepository.findByNumberId(id);
		if(subCategoriaDB==null) {
			return null;
		}
		return subCategoriaDB;
	}
}

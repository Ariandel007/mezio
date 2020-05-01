package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.models.Categoria;
import com.example.demo.models.SubCategoria;


public interface SubCategoriaRepository extends JpaRepository<SubCategoria,Integer> {

	List<SubCategoria> findByCategoria(Categoria categoria);
	SubCategoria findByNumberId(Integer id);
}

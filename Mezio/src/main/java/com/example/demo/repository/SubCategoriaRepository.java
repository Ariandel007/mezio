package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.models.Categoria;
import com.example.demo.models.SubCategoria;


public interface SubCategoriaRepository extends JpaRepository<SubCategoria,Integer> {

	List<SubCategoria> findByCategoria(Categoria categoria);
	
    @Query(value="select * from sub_categoria where id=?1",nativeQuery = true)
	SubCategoria findByNumberId(Integer id);
}

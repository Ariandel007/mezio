package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.models.Mueble;


public interface MuebleRepository extends JpaRepository<Mueble,Integer> {

	 @Query(value="select * from mueble s where s.cod_sub_categoria=?1",nativeQuery = true)
	 List<Mueble> findMuebleBySubCategoria(int id);
}

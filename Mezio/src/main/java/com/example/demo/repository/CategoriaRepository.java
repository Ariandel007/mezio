package com.example.demo.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.models.Categoria;


@Repository
public interface CategoriaRepository extends JpaRepository<Categoria,Integer>{

    @Query(value="select from categoria where id=?1",nativeQuery = true)
	Categoria findByNumberId(Integer id);
}

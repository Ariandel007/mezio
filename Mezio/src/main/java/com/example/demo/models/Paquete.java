package com.example.demo.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Paquete {

	@Id
	private Integer id;
	private String nombre;
	
	@ManyToOne
    @JoinColumn(name="id_Usuario")
	private Usuario usuario;
}

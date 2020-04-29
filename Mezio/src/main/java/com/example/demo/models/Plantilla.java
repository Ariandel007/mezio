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
public class Plantilla {

	@Id
	public Integer id;
	public double ancho;
	public double alto;
	public double largo;
	public String coordenadas;
	
	@ManyToOne
    @JoinColumn(name="id")
	public Paquete paquete;
	
}

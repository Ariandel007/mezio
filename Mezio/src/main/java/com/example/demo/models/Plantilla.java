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

	private Integer id;
	private Double ancho;
	private Double alto;
	private Double largo;
	private String coordenadas;

	@ManyToOne
    @JoinColumn(name="id_Paquete")
	private Paquete paquete;
	
}

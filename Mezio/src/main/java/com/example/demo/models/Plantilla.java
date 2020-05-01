package com.example.demo.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

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
	
    @OneToMany(mappedBy = "plantilla")
    List<MueblePlantilla> mueblePlantillas;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getAncho() {
		return ancho;
	}

	public void setAncho(Double ancho) {
		this.ancho = ancho;
	}

	public Double getAlto() {
		return alto;
	}

	public void setAlto(Double alto) {
		this.alto = alto;
	}

	public Double getLargo() {
		return largo;
	}

	public void setLargo(Double largo) {
		this.largo = largo;
	}

	public String getCoordenadas() {
		return coordenadas;
	}

	public void setCoordenadas(String coordenadas) {
		this.coordenadas = coordenadas;
	}

	public Paquete getPaquete() {
		return paquete;
	}

	public void setPaquete(Paquete paquete) {
		this.paquete = paquete;
	}

	public List<MueblePlantilla> getMueblePlantillas() {
		return mueblePlantillas;
	}

	public void setMueblePlantillas(List<MueblePlantilla> mueblePlantillas) {
		this.mueblePlantillas = mueblePlantillas;
	}

}

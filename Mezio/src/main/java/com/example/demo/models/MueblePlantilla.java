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
//@AllArgsConstructor
@Entity
public class MueblePlantilla {

	
    @Id
    private Integer id;
 
    @ManyToOne
    @JoinColumn(name = "id_Plantilla")
    private Plantilla plantilla;
 
    @ManyToOne
    @JoinColumn(name = "id_Mueble")
    private Mueble mueble;
 
    private Double rotacion;
    
    private Double coordX;
    
    private Double coordY;

	public MueblePlantilla(Integer id, Plantilla plantilla, Mueble mueble, Double rotacion, Double coordX,
			Double coordY) {
		super();
		this.id = id;
		this.plantilla = plantilla;
		this.mueble = mueble;
		this.rotacion = rotacion;
		this.coordX = coordX;
		this.coordY = coordY;
	}

	public MueblePlantilla() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Plantilla getPlantilla() {
		return plantilla;
	}

	public void setPlantilla(Plantilla plantilla) {
		this.plantilla = plantilla;
	}

	public Mueble getMueble() {
		return mueble;
	}

	public void setMueble(Mueble mueble) {
		this.mueble = mueble;
	}

	public Double getRotacion() {
		return rotacion;
	}

	public void setRotacion(Double rotacion) {
		this.rotacion = rotacion;
	}

	public Double getCoordX() {
		return coordX;
	}

	public void setCoordX(Double coordX) {
		this.coordX = coordX;
	}

	public Double getCoordY() {
		return coordY;
	}

	public void setCoordY(Double coordY) {
		this.coordY = coordY;
	}

}
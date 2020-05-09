package com.example.demo.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.Paquete;
import com.example.demo.repository.PaqueteRepository;
import com.example.demo.services.PaqueteService;

@Service
public class PaqueteServiceImpl implements PaqueteService{
	@Autowired
	private PaqueteRepository paqueteRepository;
	@Override
	public List<Paquete> findPaqueteAll() {
		return paqueteRepository.findAll();
	}

	@Override
	public Paquete createPaquete(Paquete paquete) {
		Paquete paqueteDB=paqueteRepository.findByNumberId(paquete.getId());
		if(paqueteDB!=null) {
			return null;
		}
		paqueteDB=paqueteRepository.save(paquete);
		return paqueteDB;
	}

	@Override
	public Paquete updatePaquete(Paquete paquete) {
		Paquete paqueteDB=paqueteRepository.findByNumberId(paquete.getId());
		if(paqueteDB==null) {
			return null;
		}
		paqueteDB.setNombre(paquete.getNombre());
		paqueteDB.setUsuario(paquete.getUsuario());
		paqueteRepository.save(paqueteDB);
		return paqueteDB;
	}

	@Override
	public Paquete deletePaquete(Paquete paquete) {
		Paquete paqueteDB=paqueteRepository.findByNumberId(paquete.getId());
		if(paqueteDB==null) {
			return null;
		}
		paqueteRepository.delete(paqueteDB);
		return paqueteDB;
	}

	@Override
	public Paquete getPaquete(Integer id) {
		Paquete paqueteDB=paqueteRepository.findByNumberId(id);
		if(paqueteDB==null) {
			return null;
		}
		return paqueteDB;
	}
}

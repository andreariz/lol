package com.biglietteria.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.biglietteria.entities.Biglietto;
import com.biglietteria.entities.Cliente;
import com.biglietteria.entities.Spettacolo;
import com.biglietteria.entities.Teatro;
import com.biglietteria.service.BiglietteriaService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@RestController
@RequestMapping("api")
public class BiglietteriaREST {

	@Autowired
	BiglietteriaService biglietteria;
	

	@GetMapping("spettacoli")
	public List<Spettacolo> getSpettacoliList() {
		return biglietteria.getSpettacoli();
	}
	

	@GetMapping("teatri")
	public List<Teatro> getTeatriList() {
		return biglietteria.getTeatri();
	}
	
	@GetMapping("biglietti")
	public List<Biglietto> getBigliettiList() {
		return biglietteria.getBiglietti();
	}
	
	@GetMapping("clienti")
	public List<Cliente> getClientiList() {
		return biglietteria.getClienti();
	}
	
	@PostMapping("biglietti")
	public Biglietto addPrenotazione(@RequestBody Biglietto b) {
		return biglietteria.addBiglietto(b);
	}
	
	
	
	
	
}

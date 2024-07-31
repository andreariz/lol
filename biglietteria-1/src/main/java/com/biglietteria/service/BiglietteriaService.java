package com.biglietteria.service;

import java.util.List;

import com.biglietteria.entities.Biglietto;
import com.biglietteria.entities.Cliente;
import com.biglietteria.entities.Replica;
import com.biglietteria.entities.Spettacolo;
import com.biglietteria.entities.Teatro;


public interface BiglietteriaService {
	
	List<Teatro> getTeatri();
	List<Spettacolo> getSpettacoli();
	List<Replica> getRepliche();
	
	Teatro addTeatro(Teatro t);
	Spettacolo addSpettacolo(Spettacolo s);
	Replica addReplica(Replica r);
	
	List<Biglietto> getBiglietti();
	Biglietto addBiglietto(Biglietto b);
	
	List<Cliente> getClienti();
	

}

package com.biglietteria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biglietteria.entities.Biglietto;
import com.biglietteria.entities.Cliente;
import com.biglietteria.entities.Replica;
import com.biglietteria.entities.Spettacolo;
import com.biglietteria.entities.Teatro;
import com.biglietteria.repos.BigliettoDAO;
import com.biglietteria.repos.ClienteDAO;
import com.biglietteria.repos.ReplicaDAO;
import com.biglietteria.repos.SpettacoloDAO;
import com.biglietteria.repos.TeatroDAO;

@Service
public class BiglietteriaServiceIMPL implements BiglietteriaService {

	@Autowired
	private ReplicaDAO replicaDao;
	@Autowired
	private SpettacoloDAO spettacoloDao;
	@Autowired
	private TeatroDAO teatroDao;

	@Autowired
	private BigliettoDAO bigliettoDao ;
	

	@Autowired
	private ClienteDAO clienteDao ;
	
	
	@Override
	public List<Teatro> getTeatri() {
		// TODO Auto-generated method stub
		return teatroDao.findAll() ;
	}

	@Override
	public List<Spettacolo> getSpettacoli() {
		// TODO Auto-generated method stub
		return spettacoloDao.findAll();
	}

	@Override
	public List<Replica> getRepliche() {
		// TODO Auto-generated method stub
		return replicaDao.findAll();
	}

	@Override
	public Teatro addTeatro(Teatro t) {
		// TODO Auto-generated method stub
		return teatroDao.save(t);
	}

	@Override
	public Spettacolo addSpettacolo(Spettacolo s) {
		// TODO Auto-generated method stub
		return spettacoloDao.save(s);
	}

	@Override
	public Replica addReplica(Replica r) {
		// TODO Auto-generated method stub
		return replicaDao.save(r);
	}

	@Override
	public List<Biglietto> getBiglietti() {
		// TODO Auto-generated method stub
		return bigliettoDao.findAll();
	}

	@Override
	public Biglietto addBiglietto(Biglietto b) {
		// TODO Auto-generated method stub
		return bigliettoDao.save(b);
	}

	@Override
	public List<Cliente> getClienti() {
		// TODO Auto-generated method stub
		return clienteDao.findAll();
	}




}

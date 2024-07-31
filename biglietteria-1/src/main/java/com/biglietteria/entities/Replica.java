package com.biglietteria.entities;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="replica")
public class Replica {

	
	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name = "cod_replica")
	private String codReplica;
	
	@ManyToOne
	@JoinColumn(name="cod_spettacolo", nullable=false)
	private Spettacolo spettacolo;
	
	private LocalDate dataReplica;
}

package com.biglietteria.entities;

import org.hibernate.annotations.GenericGenerator;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="spettacolo")



public class Spettacolo {


	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name = "cod_spettacolo")
	private String codSpettacolo;
	private String titolo;
	private String autore;
	private String regista;
	private double prezzo;	
	
	@ManyToOne
	@JoinColumn(name="cod_teatro", nullable=false)
	private Teatro codTeatro;

	
	
	
	public String getCodSpettacolo() {
		return codSpettacolo;
	}

	public void setCodSpettacolo(String codSpettacolo) {
		this.codSpettacolo = codSpettacolo;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public String getAutore() {
		return autore;
	}

	public void setAutore(String autore) {
		this.autore = autore;
	}

	public String getRegista() {
		return regista;
	}

	public void setRegista(String regista) {
		this.regista = regista;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	public Teatro getCodTeatro() {
		return codTeatro;
	}

	public void setCodTeatro(Teatro codTeatro) {
		this.codTeatro = codTeatro;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Spettacolo [codSpettacolo=");
		builder.append(codSpettacolo);
		builder.append(", titolo=");
		builder.append(titolo);
		builder.append(", autore=");
		builder.append(autore);
		builder.append(", regista=");
		builder.append(regista);
		builder.append(", prezzo=");
		builder.append(prezzo);
		builder.append(", codTeatro=");
		builder.append(codTeatro);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	
	
	
}

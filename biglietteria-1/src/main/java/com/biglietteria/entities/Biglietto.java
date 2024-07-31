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
@Table(name="biglietto")
public class Biglietto {


	@Id
	@GeneratedValue(generator = "uuid")
	@Column(name = "cod_operazione")
	private String codOperazione;
	@ManyToOne
	@JoinColumn(name="cod_cliente", nullable=false)
	private Cliente cliente;
	
	
	@ManyToOne
	@JoinColumn(name="cod_replica", nullable=false)
	private Replica replica;
	
	private LocalDate data;
	private String tipoPagamento;
	private int quantita;
	
	
	public String getCodOperazione() {
		return codOperazione;
	}
	public void setCodOperazione(String codOperazione) {
		this.codOperazione = codOperazione;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public Replica getReplica() {
		return replica;
	}
	public void setReplica(Replica replica) {
		this.replica = replica;
	}
	public LocalDate getData() {
		return data;
	}
	public void setData(LocalDate data) {
		this.data = data;
	}
	public String getTipoPagamento() {
		return tipoPagamento;
	}
	public void setTipoPagamento(String tipoPagamento) {
		this.tipoPagamento = tipoPagamento;
	}
	public int getQuantita() {
		return quantita;
	}
	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Biglietto [codOperazione=");
		builder.append(codOperazione);
		builder.append(", cliente=");
		builder.append(cliente);
		builder.append(", replica=");
		builder.append(replica);
		builder.append(", data=");
		builder.append(data);
		builder.append(", tipoPagamento=");
		builder.append(tipoPagamento);
		builder.append(", quantita=");
		builder.append(quantita);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	
}

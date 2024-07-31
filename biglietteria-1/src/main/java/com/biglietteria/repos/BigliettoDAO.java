package com.biglietteria.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.biglietteria.entities.Biglietto;

public interface BigliettoDAO extends JpaRepository<Biglietto, String> {

}

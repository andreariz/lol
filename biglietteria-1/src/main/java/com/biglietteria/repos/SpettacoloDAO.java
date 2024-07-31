package com.biglietteria.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.biglietteria.entities.Spettacolo;

public interface SpettacoloDAO extends JpaRepository<Spettacolo, String> {

}

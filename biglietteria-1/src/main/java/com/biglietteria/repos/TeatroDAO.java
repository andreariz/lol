package com.biglietteria.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.biglietteria.entities.Teatro;

public interface TeatroDAO extends JpaRepository<Teatro, String> {

}

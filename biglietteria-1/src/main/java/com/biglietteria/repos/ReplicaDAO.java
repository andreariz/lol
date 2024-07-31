package com.biglietteria.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.biglietteria.entities.Replica;

public interface ReplicaDAO extends JpaRepository<Replica, String> {

}

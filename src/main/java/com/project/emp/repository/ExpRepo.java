package com.project.emp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.emp.model.Experience;

@Repository
public interface ExpRepo extends JpaRepository<Experience, Integer> {

}

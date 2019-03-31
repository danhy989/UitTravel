package com.seuit.spring.uittravel.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.seuit.spring.uittravel.entity.Area;

@Repository
public interface AreaRepository extends JpaRepository<Area, Integer> {

}

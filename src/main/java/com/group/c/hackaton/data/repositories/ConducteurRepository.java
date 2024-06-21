package com.group.c.hackaton.data.repositories;

import com.group.c.hackaton.data.entities.ConducteurEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ConducteurRepository extends JpaRepository<ConducteurEntity,Long>  {
    Page<ConducteurEntity> findAll(Pageable pageable);

    ConducteurEntity findByTelephone(String tel);

    Optional<ConducteurEntity> findById(Long id);

}

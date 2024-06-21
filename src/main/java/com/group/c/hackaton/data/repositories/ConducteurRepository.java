package com.group.c.hackaton.data.repositories;

import com.group.c.hackaton.data.entities.Trajet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TrajetRepository extends JpaRepository<Trajet,Long>  {
    Page<Trajet> findAll(Pageable pageable);

}

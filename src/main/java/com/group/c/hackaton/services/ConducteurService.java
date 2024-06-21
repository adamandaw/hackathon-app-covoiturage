package com.group.c.hackaton.services;

import com.group.c.hackaton.data.entities.ConducteurEntity;
import com.group.c.hackaton.data.entities.Trajet;
import com.group.c.hackaton.web.dto.request.TrajetDtoRequest;
import org.springframework.data.domain.Page;

public interface ConducteurService {


    ConducteurEntity getByTelephone(String tel);

    ConducteurEntity getOneConducteurById(Long id);
    Page<ConducteurEntity> getListOfConducteur(int page, int size);
}
package com.group.c.hackaton.services;

import com.group.c.hackaton.data.entities.Trajet;
import com.group.c.hackaton.web.dto.request.TrajetDtoRequest;
import org.springframework.data.domain.Page;

public interface TrajetService {

    void store(TrajetDtoRequest trajetDtoRequest);

    Page<Trajet> getListOfTrajet(int page, int size);

}
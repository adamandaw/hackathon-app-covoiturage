package com.group.c.hackaton.services.impl;

import com.group.c.hackaton.data.entities.ConducteurEntity;
import com.group.c.hackaton.data.entities.Trajet;
import com.group.c.hackaton.data.repositories.ConducteurRepository;
import com.group.c.hackaton.data.repositories.TrajetRepository;
import com.group.c.hackaton.services.TrajetService;
import com.group.c.hackaton.web.dto.request.TrajetDtoRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class TrajetServiceImpl implements TrajetService {
    private  final TrajetRepository trajetRepository;
    private final ConducteurRepository conducteurRepository;
    @Override
    public void store(TrajetDtoRequest trajetDtoRequest) {

        Trajet entity = trajetDtoRequest.toEntity();
        entity.setId(trajetDtoRequest.getId());
        entity.setPrix(trajetDtoRequest.getPrix());
        entity.setDepart(trajetDtoRequest.getDepart());
        entity.setDestination(trajetDtoRequest.getDestination());
        entity.setDate(trajetDtoRequest.getDate());
        entity.setNbrPlace(trajetDtoRequest.getNbrPlace());
        //INFO CONDUCTEUR
        if (trajetDtoRequest.getConducteur() != null) {
            entity.setConducteur(trajetDtoRequest.getConducteur());
        }


        trajetRepository.save(entity);
    }

    @Override
    public Page<Trajet> getListOfTrajet(int page, int size) {

        return trajetRepository.findAll(PageRequest.of(page,size));
    }
}

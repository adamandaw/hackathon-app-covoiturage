package com.group.c.hackaton.services.impl;

import com.group.c.hackaton.data.entities.Trajet;
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
    @Override
    public void store(TrajetDtoRequest trajetDtoRequest) {
        Trajet entity = trajetDtoRequest.toEntity();

        trajetRepository.save(entity);
    }

    @Override
    public Page<Trajet> getListOfTrajet(int page, int size) {

        return trajetRepository.findAll(PageRequest.of(page,size));
    }
}

package com.group.c.hackaton.services.impl;

import com.group.c.hackaton.data.entities.ConducteurEntity;
import com.group.c.hackaton.data.repositories.ConducteurRepository;
import com.group.c.hackaton.services.ConducteurService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ConducteurServiceImpl implements ConducteurService {
    private final ConducteurRepository conducteurRepository;
    @Override
    public ConducteurEntity getByTelephone(String tel) {
        return  conducteurRepository.findByTelephone(tel);
    }

    @Override
    public ConducteurEntity getOneConducteurById(Long id) {
        return conducteurRepository.findById(id).get();
    }

    @Override
    public Page<ConducteurEntity> getListOfConducteur(int page, int size) {
        return conducteurRepository.findAll(PageRequest.of(page,size));
    }
}

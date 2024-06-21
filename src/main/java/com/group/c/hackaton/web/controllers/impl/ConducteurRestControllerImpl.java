package com.group.c.hackaton.web.controllers.impl;

import com.group.c.hackaton.data.entities.ConducteurEntity;
import com.group.c.hackaton.data.entities.Trajet;
import com.group.c.hackaton.services.ConducteurService;
import com.group.c.hackaton.web.controllers.ConducteurRestController;
import com.group.c.hackaton.web.dto.responses.ConducteurDtoResponse;
import com.group.c.hackaton.web.dto.responses.OneConductorWithHerTrajectDtoResponse;
import com.group.c.hackaton.web.dto.responses.RestResponse;
import com.group.c.hackaton.web.dto.responses.TrajetDtoResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;
@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class ConducteurRestControllerImpl implements ConducteurRestController {
    private final ConducteurService conducteurService;
    @Override
    public ResponseEntity<Map<Object, Object>> listerConducteurs(int page, int size) {
        Map<Object,Object> response = new HashMap<>();

        Page<ConducteurEntity> conducteurs = conducteurService.getListOfConducteur(page,size);

        Page<ConducteurDtoResponse> list = conducteurs.map(
                c -> ConducteurDtoResponse.toDto(c)
        );

        response = RestResponse.paginateResponse(list.getContent(),
                new int[list.getTotalPages()], page, list.getTotalElements()
                , list.getTotalPages(),  HttpStatus.OK);


        return new ResponseEntity<>(response, HttpStatus.OK );
    }

    @Override
    public ResponseEntity<Map<Object, Object>> unConducteur(Long conducteurId) {
        Map<Object,Object> response = new HashMap<>();
        ConducteurEntity oneConducteurById = conducteurService.getOneConducteurById(conducteurId);
        if (oneConducteurById == null) {
            return new ResponseEntity<>(null, HttpStatus.NOT_FOUND );
        }
        response = RestResponse.toSingleResponse(OneConductorWithHerTrajectDtoResponse.toDto(oneConducteurById),HttpStatus.OK);

        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}

package com.group.c.hackaton.web.controllers.impl;

import com.group.c.hackaton.data.entities.Trajet;
import com.group.c.hackaton.services.TrajetService;
import com.group.c.hackaton.web.controllers.TrajetRestController;
import com.group.c.hackaton.web.dto.request.TrajetDtoRequest;
import com.group.c.hackaton.web.dto.responses.RestResponse;
import com.group.c.hackaton.web.dto.responses.TrajetDtoResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class TrajetRestControllerImpl implements TrajetRestController {
    private final TrajetService trajetService;
    @Override
    public ResponseEntity<Map<Object, Object>> listerTousLesTrajets(@RequestParam(defaultValue = "0") int page,
                                                                    @RequestParam(defaultValue = "8") int size) {
        Map<Object,Object> response = new HashMap<>();

        Page<Trajet> trajets = trajetService.getListOfTrajet(page,size);

        Page<TrajetDtoResponse> list = trajets.map(
                trajet -> TrajetDtoResponse.toDto(trajet)
        );

            response = RestResponse.paginateResponse(list.getContent(),
                    new int[list.getTotalPages()], page, list.getTotalElements()
                    , list.getTotalPages(),  HttpStatus.OK);


        return new ResponseEntity<>(response, HttpStatus.OK );

    }

    @Override
    public ResponseEntity<Map<Object, Object>> create(TrajetDtoRequest trajetDtoRequest, BindingResult bindingResult) {
        Map<Object, Object> response;
        if (bindingResult.hasErrors()){
            Map<String, String> errors =new HashMap<>();
            List<FieldError> fieldErrors = bindingResult.getFieldErrors();
            fieldErrors.forEach(fieldError -> errors.put(fieldError.getField(),fieldError.getDefaultMessage()));
            response= RestResponse.toSingleResponse(errors, HttpStatus.NOT_FOUND);
        }else{
            trajetService.store(trajetDtoRequest);
            response= RestResponse.toSingleResponse(trajetDtoRequest,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}

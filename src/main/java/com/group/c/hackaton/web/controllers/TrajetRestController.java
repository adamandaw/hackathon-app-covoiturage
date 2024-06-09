package com.group.c.hackaton.web.controllers;

import com.group.c.hackaton.web.dto.request.TrajetDtoRequest;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

public interface TrajetRestController {

    @GetMapping("/trajet/list/all")
    ResponseEntity<Map<Object,Object>> listerTousLesTrajets( @RequestParam(defaultValue = "0") int page,
                                                             @RequestParam(defaultValue = "8") int size);

    @PostMapping("/trajet")
    ResponseEntity<Map<Object, Object>> create(@Valid @RequestBody TrajetDtoRequest trajetDtoRequest, BindingResult bindingResult);
}





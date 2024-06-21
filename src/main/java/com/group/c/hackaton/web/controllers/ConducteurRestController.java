package com.group.c.hackaton.web.controllers;

import com.group.c.hackaton.web.dto.request.TrajetDtoRequest;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

public interface ConducteurRestController {

    @GetMapping("/conducteur/list/all")
    ResponseEntity<Map<Object,Object>> listerConducteurs( @RequestParam(defaultValue = "0") int page,
                                                             @RequestParam(defaultValue = "10") int size);

    @GetMapping("/conducteur/{conducteurId}")
    ResponseEntity<Map<Object,Object>> unConducteur( @PathVariable( name = "conducteurId") Long conducteurId);

//    @PostMapping("/conducteur/{conducteurTelephone}")
//    ResponseEntity<Map<Object, Object>> create(@PathVariable(required = false) String conducteurTelephone,
//                                               @Valid @RequestBody TrajetDtoRequest trajetDtoRequest,
//                                               BindingResult bindingResult);
}





package com.group.c.hackaton.security.controllers.impl;



import com.group.c.hackaton.security.controllers.dtos.AuthenticationRequestDto;
import com.group.c.hackaton.security.controllers.dtos.TokenReponseDto;
import com.group.c.hackaton.security.services.SecurityService;
import com.group.c.hackaton.security.services.impl.JwtService;
import com.group.c.hackaton.web.dto.responses.RestResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.group.c.hackaton.security.controllers.SecurityController;

import java.util.Map;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class SecurityControllerImpl implements SecurityController {
    private final AuthenticationManager authenticationManager;
    private final JwtService jwtService;


    @Override
    public ResponseEntity<Map<Object, Object>> login(AuthenticationRequestDto authenticationRequestDto) {
        Authentication authenticate = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(authenticationRequestDto.getUsername(), authenticationRequestDto.getPassword()));
        Map<Object, Object> response;
        if(authenticate.isAuthenticated()){
            //Generer le token
             String token= jwtService.createToken(authenticationRequestDto.getUsername());
            TokenReponseDto tokenDto = TokenReponseDto.builder()
                    .token(token)
                    .username(authenticationRequestDto.getUsername())
                    .roles(authenticate.getAuthorities().stream().map(GrantedAuthority::getAuthority).toList())
                    .build();
            response= RestResponse.toSingleResponse(tokenDto, HttpStatus.OK);
        }else{
            response= RestResponse.toSingleResponse(null, HttpStatus.NOT_FOUND);
        }
        return ResponseEntity.ok(response);
    }
}

package com.group.c.hackaton.web.dto.responses;

import com.group.c.hackaton.data.entities.ConducteurEntity;
import com.group.c.hackaton.data.entities.Trajet;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ConducteurDtoResponse {
    private Long id;
    private String nom;
    private String telephone;



    public static ConducteurDtoResponse toDto(ConducteurEntity conducteur){

        return  ConducteurDtoResponse.builder()
                .id(conducteur.getId())
                .nom(conducteur.getNom())
                .telephone(conducteur.getTelephone())
                .build();
    }
    
}

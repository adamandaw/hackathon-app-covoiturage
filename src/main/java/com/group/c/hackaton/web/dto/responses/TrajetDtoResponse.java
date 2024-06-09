package com.group.c.hackaton.web.dto.responses;

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
public class TrajetDtoResponse {
    private Long id;
    private String libelle;
    private LocalDate date;



    public static TrajetDtoResponse toDto(Trajet trajet){

        return  TrajetDtoResponse.builder()
                .id(trajet.getId())
                .libelle(trajet.getDepart()+" - "+ trajet.getDestination())
                .date(trajet.getDate())
                .build();
    }
    
}

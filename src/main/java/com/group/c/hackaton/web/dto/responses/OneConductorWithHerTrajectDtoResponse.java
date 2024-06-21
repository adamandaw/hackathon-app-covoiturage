package com.group.c.hackaton.web.dto.responses;

import com.group.c.hackaton.data.entities.ConducteurEntity;
import com.group.c.hackaton.data.entities.Trajet;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class OneConductorWithHerTrajectDtoResponse {
    private Long id;
    private String nom;
    private String telephone;
    private List<TrajetDtoResponse> trajets;
    public static OneConductorWithHerTrajectDtoResponse toDto(ConducteurEntity conducteur){

        return  OneConductorWithHerTrajectDtoResponse.builder()
                .id(conducteur.getId())
                .nom(conducteur.getNom())
                .telephone(conducteur.getTelephone())
                .trajets(conducteur.getTrajets().stream().map(
                        t -> TrajetDtoResponse.toDto(t)
                ).toList())
                .build();
    }
}

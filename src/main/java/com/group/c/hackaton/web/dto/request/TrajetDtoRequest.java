package com.group.c.hackaton.web.dto.request;

import com.group.c.hackaton.data.entities.Trajet;
import jakarta.persistence.Column;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class TrajetDtoRequest {

    private Long id;


    @NotBlank(message = "La destination est obligatoire")
    private String destination;
    @NotBlank(message = "Le depart est obligatoire")
    private String depart;


    @Column
    private Double prix;

    @Column
    private Integer nbrPlace;

    private LocalDate date;
    //Mapper
    public Trajet toEntity(){
        Trajet trajet = Trajet.builder()
                .date(date)
                .nbrPlace(nbrPlace)
                .depart(depart)
                .destination(destination)
                .build();

        return trajet;
    }

}

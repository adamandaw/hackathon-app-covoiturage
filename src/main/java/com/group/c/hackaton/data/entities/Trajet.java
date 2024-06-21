package com.group.c.hackaton.data.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Entity
@Table(name = "trajets")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Trajet extends  AbstractEntity{

    @Column
    private String depart;
    @Column
    private String destination;

    @Column
    private Double prix;

    @Column
    private Integer nbrPlace;

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd-MM-yyyy")
    private LocalDate date;

    @ManyToOne()
    private ConducteurEntity conducteur;
}

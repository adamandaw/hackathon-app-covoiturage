package com.group.c.hackaton.data.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "conducteurs")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ConducteurEntity extends AbstractEntity {


    @OneToMany(mappedBy = "conducteur")
    private List<Trajet> trajets;
    @Column
   private String nom;

    @Column
    private String prenom;

    @Column
    private String telephone;


    @Embedded
    private VehiculeEntity vehicule;
}

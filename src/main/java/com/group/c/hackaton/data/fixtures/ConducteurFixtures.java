package com.group.c.hackaton.data.fixtures;

import com.github.javafaker.Faker;
import com.group.c.hackaton.data.entities.ConducteurEntity;
import com.group.c.hackaton.data.entities.VehiculeEntity;
import com.group.c.hackaton.data.repositories.ConducteurRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.Random;

@Order(2)
@RequiredArgsConstructor
//@Component
public class ConducteurFixtures implements CommandLineRunner {
private final ConducteurRepository conducteurRepository;

    @Override
    public void run(String... args) throws Exception {
        Faker faker = new Faker();
//        Random random = new Random();
        for (int i=0; i < 25; i++) {

            ConducteurEntity obj = new ConducteurEntity();
//            obj.setId((long) i);
            obj.setNom(faker.funnyName().name());
            obj.setPrenom(faker.funnyName().name());
            obj.setTelephone(faker.phoneNumber().phoneNumber());
            VehiculeEntity vehicule = new VehiculeEntity();
            vehicule.setCouleur(faker.color().name());
            vehicule.setModele("Modele "+ i);
            vehicule.setMarque(faker.aviation().airport());
            obj.setVehicule(vehicule);
            conducteurRepository.save(obj);
        }
    }
    }


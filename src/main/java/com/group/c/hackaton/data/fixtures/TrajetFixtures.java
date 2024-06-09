package com.group.c.hackaton.data.fixtures;

import com.github.javafaker.Faker;
import com.group.c.hackaton.data.entities.Trajet;
import com.group.c.hackaton.data.repositories.TrajetRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.Random;

//@Component
@Order(1)
@RequiredArgsConstructor
public class TrajetFixtures  implements CommandLineRunner {
    private final TrajetRepository trajetRepository;
    @Override
    public void run(String... args) throws Exception {
        Faker faker = new Faker();
        Random random = new Random();
        for (int i=0; i < 25; i++) {

            Trajet trajet = new Trajet();

            trajet.setDepart(faker.nation().capitalCity());
            trajet.setDestination(faker.nation().capitalCity());
            LocalDate date = LocalDate.of(2024, 10, 2);
            trajet.setNbrPlace(random.nextInt(1,5));
            trajet.setDate(date);
            trajet.setPrix(Double.valueOf(i * 130));
            trajetRepository.save(trajet);
        }
    }
}

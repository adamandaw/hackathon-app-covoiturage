package com.group.c.hackaton.security.controllers.data.fixtures;

import com.group.c.hackaton.security.services.SecurityService;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

//@Component
@RequiredArgsConstructor
@Order(1)
public class AppRoleFixtures implements CommandLineRunner {
   private final SecurityService securityService;
    @Override
    public void run(String... args) throws Exception {
          securityService.saveRole("Admin");
          securityService.saveRole("Passagers");
          securityService.saveRole("Conducteurs");

    }
}

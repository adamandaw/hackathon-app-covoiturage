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
@Order(2)
public class AppUserFixtures implements CommandLineRunner {
   private final SecurityService securityService;
    @Override
    public void run(String... args) throws Exception {
        securityService.saveUser("admin@gmail.com","passer");
        securityService.addRoleToUser("admin","Admin");
        securityService.addRoleToUser("admin","Passagers");
        securityService.addRoleToUser("admin","Conducteurs");
    }
}

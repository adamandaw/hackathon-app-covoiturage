package com.group.c.hackaton.security.controllers.data.reporitories;


import com.group.c.hackaton.security.controllers.data.entities.AppUser;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AppUserRepository extends JpaRepository<AppUser,Long> {
      AppUser findByUsername(String username);
}

package com.group.c.hackaton.security.controllers.data.reporitories;


import com.group.c.hackaton.security.controllers.data.entities.AppRole;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AppRoleRepository extends JpaRepository<AppRole,Long> {
    AppRole getByRoleName(String roleName);
}

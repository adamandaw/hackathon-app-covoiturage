package com.group.c.hackaton.security.services;


import com.group.c.hackaton.security.controllers.data.entities.AppRole;
import com.group.c.hackaton.security.controllers.data.entities.AppUser;

public interface SecurityService {
    AppUser getUserByUsername(String username);
    AppUser saveUser(String username,String password);
    AppRole saveRole(String roleName);
    void addRoleToUser(String username,String roleName);
    void removeRoleToUser(String username,String roleName);
}

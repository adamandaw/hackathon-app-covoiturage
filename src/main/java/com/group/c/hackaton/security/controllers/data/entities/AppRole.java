package com.group.c.hackaton.security.controllers.data.entities;

import com.group.c.hackaton.data.entities.AbstractEntity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Table(name = "roles")
public class AppRole extends AbstractEntity {
    @Column(nullable = false,unique = true)
     private String roleName;
     @ManyToMany(fetch = FetchType.LAZY,mappedBy = "roles")
     List<AppUser> users;

    public AppRole(String roleName) {
        this.roleName = roleName;
    }
}

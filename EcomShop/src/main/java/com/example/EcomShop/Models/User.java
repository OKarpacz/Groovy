package com.example.EcomShop.Models;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String email;
    private String password;

    private String firstName;
    private String lastName;
    private String address;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<CustomerOrder> customerOrders = new ArrayList<>();

    public User(Long id, String email, String password) {
        this.id = id;
        this.email = email;
        this.password = password;
    }
}

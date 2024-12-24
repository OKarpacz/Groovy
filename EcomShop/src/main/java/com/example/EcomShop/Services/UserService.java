package com.example.EcomShop.Services;

import com.example.EcomShop.Models.User;
import com.example.EcomShop.Repositories.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepo userRepo;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public List<User> getAllUsers() {
        return userRepo.findAll();
    }

    public User getUserById(Long id) {
        return userRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("User not found with ID " + id));
    }
    public User getUserByEmail(String email) {
        return userRepo.findByEmail(email);
    }

    public User createUser(User user) {
        if (userRepo.findByEmail(user.getEmail()) != null) {
            throw new RuntimeException("User with this email already exists.");
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        return userRepo.save(user);
    }



    public boolean validateUserCredentials(String email, String rawPassword) {
        User user = getUserByEmail(email);
        return user != null && passwordEncoder.matches(rawPassword, user.getPassword());
    }
}

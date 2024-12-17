package com.example.EcomShop.Services;

import com.example.EcomShop.Models.User;
import com.example.EcomShop.Repositories.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepo userRepo;

    public List<User> getAllUsers(){
        return userRepo.findAll();
    }

    public User getUserById(long id){
        return userRepo.findById(id).orElseThrow(() -> new RuntimeException("User not found by ID " + id));
    }
    public User createUser(User user){
        if (userRepo.findByEmail(user.getEmail()) != null) {
            throw new RuntimeException("User with this email already exists.");
        }
        return userRepo.save(user);
    }

    public User updateUser(Long id, User userDetails){
        User user = getUserById(id);
        user.setEmail(userDetails.getEmail());
        user.setPassword(userDetails.getPassword());
        return userRepo.save(user);
    }

    public User getUserByEmail(String email) {
        return userRepo.findByEmail(email);
    }

    public void deleteUser(Long id){
        User user = getUserById(id);
        userRepo.delete(user);
    }
}

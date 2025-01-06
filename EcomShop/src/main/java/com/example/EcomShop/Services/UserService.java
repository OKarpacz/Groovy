package com.example.EcomShop.Services;

import com.example.EcomShop.DTO.UserDTO;
import com.example.EcomShop.Mappers.UserMapper;
import com.example.EcomShop.Models.User;
import com.example.EcomShop.Repositories.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserService {
    private static final Logger logger = LoggerFactory.getLogger(UserService.class);

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private UserMapper userMapper;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Cacheable("users")
    public List<UserDTO> getAllUsers() {
        logger.info("Fetching all users");
        return userRepo.findAll().stream()
                .map(userMapper::toDTO)
                .collect(Collectors.toList());
    }

    @Cacheable(value = "user", key = "#id")
    public UserDTO getUserById(Long id) {
        logger.info("Fetching user by ID: {}", id);
        User user = userRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("User not found with ID " + id));
        return userMapper.toDTO(user);
    }

    @CacheEvict(value = "users", allEntries = true)
    public UserDTO createUser(UserDTO userDTO) {
        logger.info("Creating a new user with email: {}", userDTO.getEmail());
        if (userRepo.findByEmail(userDTO.getEmail()) != null) {
            throw new RuntimeException("User with this email already exists.");
        }

        User user = userMapper.toEntity(userDTO);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        User savedUser = userRepo.save(user);
        return userMapper.toDTO(savedUser);
    }
    public User getUserByEmail(String email) {
        return userRepo.findByEmail(email);
    }

    public boolean validateUserCredentials(String email, String rawPassword) {
        User user = userRepo.findByEmail(email);
        return user != null && passwordEncoder.matches(rawPassword, user.getPassword());
    }
}

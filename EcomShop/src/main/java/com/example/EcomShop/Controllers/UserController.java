package com.example.EcomShop.Controllers;

import com.example.EcomShop.DTO.UserDTO;
import com.example.EcomShop.Mappers.UserMapper;
import com.example.EcomShop.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/users")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserMapper userMapper;

    @GetMapping
    public List<UserDTO> getAllUsers() {
        return userService.getAllUsers();
    }

    @GetMapping("/{id}")
    public ResponseEntity<UserDTO> getUserById(@PathVariable Long id) {
        try {
            UserDTO userDTO = userService.getUserById(id);
            return ResponseEntity.ok(userDTO);
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping("/register")
    public ResponseEntity<UserDTO> registerUser(@RequestBody UserDTO userDTO) {
        try {
            UserDTO createdUserDTO = userService.createUser(userDTO);
            return ResponseEntity.ok(createdUserDTO);
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest().body(null);
        }
    }

    @PostMapping("/login")
    public ResponseEntity<?> loginUser(@RequestBody UserDTO userDTO) {
        try {
            boolean isValid = userService.validateUserCredentials(userDTO.getEmail(), userDTO.getPassword());
            if (isValid) {
                Map<String, Object> response = new HashMap<>();
                response.put("userId", userService.getUserByEmail(userDTO.getEmail()).getId());
                response.put("message", "Login successful!");
                return ResponseEntity.ok(response);
            } else {
                return ResponseEntity.status(401).body("Invalid credentials");
            }
        } catch (RuntimeException e) {
            return ResponseEntity.status(401).body("Invalid credentials");
        }
    }
}

package com.example.EcomShop.Controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@RestController
@RequestMapping("/api/logs")
public class LogController {

    @GetMapping("/fetch")
    public String getLogs() {
        try {
            Path logFilePath = Paths.get("logs/ecomshop.log");
            return Files.readString(logFilePath);
        } catch (Exception e) {
            return "Unable to fetch logs: " + e.getMessage();
        }
    }
}

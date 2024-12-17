package com.example.EcomShop.Controllers;

import com.example.EcomShop.Services.OpenAIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.Map;
@RestController
@RequestMapping("/api/chat")
public class OpenAIController {

    @Autowired
    private OpenAIService openAIService;

    @PostMapping
    public ResponseEntity<?> getChatResponse(@RequestBody Map<String, List<Map<String, String>>> payload) {
        List<Map<String, String>> messages = payload.get("messages");
        String response = openAIService.getChatResponse(messages);
        return ResponseEntity.ok(Collections.singletonMap("reply", response));
    }
}

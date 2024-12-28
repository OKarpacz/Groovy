package com.example.EcomShop.Services;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import java.util.*;

@Service
public class OpenAIService {
    @Value("${openai.api.key}")
    private String apiKey;

    @Value("${openai.api.url}")
    private String apiUrl;

    public String getChatResponse(List<Map<String, String>> messages) {
        RestTemplate restTemplate = new RestTemplate();

        try {
            String prompt = "You are an AI assistant with expertise in music, vinyl records, music artists, and the history of bands they were in. However, you can also assist with general queries and provide helpful, accurate responses to a wide variety of topics.";
            List<Map<String, String>> updatedMessages = new ArrayList<>();
            updatedMessages.add(Map.of("role", "system", "content", prompt));
            updatedMessages.addAll(messages);

            if (!isRelevantTopic(messages.get(messages.size() - 1).get("content"))) {
                return "I can only answer questions about music and vinyl records." +
                        "If you think this message isn't correct call us at (212) 658-3916";
            }

            Map<String, Object> body = new HashMap<>();
            body.put("model", "gpt-3.5-turbo");
            body.put("messages", updatedMessages);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            headers.setBearerAuth(apiKey);

            HttpEntity<Map<String, Object>> request = new HttpEntity<>(body, headers);

            ResponseEntity<Map> response = restTemplate.postForEntity(apiUrl, request, Map.class);

            if (response.getStatusCode() == HttpStatus.OK) {
                List<Map<String, Object>> choices = (List<Map<String, Object>>) response.getBody().get("choices");
                Map<String, Object> message = (Map<String, Object>) choices.get(0).get("message");
                return (String) message.get("content");
            } else {
                return "API call failed with status: " + response.getStatusCode();
            }

        } catch (Exception e) {
            return "Error while calling OpenAI API: " + e.getMessage();
        }
    }

    private boolean isRelevantTopic(String userMessage) {
        if (userMessage == null || userMessage.trim().isEmpty()) {
            return false;
        }
        String lowerCaseMessage = userMessage.toLowerCase();

        List<String> musicKeywords = Arrays.asList(
                "music", "vinyl", "records", "albums", "bands", "artists", "songs", "genres", "instruments","hello"
        );
        return musicKeywords.stream().anyMatch(lowerCaseMessage::contains);
    }
}
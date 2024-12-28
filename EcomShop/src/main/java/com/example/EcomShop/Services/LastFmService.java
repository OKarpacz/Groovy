package com.example.EcomShop.Services;

import com.example.EcomShop.Models.TopChart;
import com.example.EcomShop.Repositories.TopChartRepo;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class LastFmService {

    private static final Logger logger = LoggerFactory.getLogger(LastFmService.class);

    @Autowired
    private TopChartRepo topChartRepo;

    @Value("${lastfm.api.key}")
    private String apiKey;
    @Value("${lastfm.base.url}")
    private String baseUrl;
    public void fetchAndSaveTopTracks() {
        String url = baseUrl + "?method=chart.gettoptracks&api_key=" + apiKey + "&format=json";

        try {
            RestTemplate restTemplate = new RestTemplate();
            ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);

            logger.info("Response from Last.fm API: {}", response.getBody());

            if (response.getStatusCode().is2xxSuccessful()) {
                JSONObject jsonResponse = new JSONObject(response.getBody());
                JSONArray tracks = jsonResponse.getJSONObject("tracks").getJSONArray("track");

                for (int i = 0; i < tracks.length(); i++) {
                    JSONObject track = tracks.getJSONObject(i);
                    String trackName = track.getString("name");
                    String artistName = track.getJSONObject("artist").getString("name");

                    TopChart topChart = new TopChart();
                    topChart.setTrackName(trackName);
                    topChart.setArtistName(artistName);

                    logger.info("Saving track: {} by {}", trackName, artistName);

                    topChartRepo.save(topChart);
                }
            } else {
                logger.error("Failed to fetch data from Last.fm API. Status code: {}", response.getStatusCode());
            }
        } catch (Exception e) {
            logger.error("Error fetching or saving top tracks", e);
        }
    }
}

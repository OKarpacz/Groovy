package com.example.EcomShop.Controllers;

import com.example.EcomShop.Models.TopChart;
import com.example.EcomShop.Services.LastFmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.example.EcomShop.Repositories.TopChartRepo;

import java.util.List;

@RestController
@RequestMapping("/api/top-charts")
public class LastFmController {

    private final TopChartRepo topChartRepo;
    private final LastFmService lastFmService;

    @Autowired
    public LastFmController(TopChartRepo topChartRepo, LastFmService lastFmService) {
        this.topChartRepo = topChartRepo;
        this.lastFmService = lastFmService;
    }

    @GetMapping("/fetch")
    public List<TopChart> fetchTopCharts() {
        lastFmService.fetchAndSaveTopTracks();
        return topChartRepo.findAll();
    }
}


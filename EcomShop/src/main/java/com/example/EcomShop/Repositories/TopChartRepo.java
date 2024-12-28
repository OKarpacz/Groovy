package com.example.EcomShop.Repositories;
import com.example.EcomShop.Models.TopChart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TopChartRepo extends JpaRepository<TopChart, Long> {
}


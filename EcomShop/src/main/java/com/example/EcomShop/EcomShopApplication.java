package com.example.EcomShop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling
@EnableAspectJAutoProxy
@EnableCaching
@SpringBootApplication
public class EcomShopApplication {

	public static void main(String[] args) {
		SpringApplication.run(EcomShopApplication.class, args);
	}

}

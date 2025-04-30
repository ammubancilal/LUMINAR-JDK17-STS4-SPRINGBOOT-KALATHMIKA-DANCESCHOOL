package com.luminar.springbootjsp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages = "com.luminar")
@EnableJpaRepositories("com.luminar.springbootkalathmika.repository") // Add this line
@EntityScan("com.luminar.springbootkalathmika.model") // Ensure EntityScan is correct
public class SpringbootJspKalathmikaApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootJspKalathmikaApplication.class, args);
	}

}

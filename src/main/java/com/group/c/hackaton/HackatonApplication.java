package com.group.c.hackaton;

import com.group.c.hackaton.config.CorsConfig;
import com.group.c.hackaton.config.RequestMappingConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

@SpringBootApplication
@Import({RequestMappingConfig.class, CorsConfig.class})
public class HackatonApplication {

	public static void main(String[] args) {
		SpringApplication.run(HackatonApplication.class, args);
	}

}

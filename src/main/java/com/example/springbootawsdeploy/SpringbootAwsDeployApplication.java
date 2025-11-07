package com.example.springbootawsdeploy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import java.util.function.Function;

@SpringBootApplication
public class SpringbootAwsDeployApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootAwsDeployApplication.class, args);
    }

    @Bean
    public Function<String, String> hello() {
        return input -> "Hello from Lambda, input = " + input;
    }
}

package com.seuit.spring.uittravel.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

import com.seuit.spring.uittravel.aspects.LoggerAspectJ;

@Configuration
@EnableAspectJAutoProxy
@ComponentScan
public class AppConfig {
	@Bean
	 public LoggerAspectJ loggingAspect(){
        return new LoggerAspectJ();
    }
}

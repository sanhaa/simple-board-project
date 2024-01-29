package com.example.SimpleBBS.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

import java.util.Optional;

@EnableJpaAuditing
@Configuration
public class JpaConfig {
    /**
     * JPA Auditing: 자동 필드값 셋팅 설정
     */
    @Bean
    public AuditorAware<String> auditorAware(){
        return () -> Optional.of("username"); // TODO: Spring Security로 인증기능 구현할 때 수정할 것.
    }
}

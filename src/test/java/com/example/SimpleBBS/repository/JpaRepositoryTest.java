package com.example.SimpleBBS.repository;

import com.example.SimpleBBS.config.JpaConfig;
import com.example.SimpleBBS.domain.Article;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.Import;

import java.util.List;

import static org.assertj.core.api.Assertions.*;

@DisplayName("JPA 연결 테스트")
@Import(JpaConfig.class)
@DataJpaTest
class JpaRepositoryTest {
    /**
     * DataJpaTest 어노테이션
     * 덕분에 테스트에서도 생성자주입 패턴으로 의존성 주입 할 수 있다 ??
     */

    @Autowired
    private ArticleRepository articleRepository;
    @Autowired
    private ArticleCommentRepository articleCommentRepository;

    @DisplayName("select 테스트입니다.")
    @Test
    void selectTest(){
        // Given

        // When
        List<Article> articles = articleRepository.findAll();

        // Then
        assertThat(articles)
                .isNotNull()
                .hasSize(0);
    }
}
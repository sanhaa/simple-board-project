package com.example.SimpleBBS.repository;

import com.example.SimpleBBS.domain.Article;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArticleRepository extends JpaRepository<Article, Long> {


}

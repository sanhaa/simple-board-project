-- 테이블 생성 SQL - ARTICLE
CREATE TABLE ARTICLE
(
    id            INT                NOT NULL,
    title         VARCHAR(50)        NOT NULL,
    content       VARCHAR2(65000)    NULL,
    hashtag       VARCHAR(100)       NULL,
    createAt      TIMESTAMP          NOT NULL,
    createBy      VARCHAR2(50)       NULL,
    modifiedAt    TIMESTAMP          NULL,
    modifiedBy    VARCHAR2(50)       NULL,
    CONSTRAINT PK_ARTICLE PRIMARY KEY (id)
);
in
-- Auto Increment를 위한 Sequence 추가 SQL - ARTICLE.id
CREATE SEQUENCE ARTICLE_SEQ
    START WITH 1
    INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - ARTICLE.id
CREATE OR REPLACE TRIGGER ARTICLE_AI_TRG
BEFORE INSERT ON ARTICLE
REFERENCING NEW AS NEW FOR EACH ROW
BEGIN
SELECT ARTICLE_SEQ.NEXTVAL
INTO :NEW.id
FROM DUAL;
END;

-- DROP TRIGGER ARTICLE_AI_TRG;

-- DROP SEQUENCE ARTICLE_SEQ;

-- 테이블 Comment 설정 SQL - ARTICLE
COMMENT ON TABLE ARTICLE IS 'ARTICLE';

-- 컬럼 Comment 설정 SQL - ARTICLE.id
COMMENT ON COLUMN ARTICLE.id IS 'id';

-- 컬럼 Comment 설정 SQL - ARTICLE.title
COMMENT ON COLUMN ARTICLE.title IS 'title';

-- 컬럼 Comment 설정 SQL - ARTICLE.content
COMMENT ON COLUMN ARTICLE.content IS 'content';

-- 컬럼 Comment 설정 SQL - ARTICLE.hashtag
COMMENT ON COLUMN ARTICLE.hashtag IS 'hashtag';

-- 컬럼 Comment 설정 SQL - ARTICLE.createAt
COMMENT ON COLUMN ARTICLE.createAt IS 'createAt';

-- 컬럼 Comment 설정 SQL - ARTICLE.createBy
COMMENT ON COLUMN ARTICLE.createBy IS 'createBy';

-- 컬럼 Comment 설정 SQL - ARTICLE.modifiedAt
COMMENT ON COLUMN ARTICLE.modifiedAt IS 'modifiedAt';

-- 컬럼 Comment 설정 SQL - ARTICLE.modifiedBy
COMMENT ON COLUMN ARTICLE.modifiedBy IS 'modifiedBy';
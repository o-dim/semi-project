DROP TABLE QNA;
DROP TABLE FOOD;
DROP TABLE PERSON;
DROP TABLE WANTED;

-- 관리자 등록
INSERT INTO PERSON VALUES('admin', '123456의암호화된값', ...);
COMMIT;

-- 회원/상품/상품이미지/레시피/레시피댓글(기존 테이블)의 수정/삭제 권한을 가진다고 보고 CRUD 작업하기
-- 상품 : 상품코드, 상품명, 대표이미지경로, 대표이미지이름, 원가, 재고수량

CREATE TABLE PRODUCT (
    PROD_CODE              NUMBER                     NOT NULL PRIMARY KEY,
    PROD_NAME              VARCHAR2(100 BYTE)         NOT NULL UNIQUE,
    PROD_PATH              VARCHAR2(100 BYTE)         NOT NULL,
    PROD_IMG_NAME          VARCHAR2(100 BYTE)         NOT NULL, -- 대표이미지
    PROD_ORIGIN_PRICE      NUMBER                     NULL,
    PROD_STOCK             NUMBER                     NULL    -- 재고수량
);

 -- 상품판매
CREATE TABLE SALE (
    SALE_NO              NUMBER                     PRIMARY KEY,
    SALE_TITLE           VARCHAR2(100 BYTE)         NULL,
    SALE_CONTENT         VARCHAR2(100 BYTE)         NULL,
    SALE_PRICE           NUMBER                     NULL,
    PROD_PATH            VARCHAR2(100 BYTE)         NOT NULL,
    PROD_IMG_NAME        VARCHAR2(100 BYTE)         NOT NULL
);


-- 상품이미지 : 상품이미지번호, 상품코드, 경로, 파일명
CREATE TABLE PIMG (
    PROD_CODE          NUMBER                     NOT NULL,
    PIMG_NO            NUMBER                     NOT NULL PRIMARY KEY,
    PIMG_PATH          VARCHAR2(100 BYTE)         NOT NULL,
    PIMG_FILE          VARCHAR2(50 BYTE)          NOT NULL  -- 파일명
    
);

-- 회원(탈퇴,휴면)
CREATE TABLE PERSON (
    PER_NO                 NUMBER                     NOT NULL PRIMARY KEY,
    PER_ID                 VARCHAR2(20 BYTE)          NOT NULL UNIQUE,
    PER_PW                 VARCHAR2(20 BYTE)          NOT NULL,
    PER_NAME               VARCHAR2(20 BYTE)          NOT NULL,
    PER_PHONENO            NUMBER                     NOT NULL,
    PER_POSTADDRESS        VARCHAR2(5 BYTE)           NULL,
    PER_ROADADDRESS        VARCHAR2(100 BYTE)         NULL,
    PER_JIBUNADDRESS       VARCHAR2(100 BYTE)         NULL,
    PER_DETAILADDRESS      VARCHAR2(100 BYTE)         NOT NULL,
    PER_EMAIL              VARCHAR2(20 BYTE)          NOT NULL,
    PER_GENDER             NUMBER                     NOT NULL
);

-- 장바구니 : 장바구니번호, 상품코드, 장바구니에담은개수
CREATE TABLE CART (
    CART_NO                NUMBER                     NOT NULL PRIMARY KEY,
    PROD_CODE              NUMBER                     NOT NULL,
    CART_COUNT             NUMBER                     NOT NULL,
    PROD_PATH              VARCHAR2(100 BYTE)         NOT NULL,
    PROD_IMG_NAME          VARCHAR2(100 BYTE)         NOT NULL, -- 대표이미지
);

-- 주문 : 주문번호(2023051500000), 사용자, 주문날짜, 배송지정보

-- 주문상세 : 주문상세번호, 주문번호, 상품코드, 배송예정일, 판매가(또는 할인율)

-- 레시피 게시판
CREATE TABLE RECIPE (
    RE_NO                  NUMBER                     PRIMARY KEY,
    RE_TITLE               VARCHAR2(100 BYTE)         NOT NULL,
    RE_TOOL                VARCHAR2(1000 BYTE)        NULL,       -- 재료
    RE_CONTENT1            VARCHAR2(200 BYTE)         NULL,
    RE_CONTENT2            CLOB                       NOT NULL,
    RE_REPLY               VARCHAR2(1000 BYTE)        NOT NULL,   -- 댓글
    RE_DATE                TIMESTAMP                  NULL,
    RE_EDIT                TIMESTAMP                  NULL,       -- 수정일
    RE_WRITER              VARCHAR2(20 BYTE)          NOT NULL,   -- FK
    -- 상품코드 fk 추가 
    CONSTRAINT FK_FD_WRITER FOREIGN KEY(RE_WRITER) REFERENCES PERSON(PER_ID)

);

-- 레시피 댓글 게시판 : 댓글번호, 레시피번호(fk), 작성자(FK), 내용, 작성일

-- 레시피 이미지 게시판(사진 여러 개)
CREATE TABLE RIMG(
    RIMG_PATH              VARCHAR2(100 BYTE)     NOT NULL,    -- 
    RE_NO                  NUMBER                  PRIMARY KEY,
    RIMG_ORIGIN_NAME       VARCHAR2(300 BYTE)      NOT NULL,
    RIMG_FILE_NAME         VARCHAR2(50 BYTE)       NOT NULL

);
-- 레시피 추천 : 사용자(FK), 레시피 번호(FK)
CREATE TABLE RECOMMAND(
    PER_ID                 VARCHAR2(20 BYTE)          NOT NULL UNIQUE,
    RE_NO                  NUMBER                     PRIMARY KEY,
);
-- QNA
CREATE TABLE QNA(
    QNA_NO                 NUMBER                    PRIMARY KEY,
    QNA_TITLE              VARCHAR2(100 BYTE)        NOT NULL,
    QNA_CONTENT            CLOB                      NULL,
    PER_ID                 VARCHAR2(20 BYTE)         NOT NULL,
    QUESTION_DATE          TIMESTAMP                 NULL,
    QNA_REPLY              VARCHAR2(1000 BYTE)       NULL,
    -- ANSWER_DATE
    -- GROUP_NO, DEPTH (1단 댓글)
    CONSTRAINT FK_QNA_ID FOREIGN KEY(QNA_ID) REFERENCES PERSON(PER_ID)
);

-- 계층 게시판 사용 고민(레시피 댓글 테이블을 계층형으로 작업)

DROP SEQUENCE FOOD_SEQ;
CREATE SEQUENCE FOOD_SEQ NOCACHE;
DROP SEQUENCE PERSON_SEQ;
CREATE SEQUENCE PERSON_SEQ NOCACHE;
DROP SEQUENCE QNA_SEQ;
CREATE SEQUENCE QNA_SEQ NOCACHE;



DROP TABLE WANTED;
CREATE TABLE WANTED (
    WANTED_THUMBNAIL        NUMBER                     NULL,   /* ����� ������ 1, ������ 0 */
    WANTED_NO                   NUMBER                      NULL,
    WANTED_TITLE                 VARCHAR2(100 BYTE)   NULL,
    WANTED_CONTENT          VARCHAR2(100 BYTE)   NULL,
    WANTED_DATE                TIMESTAMP                 NULL,
    WANTED_PRICE                NUMBER                     NULL
);

DROP TABLE PERSON;
CREATE TABLE PERSON (
    PER_ID                  VARCHAR2(20 BYTE)     NULL,
    PER_PW                 VARCHAR2(20 BYTE)    NULL,
    PER_NAME              VARCHAR2(20 BYTE)   NULL,
    PER_ADDRESS         VARCHAR2(100 BYTE)  NULL,
    PER_DETAILADDRESS VARCHAR2(100 BYTE) NULL,
    PER_EMAIL               VARCHAR2(20 BYTE)  NULL,
    PER_GENDER             NUMBER                   NULL
);

DROP TABLE FOOD;
CREATE TABLE FOOD (
    FD_NO               NUMBER                        NULL,
    FD_WRITER         VARCHAR2(20 BYTE)       NULL,
    FD_TITLE             VARCHAR2(100 BYTE)     NULL,
    FD_TOOL            VARCHAR2(1000 BYTE)    NULL,       /*���*/
    FD_CONTENT1     VARCHAR2(200 BYTE)      NULL,
    FD_CONTENT2     CLOB                              NULL,
    FD_REPLY            VARCHAR2(1000 BYTE)     NULL,     /*���*/
    FD_DATE             TIMESTAMP                     NULL,
    FD_EDIT              TIMESTAMP                     NULL      /*������*/
);

DROP TABLE QNA;
CREATE TABLE QNA(
    QNA_NO            NUMBER                        NULL,
    QNA_TITLE          VARCHAR2(100 BYTE)     NULL,
    QNA_CONTENT   CLOB    NULL,
    QNA_WRITER      VARCHAR2(30 BYTE)       NULL,
    QNA_DATE          TIMESTAMP                   NULL,
    QNA_REPLY          VARCHAR2(1000 BYTE)  NULL
);



-- Banks Table Schema
CREATE TABLE Banks (
    bank_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    bank_name VARCHAR2(100) UNIQUE NOT NULL,
    app_id VARCHAR2(100) UNIQUE NOT NULL
);

-- Reviews Table Schema
CREATE TABLE Reviews (
    review_id VARCHAR2(100) PRIMARY KEY,
    bank_id NUMBER,
    review_text CLOB,
    rating NUMBER(1) CHECK (rating BETWEEN 1 AND 5),
    review_date DATE,
    sentiment_label VARCHAR2(20),
    sentiment_score NUMBER(5,4),
    themes VARCHAR2(500),
    source VARCHAR2(50),
    CONSTRAINT fk_bank FOREIGN KEY (bank_id) REFERENCES Banks(bank_id)
);

-- Banks Data
INSERT INTO Banks (bank_id, bank_name, app_id) VALUES (1, 'Commercial Bank of Ethiopia', 'com.combanketh.mobilebanking');
INSERT INTO Banks (bank_id, bank_name, app_id) VALUES (2, 'Bank of Abyssinia', 'com.boa.boaMobileBanking');
INSERT INTO Banks (bank_id, bank_name, app_id) VALUES (3, 'Dashen Bank', 'com.dashen.dashensuperapp');
COMMIT;

-- Reviews Data

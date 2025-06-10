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
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '937102c6-ae88-419c-994b-80e520faacb8', 2, 'it''s not working', 3,
                    TO_DATE('2025-06-05', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3559b91c-fad9-4032-bebe-cf99974b9628', 2, 'Hello, I’m facing a problem with the BOA Mobile app. Every time I enter my phone number and password, the app crashes and shows an error that says “BoaMobile closed because this app has a bug.” I tried updating, reinstalling, and clearing cache, but nothing worked. Please fix this bug in the next update. I really need access to my account. Thank you.', 1,
                    TO_DATE('2025-06-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Account Access', 'Reliability', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '10e85f30-540d-4810-ba89-85a7e004480b', 2, 'exceptional', 5,
                    TO_DATE('2025-06-03', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd7f07898-4ba1-47b4-9e8c-a3cc10b1bf0f', 2, 'BoA Mobile good bank', 5,
                    TO_DATE('2025-06-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9985,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2ca9480b-ff5f-4b59-952c-5921db83dab2', 2, 'this is worest app 24/7 loading', 1,
                    TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.9935,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8cd852da-0257-4ca0-9003-314fb464e55a', 2, 'This App is not interest for Android phone Please update it .', 1,
                    TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.9971,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd9172c66-a605-4626-acc6-e1dbca0685cd', 2, 'BoA system is confartable', 5,
                    TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'POSITIVE', 0.998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c3f2810d-cf99-4600-90ac-bef47adb9e7a', 2, 'this app, for me , is a waste of time. It doesn''t work . I can''t even long in, and it really piss me off. FIX THE PROBLEM', 1,
                    TO_DATE('2025-05-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '512f8c2b-8fac-41cc-978a-b58e39a1ea5c', 2, 'Good service.', 3,
                    TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '76089146-b1c7-47f4-ab9f-44b6a1092225', 2, 'the app crush frequently', 1,
                    TO_DATE('2025-05-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.9985,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e244700c-1210-4280-b60b-b75964c982df', 2, 'You guys keeps getting worst', 1,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2e219268-96fd-400c-8632-0b0d1044f487', 2, 'This app is a joke. It crashes more than it works, takes forever to load, and half the features are just decorative at this point. Can’t log in, can’t transfer money, can’t even check my balance without it bugging out. To the developer: Are you actually trying to make this work, or is this some kind of social experiment to test our patience? Did you build this in your sleep? Because it definitely looks like it. If this is your idea of a functional app, maybe consider a different career path🙏', 1,
                    TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'NEGATIVE', 0.999,
                    '['Transaction Performance', 'Reliability', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8ddf5c9f-f866-4817-ac5e-85c67bfa870e', 2, 'but not opening on android', 4,
                    TO_DATE('2025-05-19', 'YYYY-MM-DD'), 'POSITIVE', 0.9952,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f8bb86fb-594a-48ea-be1f-d08ea0882b8e', 2, 'Worst App ever. Totally unreliable. And it didn''t work at all for the last 4 months.', 1,
                    TO_DATE('2025-05-18', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7f2000c9-7d5a-4e34-92bd-f3871b54b93c', 2, 'excellent app', 4,
                    TO_DATE('2025-05-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b640cc87-df88-4b6b-9b9f-13fe0bdd5dfa', 2, 'this app does no work on Samsung a51, it just gives a preview of the logo', 1,
                    TO_DATE('2025-05-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9992,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '301f6927-9395-4cda-bb77-041a36323875', 2, 'i entered incorrect security question by mistake boa app lock pin forever, why is there no other options? ?? i contacted different branchs more then 4times but they didn''t able to solve this issue .', 5,
                    TO_DATE('2025-05-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '857bb685-6f7e-4db0-af37-eb2f1c1c6fd3', 2, 'liking this application good 👍', 5,
                    TO_DATE('2025-05-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '62fa097e-3fd8-4522-a3a3-9b13f17f594d', 2, 'This app future is good, but there is problems with apps to reset and activate it, which is difficult even to the branch staffs, and it takes too long times to active at the branch plus most of the time high expected failure of activation after process at the counter and OTP sent not work', 1,
                    TO_DATE('2025-05-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e255b972-0d40-4de1-99ff-44dbada62a16', 2, 'it''s really good 👍', 5,
                    TO_DATE('2025-04-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'dbd9dbf2-47ee-4103-8631-cd0ef79f4344', 2, 'Bad app . it stuck when you open and noting WORKS.', 1,
                    TO_DATE('2025-04-23', 'YYYY-MM-DD'), 'NEGATIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8a4d9c01-9e5a-4732-a8ab-9341930b30c8', 2, 'the app isn''t working after it asked me the password it starts loading, but it doesn''t open', 3,
                    TO_DATE('2025-04-20', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Account Access']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3271d45f-2900-41b6-878c-669ac563e60a', 2, 'It keeps showing this pop up to turn off developer options even tho it''s off! I had to turn on and then off to make it work! This is a horrible experience and needs a fix asap! Plus kinda slow.', 1,
                    TO_DATE('2025-04-19', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '497345df-10e9-402a-bb96-88e16f8a803d', 2, 'boa of mobile backing', 5,
                    TO_DATE('2025-04-09', 'YYYY-MM-DD'), 'POSITIVE', 0.9806,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f68ed25c-79db-4a9c-85e7-aaccd1671555', 2, 'faster bank of Abissinya', 5,
                    TO_DATE('2025-04-08', 'YYYY-MM-DD'), 'POSITIVE', 0.9722,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '94ef86ef-6437-4c31-96c5-efeb7f32829f', 2, 'i would have given it a lower if it was possible because it crush so much and it take the bank so long to fix the bug', 1,
                    TO_DATE('2025-04-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3b48fff7-6b38-4099-9c7c-cabc1bbbd92b', 2, 'it just doesn''t work...so frustrating', 1,
                    TO_DATE('2025-04-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b10d3c9a-d5c8-422c-9bca-82a40310fb5c', 2, 'it''s not work correctly... you must have update it', 1,
                    TO_DATE('2025-04-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8eed1a6d-6902-45fe-abc4-48dcbae22f85', 2, 'the app gets a considerable improvements like language , QR scanner and unlimited transfers survice. but BOA Please do alot on its fastness and convenient when we login and making a transactions.', 5,
                    TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9575,
                    '['Account Access', 'Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b3a22053-e2b9-47e6-8083-a2e73a7c6bed', 2, 'after i typed in my password it says successfully logged out ...and goes back to the first page', 2,
                    TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.5857,
                    '['Account Access']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '53263f41-9dd6-4165-a24a-a41fda4c390c', 2, 'good but they don''t update enough don''t add new things', 3,
                    TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9694,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6eec96bf-b4c9-4dde-9814-059cf54b3f86', 2, 'it doesn''t work period z slowest mobile banking ever i would rather use *815#', 1,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.9991,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1197ad29-5063-4999-888c-589582754caa', 2, 'after activated the application it not allowed to sign , automatically it is turn off In my phone, why ?', 1,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'NEGATIVE', 0.9974,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2ac5df83-d25c-41c5-ae60-64c7a77159c5', 2, 'good application', 5,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e9072e9a-76dc-49d1-b423-cb64c4656802', 2, 'this version is not working for me I cannot even buy card. I cannot send money', 1,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e52a6ccb-dc16-472c-84ef-2969c08a9318', 2, 'It can''t actively on initialization, it says incorrect OTP getting the exact OTP', 1,
                    TO_DATE('2025-03-29', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '34f5b18e-0a79-40bb-94b6-4430d08e0c17', 2, 'always problematic hardly works', 1,
                    TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b96d31a2-9360-43ab-ba3c-a44b324f8288', 2, 'considering the fact the bank is huge this app really bad you could do better', 1,
                    TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1648df61-5880-4d2a-9ec1-c393c9ac474d', 2, 'worst app and Bank ever u be ashamed, scammer', 1,
                    TO_DATE('2025-03-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6b5a5455-dcd0-4a2a-8cbb-f0deb5706498', 2, 'i have went to the bank so many times because i couldn''t make any transaction i can only see my balance nothing else so what is the point of having mobile banking if i can''t make any transaction with it please work in that', 1,
                    TO_DATE('2025-03-21', 'YYYY-MM-DD'), 'NEGATIVE', 0.9988,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '376f374a-f480-46e2-bb4a-90e938ab3a59', 2, 'there is no speed', 1,
                    TO_DATE('2025-03-19', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c5cdb617-4335-491d-89ce-9c1aab9b0b2f', 2, 'For anyone who wants to download it, just don''t!!!', 1,
                    TO_DATE('2025-03-19', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7d475f3a-15b4-4e56-ae4b-1fc451749e61', 2, 'Edit: New bug, app not letting me type in my otp codes. Shameful Why does this app not allow me to use it while having developer options on? Did y''all consider that I might, perhaps, be an actual developer? Why am I expected to toggle the option on and off just to bank (restarting my phone when I do)? Why is the message labled as somthing that will "smoothen" the experience? This is like the most "security consultant" thing to implement in an app. Please invest in actual security, not this mess.', 1,
                    TO_DATE('2025-03-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9986,
                    '['Reliability', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e68af2d6-0770-4110-b3dd-167bb54cd017', 2, 'Improved to be the best', 5,
                    TO_DATE('2025-03-11', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0e5e093a-1cf1-4c49-87ed-046888b8afa9', 2, 'Decent, but there problems sometimes it says error When i transfer money but infact it transferred because of this bug i transferred 2 times instead of 1 and also we can''t transfer money to others telebirr acc we only can to our self BOE Dev fix this !!!', 3,
                    TO_DATE('2025-03-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9975,
                    '['Transaction Performance', 'Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '35ea7b31-46fb-47a7-b9c4-8a5e06161abd', 2, 'BoA Greqt Ethiopian bank.', 5,
                    TO_DATE('2025-03-11', 'YYYY-MM-DD'), 'POSITIVE', 0.8458,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c9f8ff21-b8d1-400f-bb94-c98399a25ad5', 2, 'The bug is still there,the app crashes every time i try to log in, especially in old phones like my Galaxy A32', 1,
                    TO_DATE('2025-03-10', 'YYYY-MM-DD'), 'NEGATIVE', 0.9995,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'df027023-1b65-40e9-b2bf-de6fedc17c5d', 2, 'Almost better compared to cbe where it is not qualified for', 4,
                    TO_DATE('2025-03-09', 'YYYY-MM-DD'), 'POSITIVE', 0.9742,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '73ce76e4-b7a2-4ed8-b6fd-f9b388bdb4a6', 2, 'what awesome apps. it is very simple to use and more much important apps.', 5,
                    TO_DATE('2025-03-09', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1cfcfa11-67f5-4315-9f2d-f47ab27f0910', 2, 'Wonderfull app', 5,
                    TO_DATE('2025-03-08', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c292d2f8-1e0d-46ae-97f2-f3215a0bdf50', 2, 'i can''t use this app why?', 5,
                    TO_DATE('2025-03-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1962d1c4-e2c2-4ac7-91b6-b0a75ae11d7a', 2, 'Worst mobile banking app I ever experienced I was blaming other apps but comparing with this they''re too much better!!!! It clashes it takes much longer time to login while loading in short it''s a complete of trash', 1,
                    TO_DATE('2025-03-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Account Access']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7d468428-1ccb-4528-9984-9324db9b9d2b', 2, 'bro the worst app made by human kind!! as a software engineer it make me so sad seeing enterprise as big as BOA make apps like this. it is a disgrace for our country!!', 1,
                    TO_DATE('2025-03-05', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ab512ec6-2eaa-496c-b0a9-ee21a2d810be', 2, 'AGA B Girja Miss language of admin Afaan oromo & other Itoophiyaa languages', 1,
                    TO_DATE('2025-03-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9959,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '49b877c9-5536-4be5-8674-e3ae975fa0ed', 2, 'I downloaded the app for the first time while reading other customers reviews and as soon as i installed and opened the app it closes back automatically, what unserious bank, now i uninstalled the app immediately', 1,
                    TO_DATE('2025-03-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9916,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '529fe570-b1aa-48b7-b349-444b98c1fce7', 2, 'It has good features but sometimes it doesn''t work...0', 1,
                    TO_DATE('2025-03-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9957,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '12f08f68-da19-4974-8086-304a40091d72', 2, 'Very poor proformance', 1,
                    TO_DATE('2025-03-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b7206c5f-267e-44f1-b044-8f6f9392701d', 2, 'It''s not opening. Really frustrating', 1,
                    TO_DATE('2025-03-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd5e46c35-6bbf-4ce7-b184-cdc4c1e0eab1', 2, 'Verry Amazing App from all IB', 5,
                    TO_DATE('2025-03-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '99172a2f-926c-48be-a1b0-3971b984b6b2', 2, 'Not working on this days', 1,
                    TO_DATE('2025-02-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9973,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '781ff61a-6f89-4bb1-a455-9b66400b0cd7', 2, 'Thank you BoA', 5,
                    TO_DATE('2025-02-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cf026bee-94e7-4b9c-8a46-034354f9d171', 2, 'best banking app in the wworld', 5,
                    TO_DATE('2025-02-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9035f28b-9646-4fe9-80e1-6b6926b0289e', 2, 'Nice app and it''s easy to use', 5,
                    TO_DATE('2025-02-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '25b7eec9-d1ef-41be-8bb3-3fd1b1cb8068', 2, 'please add language in the apps setting(amharic afan oromo, tigniya,and others) sometimes bank to bank transfer is not available through time and even if if it is available not reachable…it is serious issue!', 1,
                    TO_DATE('2025-02-15', 'YYYY-MM-DD'), 'NEGATIVE', 0.9993,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5e94fa10-612f-4422-8183-00d5050e8d98', 2, 'This is help full i like ittttt', 5,
                    TO_DATE('2025-02-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9978,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8d82d36e-ff01-40ab-83e7-cdb44af38a8e', 2, 'The is not functional at all?', 2,
                    TO_DATE('2025-02-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd77a87f6-2a20-4b6b-b7fa-acbb3d19b636', 2, 'Make it easy and convienient to use and perfect for all to high prefrence and choice.', 3,
                    TO_DATE('2025-02-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9c6f465f-7a3e-4fc6-9366-b5bcb418055c', 2, '🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹👍👍👍👍👍👍👍', 5,
                    TO_DATE('2025-02-04', 'YYYY-MM-DD'), 'POSITIVE', 0.6971,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '63c608e3-85ac-46ab-a948-1ab4a81bd575', 2, 'I have been using this app for two years.It is amazing.', 5,
                    TO_DATE('2025-02-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd36c1143-5ada-44f9-a679-c90ac5fd5d5c', 2, 'Sad experience', 1,
                    TO_DATE('2025-01-30', 'YYYY-MM-DD'), 'NEGATIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c3b78417-6822-48b0-8c40-6f5f96d0e2b2', 2, 'Always do update and that is annoying', 3,
                    TO_DATE('2025-01-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '86e6f672-4fd3-41dd-a49b-21e48aef587d', 2, 'Best app, somehow waiting a few minutes', 5,
                    TO_DATE('2025-01-23', 'YYYY-MM-DD'), 'POSITIVE', 0.6387,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7b07593c-a036-477b-b2d4-4e53fdc4c75e', 2, 'I can''t dijitalize my atm in the apollo app on my phone', 1,
                    TO_DATE('2025-01-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9946,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '06ad47bd-3a6a-45b4-ae10-6dd4170bc254', 2, 'Whenever I try to sign in app close please fixed it out', 2,
                    TO_DATE('2025-01-21', 'YYYY-MM-DD'), 'NEGATIVE', 0.9977,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6c01b8b7-76b7-4f56-a822-bdf7674d30a0', 2, 'በጣም የሚያስጠላ አፕ በጣም የወረደ ዜሮ ነው የምሰጠው ዘሮ It''s not App it''s very slow ehhhh. Why don''t you upgrade the app???? It''s always zero', 1,
                    TO_DATE('2025-01-18', 'YYYY-MM-DD'), 'NEGATIVE', 0.9979,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0a72e292-175c-4f96-be54-991436c22c8e', 2, 'Aadan Axmed Barkhadle', 5,
                    TO_DATE('2025-01-17', 'YYYY-MM-DD'), 'POSITIVE', 0.6128,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '46c41e87-0d7a-491b-8641-2c1acdaddea3', 2, 'Horrible customer service and app crashes Horrible!!', 1,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Reliability', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1c339143-79e1-4f37-9ea7-398b7844903b', 2, 'It keeps asking me to turn off developer mode even when dev mode is off. Couldn''t use it.', 1,
                    TO_DATE('2025-01-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.9986,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5055c357-676d-41eb-824d-48f9e78f41e7', 2, 'Like to much', 5,
                    TO_DATE('2025-01-11', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0fbb5047-8399-4b6f-b063-ddcdeb3e209c', 2, 'The best of best', 5,
                    TO_DATE('2025-01-09', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fb9a7444-76cf-4f2d-a8be-72d3009a034c', 2, 'I was using this app for long time it amazing user friendly UI but the i can''t found for get pin button in the app', 3,
                    TO_DATE('2025-01-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9017,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9bea391b-234f-439d-a844-47d0c839a89a', 2, 'Fast and suitable for the customers.', 5,
                    TO_DATE('2025-01-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cd4d09a6-07d1-44e8-9b1e-d990c3b0b70a', 2, 'Good app and helpful', 5,
                    TO_DATE('2025-01-03', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a7888312-64d5-44d6-b708-a6d29b168825', 2, 'I will give only one star, because it faced with multiple of problems. 1. The app is not as fast as the other banks App, for e.g like CBE 2. The App asks repeatedly to switch off developer options, even if it is switched off. 3. Bank of Abyssinia''s services are interesting, but they ignored the issues on the App service. 4. Most customers gave a complain on the App, but no one accept their complain to fix the issue. 5. Lastly, I will not recommend the App unless the issue has been solved ASAP!!', 1,
                    TO_DATE('2025-01-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9978,
                    '['Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '800bc191-3aec-4666-9f08-4a393dc8501f', 2, 'By assessing this you can tell Abyssinia bank has no idea what mobile banking is ?', 1,
                    TO_DATE('2025-01-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c194a70d-aa2b-4775-8da5-bf51d1c51d2a', 2, 'It doesn''t work at all.', 2,
                    TO_DATE('2025-01-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '06692c6b-978f-4b52-bb83-6c38a11b2822', 2, 'this app is not available', 1,
                    TO_DATE('2025-01-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '89d3f60c-c554-4f6d-9436-ec9c80e8565f', 2, 'Wow what amazing', 5,
                    TO_DATE('2024-12-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b15954f4-c1d9-4b68-af8d-46e8df7a29fc', 2, 'በጣም መሻሻል አለበት....... ለ ባንኩ ማይመጥን መተግበርያ ነው ::', 2,
                    TO_DATE('2024-12-30', 'YYYY-MM-DD'), 'NEGATIVE', 0.9733,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c3a41a6c-cb85-4083-93d4-3bd6a57a339d', 2, 'Lemn embi yilal??', 5,
                    TO_DATE('2024-12-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9907,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ea3d98d4-671c-4ac5-ab1d-f4d9177b1947', 2, 'It''s useless app downgraded.', 1,
                    TO_DATE('2024-12-29', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2d52d1a5-525c-4655-b858-e8d0d2e20bc2', 2, 'Why is not letting me access my account. The whole point of this app is for me to gey access to my account without physically being at the bank. I would give it a zero but a one will suffice to get my point accross.', 1,
                    TO_DATE('2024-12-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.7652,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6f08a7e9-d374-4337-aa1c-929bc4157b1b', 2, 'When are you going to get rid of this and have a real app that works? By far the worst mobile banking app.', 1,
                    TO_DATE('2024-12-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2e488711-7c0b-4546-b00a-bc58f90177dd', 2, 'አይሰራም ሼም ነው፤', 1,
                    TO_DATE('2024-12-23', 'YYYY-MM-DD'), 'NEGATIVE', 0.8616,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4081310f-afcd-4c93-a22c-e9bd240129a9', 2, 'Not that much bad', 3,
                    TO_DATE('2024-12-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9988,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6e64d84c-1cec-4122-91d6-049d64f0b1ad', 2, 'The dirtiest application ever seen...', 1,
                    TO_DATE('2024-12-20', 'YYYY-MM-DD'), 'NEGATIVE', 0.9955,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c44d86b2-4bea-423b-a3d6-069baf1a492a', 2, 'The forest app ever', 1,
                    TO_DATE('2024-12-19', 'YYYY-MM-DD'), 'NEGATIVE', 0.9841,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f467c327-ab9b-4e79-8d97-2e1b573f6c98', 2, 'I love BoA more than anyone but they are cursed when it comed to mobile banking. Even though this ine is hetter it still s*cks! It will ask me to turn off developer options other wise it won''t work! I use CBE, Awash birr, tekebirr, Dashen bank and others but non of them asked me this, why only BoA? Please improve your mobile banking, be competitive!', 1,
                    TO_DATE('2024-12-19', 'YYYY-MM-DD'), 'NEGATIVE', 0.9967,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8b6153b2-b998-4cc2-bae6-a27ff50642c9', 2, 'Bank of abissena', 1,
                    TO_DATE('2024-12-17', 'YYYY-MM-DD'), 'NEGATIVE', 0.948,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b9b684de-8146-46ae-b1fa-8f07272c6fd2', 2, 'Easy and sooo simple to use it, also its easy to stole someones money using the app', 3,
                    TO_DATE('2024-12-16', 'YYYY-MM-DD'), 'NEGATIVE', 0.9889,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '56e4df5e-cfd9-4c86-b9b7-ec322a07674e', 2, 'The worst banking app ever. Never works!', 1,
                    TO_DATE('2024-12-14', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e4c77ae3-0541-45b5-84da-a02029e99719', 2, 'Poorly functioning app', 3,
                    TO_DATE('2024-12-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '56fe3f96-f2d8-4b8f-9766-8305907650d0', 2, 'Your system is the worst you should do better😡😡😡😡😡😡', 2,
                    TO_DATE('2024-12-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2795b1e3-ccdc-4b4a-8c25-cd4c6cc0d2ba', 2, 'It has been a while since you guys started giving the mobile app service but still couldn''t get it to work. I''m sure you know that it doesn''t work already but not sure if you''re lazy or incompetent to fix it. You are losing business because of this. Complacency will have consequences.', 1,
                    TO_DATE('2024-12-10', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '93bee220-7c85-4d30-ba6f-c8168c201b5a', 2, 'This is the best app; many features are awesome, but it should work without the need to turn off the developer options. I''m tired of having to constantly switch the developer options off and on. I''ve been expressing my struggles about this. I have precious settings enabled in the developer options, and to open the App Boa app, I have to turn them off. Please help us, Abyssinia Bank. I hope you can provide an update soon.', 4,
                    TO_DATE('2024-12-08', 'YYYY-MM-DD'), 'POSITIVE', 0.9543,
                    '['Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6fe3a0f0-e9dd-4dcb-81ab-e478b1239d55', 2, 'I’m giving this app one star because there are no options below that. My experience has been incredibly frustrating due to the extremely long loading times, and the app even closes automatically at times. People choose mobile banking for its convenience, but this app is far too time-consuming, making it the worst I’ve used. I hope improvements are made to enhance the user experience.', 1,
                    TO_DATE('2024-12-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9815bb8a-2108-49fe-8292-fb360aed8331', 2, 'Very unprofessional and mischievous bank in my opinion. I have had several occasions but recently I used Abyssinia Card to withdraw money and it was deducted from my account but despite reporting several times they said they are processing it but I learned yesterday that since it has been 3 months the bank has decided to include it in their income. How absurd. If you can avoid this bank.', 1,
                    TO_DATE('2024-12-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9941,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f07f9c2b-112a-4fe7-9187-0da7683616bc', 2, 'It doesn''t work on my 2 devices A05 and A34 😡', 1,
                    TO_DATE('2024-12-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b53d4763-fbf3-4815-93c6-415d6026c863', 2, 'It''s better to say I don''t use boa rather than pulling your phone out and opening this app', 1,
                    TO_DATE('2024-12-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.9982,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '709e40a3-94cf-4414-9d03-b83ab5783be2', 2, 'My attention is very important because it will be the most difficult time for me', 5,
                    TO_DATE('2024-11-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9926,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c150161c-e679-408f-aa76-41f4c9787f9a', 2, 'I have a worst experience while using this mobile application through out the year. Most of the time it fails to "Login" or automatically closed the app. And also it takes so much loading time (5 minutes +) trying to access the internal services. Sometimes also while transferring within and to other bank also fails. So, BOA please fix your app.', 1,
                    TO_DATE('2024-11-29', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Account Access', 'Transaction Performance', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8c12373b-e19d-494f-8506-a54490d9709b', 2, 'I don''t know why but your apps start out great then all of a sudden don''t work🤷‍♀️', 1,
                    TO_DATE('2024-11-28', 'YYYY-MM-DD'), 'NEGATIVE', 0.8064,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1756e606-985f-44eb-bab4-95bcf0848416', 2, 'This application is losing major factions on a daily basis. I can count how many times I have used this app; it is completely useless and disappointing if I am not going to use it in times of need then I don''t see the point.', 1,
                    TO_DATE('2024-11-28', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a49183c0-2f37-4898-a64e-ab1cce218c2d', 2, 'exellent digital transaction of money', 5,
                    TO_DATE('2024-11-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9944,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5816b056-8f44-4faf-92a4-a28efd01448b', 2, 'The latest update has stopped android 9 phones not to open this App. Never work properly since i started using it.', 1,
                    TO_DATE('2024-11-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'bd0a4a80-4971-4156-9418-bef834d65877', 2, 'It needs more improvment', 2,
                    TO_DATE('2024-11-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.9986,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3d00a389-ea31-4ae9-ae70-9014f48845ca', 2, 'Please this app on my android phone', 3,
                    TO_DATE('2024-11-20', 'YYYY-MM-DD'), 'POSITIVE', 0.6489,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd9c98c7f-3df6-466f-a6fc-820cb281fad1', 2, 'Your app doesn''t match your bank, the app is disaster, super slow. Please learn something from tele birr app.', 1,
                    TO_DATE('2024-11-19', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '695331e7-0600-4a44-805b-255770e5f33b', 2, 'Fast and reliable', 5,
                    TO_DATE('2024-11-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3d362e0c-4c39-498b-8b61-b52226effacd', 2, 'The worst app update ever. Why would you include the "developer option off" thing here? Why do you care? It is my phone my money, right? That is the reason why I switched to other banks. So either turn it off or everyone will discontinue their business one by one.', 1,
                    TO_DATE('2024-11-17', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f106cb33-9dcb-4a38-a65d-3cbb1a9a790e', 2, 'One of the poorest mobile banking system', 1,
                    TO_DATE('2024-11-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6446c637-4d71-4aa9-b09c-abcc44110734', 2, 'i find it interesting specially in reciept downloading', 1,
                    TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9981,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e086cf56-30a1-4650-b7c7-492dbab0f831', 2, 'This app crashes everytime, please fix it', 1,
                    TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5d19cf33-a0a2-4263-ae80-c963660bde79', 2, 'አንድ star ራሱ ይበዛበታል። i dont recomend to use this app also the bank', 1,
                    TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9964,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '316e654c-3526-4bca-8086-60b63895f732', 2, 'I need a support the app is not working', 5,
                    TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '553a157d-5f77-4f45-849e-6985fd3f61ca', 2, 'Bast bank of ethiopia', 5,
                    TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9978,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3bf25c8f-faed-49a0-b64c-feff01ccadfb', 2, 'very slow app. አቢሲኒያን ከሚያክል ባንክ የማይጠበቅ software app. ከቻላችሁ ሙሉ ለሙሉ እንደገና አሰሩት።በጣም ይመራያል ያሳፍራል።ለapp የወጣው ወጭ በሙስና የተበላ ነው የሚመስለው።', 1,
                    TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9991,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd7d3b979-cd01-4ecf-936f-02cb87adc6b3', 2, 'thank you for your social services like, vertual banking, non touch ATM, Cadrless and withdrwal with out passbook...', 5,
                    TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9879,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fe160342-c4b4-442c-910c-2ddce8172994', 2, 'The worst App i have never seen like this before', 1,
                    TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '193d231d-a098-4e8b-992e-96c9d9b43bee', 2, 'Great service', 5,
                    TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '10cdcbf6-81ab-4281-8583-665788be8e91', 2, 'This app is not available on all android versions and some times it is not functional.', 1,
                    TO_DATE('2024-11-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd8ad8495-2424-4c41-9e0c-7f484eedacc0', 2, 'senayt Mesfin', 4,
                    TO_DATE('2024-11-08', 'YYYY-MM-DD'), 'POSITIVE', 0.8875,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8405e36b-c5ee-4a39-92b8-2bbda678dcf1', 2, 'Bad app vety bad.', 1,
                    TO_DATE('2024-11-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ad41ef41-4f31-4dc7-a2dc-b48d3d38a5cd', 2, 'Abessnya Banke', 5,
                    TO_DATE('2024-11-05', 'YYYY-MM-DD'), 'POSITIVE', 0.9874,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ac6715ed-80bf-4720-8893-cd6f0340c82c', 2, 'The most useless app, I never expected such an irrelevant app from BOA. big shame!', 1,
                    TO_DATE('2024-11-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1278f570-8dea-4557-a749-5466685c05e4', 2, 'Professional on banking app', 5,
                    TO_DATE('2024-11-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9616,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '169b6d5b-b5df-4a42-9168-ce968142da5b', 2, 'Has some nice interface but always freezes or slow to load .App developers please fix this issue.', 3,
                    TO_DATE('2024-10-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.9936,
                    '['Transaction Performance', 'User Interface', 'Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '14287667-7529-4f0a-b119-c9a37b43b788', 2, 'አይሰራም አስተካክሉት', 5,
                    TO_DATE('2024-10-26', 'YYYY-MM-DD'), 'POSITIVE', 0.7851,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '518dfdbb-4c08-469f-aee2-3caba92930ac', 2, 'Please try another because this app doesn''t feet the need of this generation', 1,
                    TO_DATE('2024-10-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.9963,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a151105b-8d49-4e7a-bf55-62feca737e04', 2, 'Fast transfer', 5,
                    TO_DATE('2024-10-24', 'YYYY-MM-DD'), 'POSITIVE', 0.999,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9b20307d-6ea1-4920-a74f-b5d6f16390bb', 2, 'What''s up I can''t log in, what''s wrong', 5,
                    TO_DATE('2024-10-22', 'YYYY-MM-DD'), 'POSITIVE', 0.999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '908563f1-4304-45f7-a634-e4e4e64e8118', 2, 'Amrumehamed', 1,
                    TO_DATE('2024-10-21', 'YYYY-MM-DD'), 'NEGATIVE', 0.6924,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4fe26762-e4bf-4ebd-bbeb-538577f6d724', 2, 'Nice to meet you my proud bank in Ethiopia.. I''m a member of this bank, i need to solve my problem of international receiving money for me from my online digital working service''s over the world please? I''m working a lot of international money.But i can''t get direct in Ethiopia because of don''t knowing the legal ways of getting money in Ethiopia please can I get and direct deposit with BoA please 🙏🙏🙏?', 5,
                    TO_DATE('2024-10-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9684,
                    '['Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '03ed7b23-17b8-4ae5-9c2f-29922a888edf', 2, 'Terrible Bank Experience It’s unbelievable that with all the modern technology, this bank still struggles with even basic transactions. The app constantly crashes, services are limited, and every time I try to transfer money or load Telebirr, there’s a huge delay. I have to wait 5 days for failed transactions to be refunded! Even USSD is unreliable. They’ve put me in embarrassing situations countless times, and customer care never fixes anything. I’ve switched banks, and you should too!', 1,
                    TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'NEGATIVE', 0.9995,
                    '['Transaction Performance', 'Reliability', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'df4d9c87-1a87-4a1d-8900-581c52470725', 2, 'A painfully slow banking app service. Please don''t make it your choice!', 1,
                    TO_DATE('2024-10-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Transaction Performance', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e3dac0d5-d198-42ee-8536-2d6fd0365164', 2, 'Best app to me', 5,
                    TO_DATE('2024-10-11', 'YYYY-MM-DD'), 'POSITIVE', 0.9978,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1d49e80a-b12c-4cd5-abd9-b9b2d6612d64', 2, 'If it is possible I would gove0 star', 1,
                    TO_DATE('2024-10-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9928,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd1c75600-5e8d-416b-8627-b3700bc64633', 2, 'Nise mobile bankig', 4,
                    TO_DATE('2024-10-05', 'YYYY-MM-DD'), 'POSITIVE', 0.9859,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ac7391a6-712b-424c-970d-6dba1a0dd845', 2, 'Overall good app but performance needs some improvement also sometimes when using instant other bank transfers it refuses causing to be repeated several times to transfer', 4,
                    TO_DATE('2024-10-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9533,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ab760759-00d0-43fd-9267-f1d3f34a74e6', 2, 'Just make it work please🤣 this is embarrassing for a bank of your size', 1,
                    TO_DATE('2024-10-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3a05c496-6385-4903-b2f5-54f69bdd8ee7', 2, 'Update to the simplest way it requires the developer option on and off why this is', 5,
                    TO_DATE('2024-10-04', 'YYYY-MM-DD'), 'POSITIVE', 0.998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '94ba00d0-c2e8-4e21-9e71-af2395f2d0ca', 2, 'Stop telling me what to do with my phone, BOA. Why does your newly updated app keep asking me to disable the developer options? I’m not slowing down my phone just to use your God damn app. 🤮🤮🤮🤮', 1,
                    TO_DATE('2024-10-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9964,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b4f29388-db8b-4ce7-9539-82a8c57b071a', 2, 'I''m living out of country how may I download and use mobile banking? It asks me the Ethiopia phone number and I can''t receive text to confirm because I''m out side the country. So please lete know if I can use while I''m outside the country. Thanks', 1,
                    TO_DATE('2024-10-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.6597,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '510eb8c1-9b58-4989-bdd1-674fa63c3d08', 2, 'The worest app ever', 1,
                    TO_DATE('2024-10-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9536,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f242b9c6-0093-4b0d-85c6-fec827999123', 2, 'አሪፍ ነው በርቱልን', 5,
                    TO_DATE('2024-10-03', 'YYYY-MM-DD'), 'POSITIVE', 0.8337,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4cbbb09a-77c0-45b2-89e6-784c7186918b', 2, 'Great For Financial company', 5,
                    TO_DATE('2024-09-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1afdfab9-884b-4dd2-9881-a468a0eb567f', 2, 'Very easy to use', 5,
                    TO_DATE('2024-09-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9991,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5d940978-07d3-41d9-81b1-74867eb724a3', 2, 'The App''s crash always.. Error.....', 3,
                    TO_DATE('2024-09-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '180bed10-eda6-4491-84cf-93d55ff8d92c', 2, 'This app is incredibly frustrating to use. It’s filled with issues that make it difficult to navigate and complete tasks efficiently. I’ve never encountered such a poorly designed banking application before. It needs significant improvements to enhance user experience. It deserves a vey low rating.', 1,
                    TO_DATE('2024-09-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9986,
                    '['User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e03e750f-2744-47c8-9f9b-e54a13cde49a', 2, 'Great UI and seamless UX. I love it!!', 5,
                    TO_DATE('2024-09-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a84791b9-6811-4e81-9461-b4e880dee4d6', 2, 'That''s too good application but try to add more alternatives and futures or possibilitys for your customers', 3,
                    TO_DATE('2024-09-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.9941,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f4b63e31-2da1-40e8-acf5-fdb0a6e0b1a0', 2, 'It''s easy used to operate program and secured 👍👍', 4,
                    TO_DATE('2024-09-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9653,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0382f8e0-e971-4b72-8392-b9aca8d61d7e', 2, 'I bought a mobile card on this app but I didn''t receive it and it took my money and I didn''t get my money back.', 1,
                    TO_DATE('2024-09-21', 'YYYY-MM-DD'), 'NEGATIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9a938500-3558-429f-b5aa-f84792f3e442', 2, 'Great app with great services', 5,
                    TO_DATE('2024-09-19', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a5ea959a-2e3d-442b-ba31-70b22aebb873', 2, 'Yes active user', 5,
                    TO_DATE('2024-09-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9984,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '432b754e-574b-4686-8f97-7a8f80f3a39d', 2, 'The worest app ever made i would not recommende for no one', 1,
                    TO_DATE('2024-09-16', 'YYYY-MM-DD'), 'NEGATIVE', 0.5611,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '889a96ef-4854-4b7c-a3f5-a666fb79307a', 2, 'Good application', 5,
                    TO_DATE('2024-09-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c33b61e9-53db-4349-9ffb-a0d8a5a59051', 2, 'How many hours should I wait after transferring money to telebirr, please do something about the transfer delay issue I need my money when ever.', 1,
                    TO_DATE('2024-09-15', 'YYYY-MM-DD'), 'NEGATIVE', 0.9989,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a8423c57-d734-4ebf-9dda-4f4dd43091ec', 2, 'BOA is unreasonably holding and delaying transactions for more than a day, even transactions within the same bank itself. This is a huge gap that I observed in BOA mobile banking. I didn''t experience this kind of challenge while having transactions in other banks'' mobile banking platforms. After waiting so long, I called your customer support team and the response they gave me was "it was the system that holds the transaction & will be released on working days". This is not totally fair.', 1,
                    TO_DATE('2024-09-15', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Transaction Performance', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '72e37eb9-220e-4ebb-8068-a846c6c2ec45', 2, 'የእርስዎን ተሞክሮ ይግለጹ (አማራጭ)', 5,
                    TO_DATE('2024-09-14', 'YYYY-MM-DD'), 'POSITIVE', 0.8698,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7f00e003-f4e4-49e1-bdd1-16c71454d8ea', 2, 'It''s not working. It needs a big update. Can''t you update the app quickly?', 1,
                    TO_DATE('2024-09-14', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '15bcf00e-6cb4-4e13-9ded-9b6a1cce2bd8', 2, 'I am Aimohon Joel , It''s can be Good for a Better Conversation in Time 🙂', 3,
                    TO_DATE('2024-09-14', 'YYYY-MM-DD'), 'NEGATIVE', 0.9925,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a597b94a-ed3c-4fa9-a749-a23d54faa49c', 2, 'Better app than most mobile apps, but why do I have to turn off developer option every time I wanna use the app?? It''s annoying.', 1,
                    TO_DATE('2024-09-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.9993,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8f298344-5e64-4ebe-bbcc-c24b6909b563', 2, 'Bes and freindly app', 5,
                    TO_DATE('2024-09-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9137,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6bd7e86b-f9b2-4204-925d-33082e883d64', 2, 'It doesn''t work.', 1,
                    TO_DATE('2024-09-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1e10c54c-f676-477c-9a7b-bb0aba1aeb9e', 2, 'It say "The request was not successful. please check device connectivity or try again" why? One of the bank manager told me it is because of my phone''s android version which is 9.1 It is ridiculous! Disappointing', 1,
                    TO_DATE('2024-09-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f736ba52-844f-46ef-9164-1803171f7177', 2, 'How to download or screenshot of payment receipt...what kinda worst app ever 🤮🤮🤢', 1,
                    TO_DATE('2024-09-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '156a8b49-e33e-4088-85d6-879c49082f30', 2, 'Smart technology', 5,
                    TO_DATE('2024-09-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd6d25233-fa63-4817-a558-29517149d2ff', 2, 'Yegema app tish🪨', 1,
                    TO_DATE('2024-09-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9502,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '07b686cc-bf94-4164-a731-684fa29cfb83', 2, 'This is not an appropriate app, i don''t know how boa develops this app, i don''t expect this much crazy and un confortable app form BOA, I''m soory!!!', 1,
                    TO_DATE('2024-09-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '83311c04-cd01-496c-b382-2caaa5132819', 2, 'Shockingly bad! Even when it decides to work, it''s painfully slow and frustrating. Such a shame that it has become a stain on an extraordinary bank', 1,
                    TO_DATE('2024-09-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a2fb35e2-3828-4626-bddb-7443e04bf770', 2, 'It crashes frequently. It launches on Android 8.1 but I don''t think it actually works on versions less than 10. If so, it shouldn''t be available for download by such devices to begin with, like many other finance apps are not. It was so much better three months ago, upgrades should be for the better.', 1,
                    TO_DATE('2024-09-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9992,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3283f02f-0474-44ec-b7d6-5e90c94d88d4', 2, 'Awesome application. But lately its crashing everytime i opened it.', 4,
                    TO_DATE('2024-09-05', 'YYYY-MM-DD'), 'POSITIVE', 0.9128,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '46e93d8a-1db7-4de9-af68-14e66a30c6c1', 2, 'እጅም በጣም ደካማ አፕ ነው ሲፈልግ ይከፍታል ሲፈልግ አይከፍትም ከአዋሽ እና ንግድ ባንክ የመሳሰሉ ባንኮች ሲወዳደር ሞባይል ባንኪንግ App እጅግ የሚያበሳጭ ነው ለውጥ ያስፈልጋችኋል', 1,
                    TO_DATE('2024-09-05', 'YYYY-MM-DD'), 'NEGATIVE', 0.9639,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ed313595-7211-44a8-9b42-defd7503aebc', 2, 'Nice looking app but a terrible user experience.', 1,
                    TO_DATE('2024-09-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9958,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2d922abd-f8f3-4666-8a3f-d83060bb7b5d', 2, 'The worest MB app ever!!🙄', 1,
                    TO_DATE('2024-09-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.8735,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '861dcf64-11ac-4109-9416-dca7c303cdf9', 2, 'Plz fix the Apps ....screenshot lovation hide from glarey share botten not work😔😔', 1,
                    TO_DATE('2024-08-30', 'YYYY-MM-DD'), 'NEGATIVE', 0.9987,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9ecfe32c-ca36-4390-b7c5-73b509e9eb02', 2, 'The worst experience ever', 1,
                    TO_DATE('2024-08-29', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b15b04c0-0c95-4ef7-bf69-1a458114f5db', 2, 'Hussenaliumar', 5,
                    TO_DATE('2024-08-29', 'YYYY-MM-DD'), 'POSITIVE', 0.6655,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8d23e22a-989a-44bb-81bf-3f34c868d3de', 2, 'Hi I have problem with this App BOA mobile I don''t know what is wrong with this App I did many times download but it''s sam doesn''t work if sam like that this app way I have to be customer with them how I know my account and checking save The book is no Not enough alone', 1,
                    TO_DATE('2024-08-28', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a3d2eb8a-821b-4e7a-8811-13e76f876378', 2, 'It is not work for my device', 5,
                    TO_DATE('2024-08-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8f57afa4-5ed4-4db7-ab84-7b52045fa94e', 2, 'I''m Sick and tiered of enabling and disabling Developer Option Everytime I use this app. maybe you know it maybe you dont, fix it please it''s anoying', 1,
                    TO_DATE('2024-08-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.999,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a5c6ec4a-ac4e-4ab7-83dd-271c28d11492', 2, 'The worst app ever', 1,
                    TO_DATE('2024-08-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '51aba586-a360-476f-8523-7772f8f56827', 2, 'Betanya Gebre', 3,
                    TO_DATE('2024-08-23', 'YYYY-MM-DD'), 'POSITIVE', 0.8912,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9fa13def-7ef1-4e33-bbd4-24d4a4c2c1b0', 2, 'I dont recommand it to any one', 1,
                    TO_DATE('2024-08-23', 'YYYY-MM-DD'), 'NEGATIVE', 0.9856,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1b043c6b-bf34-4b3b-a43b-a35d2613fb26', 2, 'Excellent app', 5,
                    TO_DATE('2024-08-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '13cb3aad-a536-447c-8e30-2d7eaedcf5e4', 2, 'The application used to work well. But after updates I''m not able to use the forgot password feature, which is blocking me from accessing it as a whole.', 1,
                    TO_DATE('2024-08-20', 'YYYY-MM-DD'), 'NEGATIVE', 0.9989,
                    '['Account Access', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e7724869-421f-4e36-be90-104ea76feb33', 2, 'App isn''t working', 1,
                    TO_DATE('2024-08-18', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7172704c-d6ab-4ee6-8c06-7e540a7d5fc7', 2, 'so far good but always it lugs', 3,
                    TO_DATE('2024-08-17', 'YYYY-MM-DD'), 'NEGATIVE', 0.9829,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fd6fe106-f83e-4e61-8f27-3555b7e5a227', 2, 'Don''t trust this bank and its service.', 1,
                    TO_DATE('2024-08-16', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'bd90f06d-8e5d-498a-b0be-de5110c3c700', 2, 'I can not open and use the application,please help me!', 5,
                    TO_DATE('2024-08-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b9ddd42d-164a-41e5-b5cd-55dd14cfbd8c', 2, 'Mostly not working 😑', 1,
                    TO_DATE('2024-08-14', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6e039674-a668-43a6-8d89-201a4c32000e', 2, 'Despite the enhanced technology you have, the application doesn''t work properly, and it asks for the developer option to be turned off, fix that.', 3,
                    TO_DATE('2024-08-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f3cb13b7-59a4-4910-8373-e7a7f3f9d1e9', 2, 'Very poor app b/c highly slow to open the app', 1,
                    TO_DATE('2024-08-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '501db4c8-f14f-4810-9590-d4ab79be84a2', 2, 'Wedi Tekle .', 5,
                    TO_DATE('2024-08-11', 'YYYY-MM-DD'), 'POSITIVE', 0.8421,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '91b3d4e5-b3c9-4de6-8bbd-99cfec87e3d0', 2, 'Bad app📱👎👎👎', 1,
                    TO_DATE('2024-08-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0893e704-f5b8-49d8-b12d-dd7e8924daa6', 2, 'Dura nan fayyadaman ture amma garuu naaf hojjechaa hin jiru maaf?', 5,
                    TO_DATE('2024-08-11', 'YYYY-MM-DD'), 'POSITIVE', 0.9956,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'aeea13da-3744-4721-95b1-60031b562393', 2, 'ሰላም አቢሲኒያዎች የሞባይል ባንኪንጋችሁ ተጠቃሚ ነኝ አገልግሎቱን ስላስጀመራችሁለን እናመሰግናለን። ነገር ግን አለፎ አልፎ የነበረው የማስፈንጠሪያው በአግባቡ አለመስራት አልፎ አልፎ ወደመስራት ተቀይሯል ድሮ እንደነበራችሁ እናውቃለን ዘንድሮም ብትኖሩልን እንመርጣለን *ከዘመን አንጉደል*', 3,
                    TO_DATE('2024-08-10', 'YYYY-MM-DD'), 'NEGATIVE', 0.9522,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ba879c5c-680b-4f62-867c-3f7e8fd1e694', 2, 'Gooood app my dear', 5,
                    TO_DATE('2024-08-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9006,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '88e2b5f6-040e-452a-9bad-a98caa89cd95', 2, 'Harun tamam galanaa', 3,
                    TO_DATE('2024-08-09', 'YYYY-MM-DD'), 'NEGATIVE', 0.9411,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '98b97eb6-5299-43f7-a372-45b0a486318b', 2, 'A total disaster of an app. Always offline, never works, it''s embarassing. I''ve lost hope and taken my business to a competitor', 1,
                    TO_DATE('2024-08-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '56402226-89f9-4f56-9761-e0dfeed5718b', 2, 'so poor app to use can''t start up when open the app', 1,
                    TO_DATE('2024-08-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9151c064-a00f-4efc-ad7a-1f632401b194', 2, 'This app takes too long time to be opened. And even it is not working simply as other banks application. Why this app does not give a digital invoice. Even, I am not able to find where the screeshot is kept after transaction. So, please the developer should fix all these.', 1,
                    TO_DATE('2024-08-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9987,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '85a692a1-c9ed-4525-a373-8756f3b9724a', 2, 'Worst app ever, not user friendly, even doesn''t serve basic functionality correctly, takes to much time to login and navigate through the app, we expected more from this bank', 1,
                    TO_DATE('2024-08-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Account Access']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c22c687c-b43d-418d-bd9a-c534c12bdee4', 2, 'I mean how could a big financial company like this, be this much irresponsible to release this app? You should be ashamed!', 1,
                    TO_DATE('2024-08-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5af4e484-25a8-4612-a21f-78d14133c52d', 2, 'Is it necessary to switch off developer options every time to use mobile banking?🤔🤔😡😡😡', 1,
                    TO_DATE('2024-08-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9979,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd65cb095-4aad-44b5-ace2-de0e6be51444', 2, 'The previous version is better it doesn''t work', 1,
                    TO_DATE('2024-08-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b42ad5f5-049c-49dc-a13c-39b7414793d0', 2, 'I don''t know what is wrong with BOA as a bank in general. It''s been going backwards since last year or so. The app is a disaster to use in every possible way. Not stable to log in and very slow to perform transactions, couldn''t take a screenshot (or can''t even find the pictures even using its save screenshot option). Most of the time, it fails to perform transactions and so on. Simply, it''s the worst!', 1,
                    TO_DATE('2024-08-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '612a0e01-ba70-498b-a331-e93ce6adfce0', 2, 'Take some note from CBE mobile banking app, it''s the best banking app currently take some note and improve ur app . Sometimes u have to learn from the bests 🙌', 1,
                    TO_DATE('2024-08-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9959,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9813a786-cefe-4a1b-932e-e920944fadec', 2, 'It''s a useless app', 1,
                    TO_DATE('2024-08-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '95b8d5aa-aa79-40a8-b250-6bf68f7b9782', 2, 'It''s not working as it was , so much need to improve, it was the best but not anymore', 2,
                    TO_DATE('2024-08-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.9969,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2bf2f6fe-c408-4a46-9ca9-809df277d9e8', 2, 'Poor network', 1,
                    TO_DATE('2024-08-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '03bcdbc8-adcf-4f5d-b155-1001f6debab5', 2, 'Not yet completely working this App. i don''t know when is it will be working properly! Its Sad!!!', 1,
                    TO_DATE('2024-07-31', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1d426479-7c59-42d4-b349-7bc3afaf374e', 2, 'The app does not open sometimes it says coonection issue which i dont have and after it opens it has bugs while using its not smooth to work with please improve it', 1,
                    TO_DATE('2024-07-31', 'YYYY-MM-DD'), 'NEGATIVE', 0.9953,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'be349d45-280d-4ecf-8d23-71c407bd38c6', 2, 'It''s not working totally, what a useless app is it,', 1,
                    TO_DATE('2024-07-31', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '758affdf-42d5-466d-a18e-4c4bbeb738fd', 2, 'This app has become the most troubling every day. It doesn''t work. I love the bank, and I hate the app', 1,
                    TO_DATE('2024-07-31', 'YYYY-MM-DD'), 'NEGATIVE', 0.9989,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '14bb95be-0bf2-43a7-8757-a4a82eeddd80', 2, 'this is so disappointing app 😞', 1,
                    TO_DATE('2024-07-31', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4e9b8da6-1754-42e0-ae35-531e8a757183', 2, 'አቢስኒያ የሁሉም ምርጫ', 5,
                    TO_DATE('2024-07-29', 'YYYY-MM-DD'), 'POSITIVE', 0.8337,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3caf7a29-584d-4d26-b615-ed88a0be9da6', 2, 'The worst app', 1,
                    TO_DATE('2024-07-28', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e960ae7a-6e14-47e3-83d2-2d9b3f666a01', 2, 'it can''t even open and only display error messages', 1,
                    TO_DATE('2024-07-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.9993,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5b46e22e-c7a6-4a66-bd2c-5976bd9a46f9', 2, 'To get good quality', 5,
                    TO_DATE('2024-07-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '012b929b-0cb1-4f2e-89c3-cae3fcc4b2d3', 2, 'አይሰራም እኮ ምንድን ነው ችግሩ?', 1,
                    TO_DATE('2024-07-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9648,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a185087f-8a27-444a-8646-23f7ab69b205', 2, 'uselss app dont download', 1,
                    TO_DATE('2024-07-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9977,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c8c1d8d1-5304-4e81-a052-f7437a7b341e', 2, 'Is this app fake i try it not working it say please try again later, unable to make transactions what is the purpose of this app . If it is not working delete it', 1,
                    TO_DATE('2024-07-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '06f1e24f-10fc-461b-862c-180fb9acf4f4', 2, 'This app didn''t work. They have a new version (new app) but still not compatible with my Samsung S8+ , which is v.funny.', 1,
                    TO_DATE('2024-07-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b209e7d6-5e6b-41ca-9658-be1a2a635ccc', 2, 'Corrupted and poor app', 1,
                    TO_DATE('2024-07-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1920d8a2-4e03-4818-8a69-7c17c565ae75', 2, 'When I try to use the application it says ''developer setting should be off'' where is the setting to off this play Still doesn''t work for me', 3,
                    TO_DATE('2024-07-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd013e7a7-f3ca-47ec-a3e9-84c741e47b7a', 2, 'FIX YOUR Apollo!! You guys where the best 👌', 1,
                    TO_DATE('2024-07-23', 'YYYY-MM-DD'), 'NEGATIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd3a4d1b9-9b82-4760-bd5d-ae4fd3232750', 2, 'Always slow and doesn''t work on weekends if you are in a rush or a merchant this app is not for you', 1,
                    TO_DATE('2024-07-23', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ec8fcf0d-19d7-446f-bd1e-907f91a67b49', 2, 'It''s very difficult to use the user, app,ones dawenload the user can''t operate well , no one can help me,', 1,
                    TO_DATE('2024-07-23', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f9d522b2-ef61-43ea-bdff-9ccf70b88498', 2, 'Poor application. It turned off by itself', 1,
                    TO_DATE('2024-07-23', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b6e1b58d-d5d6-4134-b837-32c4833850ae', 2, 'It usually crashes and the reason it gives is a problem on internet connection although the internet was fine.', 1,
                    TO_DATE('2024-07-23', 'YYYY-MM-DD'), 'NEGATIVE', 0.9991,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3c4112db-f5c6-4d6c-9df2-de29043c5c14', 2, 'we want international mobile banking', 1,
                    TO_DATE('2024-07-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9588,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '01c3d316-3dbc-4e5c-9a71-8ed4fecc7233', 2, 'screenshot isn''t working, Please modify it', 2,
                    TO_DATE('2024-07-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ac10c99a-bbe4-4a0c-92c3-14e312356969', 2, 'Naziriet measho 89160437', 1,
                    TO_DATE('2024-07-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9863,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '55a9b559-0322-409d-9973-ebd1f7b5595b', 2, 'Ahmed Mohammed husen', 3,
                    TO_DATE('2024-07-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9124,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0b4b949e-9c50-4262-9b4a-fcdd563921ea', 2, 'Is not working both this one and apollo did u make it better pls am gonne stop using this bank because of the mobile banking', 1,
                    TO_DATE('2024-07-19', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e090fd59-6274-4827-8c79-644c6a1f5c73', 2, 'I have experiance', 5,
                    TO_DATE('2024-07-19', 'YYYY-MM-DD'), 'POSITIVE', 0.807,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '481a1e89-df8b-43d4-9bf7-aa4a5cd196f5', 2, 'The App is not working on Android 9.1 at all. It shows an error notification and forcefully closes the app. Must be fixed ASAP.', 1,
                    TO_DATE('2024-07-19', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2a2d15cb-06ba-425c-a417-2f020e552505', 2, 'Crashes very frequently is not stable overall need improvement such a huge bank needs a better app than the current one', 1,
                    TO_DATE('2024-07-19', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Reliability', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd7ee5d77-4c89-4e81-a79d-000f5e23c3ac', 2, 'The previous application is much better than this one', 1,
                    TO_DATE('2024-07-18', 'YYYY-MM-DD'), 'NEGATIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '29aa3b3c-e4c7-41c7-bbb1-5d514633c307', 2, 'Worst app. It is wise to invest money and you can make it like CBE app. Even the incon has no image. My app has better UI than yours. So, please invest more and hire professional developer companies and improve it.', 1,
                    TO_DATE('2024-07-18', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b1ec9a7a-5962-45c7-ac3a-0043f8a96f9e', 2, 'It is not working at all', 1,
                    TO_DATE('2024-07-16', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '95a7177d-a323-4a17-98ad-9f94ea147686', 2, 'The poorest mobile banking survice ever. Only error reports frequently', 1,
                    TO_DATE('2024-07-16', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '421ae4df-7a88-426e-b355-1a437f7f8f3f', 2, 'The worst banking app', 1,
                    TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a98b2177-e8cf-4818-aa1b-82a1e80df07b', 2, 'The app is constantly crashing and freezing when to send to BOA customers'' accounts.', 1,
                    TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'NEGATIVE', 0.9988,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b56a3452-b7ca-4299-a268-8bb9e84fb3c5', 2, 'No work app', 5,
                    TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9969,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e5d0a231-52e9-4fba-8173-ca61c25de63b', 2, 'Is ok but stop sundenly', 5,
                    TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9309,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3a262ba3-fdc7-4f08-92a4-93b0a862ec2f', 2, 'experienced', 5,
                    TO_DATE('2024-07-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9951,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b9471f3a-2e46-4397-a4df-f466c05a21cc', 2, 'Very poor app. Its Always cresh and not compatible', 2,
                    TO_DATE('2024-07-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3cc9d24d-ace9-45a4-a843-7750c0babd8d', 2, 'It''s not functional at all. It keeps saying "error". Unable to activate.', 1,
                    TO_DATE('2024-07-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3af6db50-c93f-4916-bc9b-8ce248f59a4e', 2, 'I can''t believe that Abyssinia develop this kind of trash app it have a lot of issues 👎👎👎', 1,
                    TO_DATE('2024-07-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.9983,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e498340e-1663-4ced-83b2-cc2cd8e4e595', 2, 'The new app is very good', 5,
                    TO_DATE('2024-07-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '56e691a9-fdd9-469b-a8b0-d495312cda48', 2, 'It''s very good but sometimes isn''t work probably', 5,
                    TO_DATE('2024-07-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9371,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e303c5a5-ecd1-4f13-b38c-4b9523bbf321', 2, 'It doesn''t work', 1,
                    TO_DATE('2024-07-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'db0f8d24-804c-4cf2-8a36-f1f68b6bd616', 2, 'This is the most stupid app I''ve seen, why would I turn off developer mode just because you can''t make your app secure, this clearly indicates the app has very poor implementation and unskilled developers.. There are a lot of people who need developer option for different reasons. Please for the sake of the bank, fix this thing... Even the most secure international banking apps don''t require it. Not to mention the lag and crashes', 1,
                    TO_DATE('2024-07-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Reliability', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7bc823fa-4a5e-449b-a505-235522c4c501', 2, 'The worst mobile banking app', 1,
                    TO_DATE('2024-07-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0c83e05b-6fa5-425f-9f09-a30947722360', 2, 'It is not fast', 3,
                    TO_DATE('2024-07-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9972,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '94d435e8-8e1a-43e6-8a3c-bd755d66064e', 2, 'The app keeps crashing it stops responding while I''m using it or trying to open the app. Now I have to go to the bank in person to do any banking activities. In short it is the worst mobile banking system in Ethiopia', 1,
                    TO_DATE('2024-07-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9d157253-6414-46f1-a2f3-0867fbd3f25d', 2, 'Pretty good for a banking app, it still lacks some things with in the ui and with the speed of the app but overall it''s a good application. Thank you 5/5👍🏻', 5,
                    TO_DATE('2024-07-09', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '986b160c-cade-4ae5-918e-eddd2802d4d8', 2, 'After update it doesn''t work well', 2,
                    TO_DATE('2024-07-09', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5f80fcab-9967-4c8a-8e42-fe8ecfca0f11', 2, 'Error occurred try again for 5 days tele birr user not found ለራሴ አዝዤ', 1,
                    TO_DATE('2024-07-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9983,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5921455b-b0e2-4cc1-90a3-92ff67166c47', 2, 'Good but Very slow.', 1,
                    TO_DATE('2024-07-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9878,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ecca0ed7-ddf3-4dbe-ba38-145eca8dea76', 2, 'Very good app', 5,
                    TO_DATE('2024-07-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '402ea96f-df73-4dab-a929-4c66f64adce7', 2, 'It is so bad apps ,it doesn''t work', 1,
                    TO_DATE('2024-07-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'eb3fc431-4145-4276-990f-496c764b7ea7', 2, 'From now on I will never going to use this app,It is a trash app.No one care about this app from bank I will rate them 0/5.', 1,
                    TO_DATE('2024-07-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6d67dca3-b643-462f-bfac-f49811eb1473', 2, 'It usually crashes and unable to process also it request to off the developer options', 1,
                    TO_DATE('2024-07-05', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Reliability', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7e065fc1-25c6-4ed8-96a1-d9e74c4d57ee', 2, 'Workneh girmamo', 5,
                    TO_DATE('2024-07-05', 'YYYY-MM-DD'), 'POSITIVE', 0.94,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1bdac495-0844-4896-b693-213485aad561', 2, 'I can''t believe in this day and age, one of the major banks of the country can''t seem to understand that having a working mobile payment option is a **MUST** to survive. I have decided to move my accounts to CBE and Awash because of this. Can''t be bothered with this useless app.', 1,
                    TO_DATE('2024-07-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9974,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '61368724-0edf-4e9e-89fa-24210bf530ad', 2, 'Is it even working these days? Please check it.', 1,
                    TO_DATE('2024-07-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9893,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '53214d92-a487-43cb-b69d-b65294b40823', 2, 'The app is essentially unusable, it asks to disable developer mode even when it is already disabled and crashes, sometimes it only works with wifi and sometimes only with data, or it crashes just because.......', 1,
                    TO_DATE('2024-07-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9995,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f402174e-b7fe-45b9-9140-7648c19fdd33', 2, 'Please make it functional.', 5,
                    TO_DATE('2024-07-03', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '196ffa19-91c5-4f11-9427-cff840f683e1', 2, 'its best app but its don''t working in poor connection area so', 5,
                    TO_DATE('2024-07-03', 'YYYY-MM-DD'), 'POSITIVE', 0.9706,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3c94365a-df7a-44a6-a947-4e40d575efdc', 2, 'Please Recover thank you', 5,
                    TO_DATE('2024-07-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c47517ad-7dbb-46ed-864d-4b898aff2b23', 2, 'This app doesn''t work', 1,
                    TO_DATE('2024-06-30', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9d5f10f6-476f-4b3d-85f9-7ea5e52bdad7', 2, 'Excellent app', 5,
                    TO_DATE('2024-06-29', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'dc201a15-30b2-4d8b-8754-0ecc2db8130b', 2, 'the app used to run fine, but now it takes like forever to even open the main dashboard and sometimes it just crashes on its own. you guys gotta step it up. we need this app to be way faster', 1,
                    TO_DATE('2024-06-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.9726,
                    '['Reliability', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd7273bdf-94a5-4b02-89ec-4a863195ea29', 2, 'the underrated app I''ve ever seen and ur banking system is Soo Idiocracy', 1,
                    TO_DATE('2024-06-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.9977,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '829d9bb9-e4bc-4e04-90c2-867460eab574', 2, 'It demands to disable developer option.', 1,
                    TO_DATE('2024-06-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f0fe277f-65c1-461c-afad-8cd40c6ab368', 2, 'It''s been two months now, I cannot do any transaction using this app. It''s really disappointing. I am using bank of Abyssinia currently because it''s the nearest bank to my work place. The bank is turning to the worst bank in the country day by day. They always respond to customers that they are updating their system all year long, I think that''s what they train their customer service operators to do.', 1,
                    TO_DATE('2024-06-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Transaction Performance', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2b2ff6dc-5482-4582-98ba-2ed17547e409', 2, 'Open Open service', 5,
                    TO_DATE('2024-06-26', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7200d08f-8524-4b04-b419-4aebdb1630f6', 2, 'አፑ በጣም አስቸጋሪ ሆኗል', 1,
                    TO_DATE('2024-06-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.8616,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a390a52e-ca04-40d3-9b31-36f99d60aa99', 2, 'Its not working.', 1,
                    TO_DATE('2024-06-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'efe89d62-85f0-453d-bc34-e71402cb2f09', 2, 'Riddled with crashes, cant use it anymore. Very frustrating!', 1,
                    TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c051070a-5552-441b-9c04-ff28664018fe', 2, 'Always error occured. The worst app ever', 1,
                    TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e2e95eaa-41be-4715-af8d-6cc6f977189b', 2, 'ከዚህ ትልቅ ባንክ የማይጠበቅ ድንዝዝዝዝ ያለ App.... ዛግግግ ነው ያረገኝ 😡😡😡', 1,
                    TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'NEGATIVE', 0.9611,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '96cd805a-014f-4df5-a43a-eafcff99d56c', 2, 'Excellent service', 5,
                    TO_DATE('2024-06-19', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cffa22a2-153f-4c97-8d2a-39b79a5b6e11', 2, 'It''s not convenient', 1,
                    TO_DATE('2024-06-17', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cd76cd3c-442c-41eb-9f9f-9012493e31c7', 2, 'meskelu Metku', 5,
                    TO_DATE('2024-06-17', 'YYYY-MM-DD'), 'POSITIVE', 0.8474,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '35179040-fff3-4a61-9e55-e1efe7624022', 2, 'It has become the most unreliable mibile banking app ever.', 1,
                    TO_DATE('2024-06-16', 'YYYY-MM-DD'), 'NEGATIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7186cee1-7944-4070-8b9b-2ed1f2bb8c9b', 2, 'አኘልኬሽኑ በሁሉም ነገር ጥሩ ነዉ,ነገር ግን Network በጣም ነዉ እሚያስቸገረው', 2,
                    TO_DATE('2024-06-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.9465,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1901236c-37ec-495a-a51a-bc8f471424ce', 2, 'The poorest mobile banking I have seen in the industry. Is not stable to login and post transactions. Is not attractive. Error reports frequently.', 5,
                    TO_DATE('2024-06-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Account Access', 'Transaction Performance', 'Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '42cb39d3-03d0-4ebf-b3ac-d2a76e56273b', 2, 'Really Bank', 5,
                    TO_DATE('2024-06-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9821,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3543cc15-6092-4479-80e5-ec6097defe89', 2, 'I like the the bank of Abyssinia is the best first bank of Ethiopia', 1,
                    TO_DATE('2024-06-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '390e85e9-72a5-4a7f-b68c-72f94c586fda', 2, 'The app is not good need a few work', 3,
                    TO_DATE('2024-06-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fecff9eb-a424-47c7-9fc8-e4c0898f2be8', 2, 'The worst mob app i have ever seen. Slow, uncomfortable and stupid. It is better to learn from the best app (tele birr). The released updates is even worst.', 1,
                    TO_DATE('2024-06-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f2fac0e0-abfb-4625-8443-a49953389605', 2, 'Unreliable, expensive service. Most of the time, it is not working. Sometimes, it will take more than a day to complete transactions and charges more for this unworthy service. I will not recommend this bank app to anyone.', 1,
                    TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Transaction Performance', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'db0aa120-d7ee-483a-8a2e-3c43c573133b', 2, 'The worst app', 1,
                    TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '77f7bc1d-7e0f-4009-b147-9cd7e49b2fd1', 2, 'excellent service', 5,
                    TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'eb90d966-72f9-44a2-b6b7-40d2b1abcb64', 2, 'You are beutiful', 5,
                    TO_DATE('2024-06-09', 'YYYY-MM-DD'), 'POSITIVE', 0.8399,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '872e9008-c68d-4d4d-a930-940521f98819', 2, 'The best app', 5,
                    TO_DATE('2024-06-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2eb93931-82c9-4934-a97d-cf26b48f44ae', 2, 'አይሰራም አፑ ለምንድነው', 1,
                    TO_DATE('2024-06-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.8337,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3bef74ff-aed8-4675-9cd2-51a6bbdfdf30', 2, 'Developer option to be off really', 1,
                    TO_DATE('2024-06-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9904,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8c9fa1ff-1764-44a6-b774-e9aac49e48aa', 2, 'Good app boa', 5,
                    TO_DATE('2024-06-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a434370c-550c-4ae9-adcb-7a02aea1c130', 2, 'I''m disappointed with the recent changes to this app. Disabling developer options for functionality seems unnecessary. The previous version offered a more user-friendly experience.', 1,
                    TO_DATE('2024-06-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd53f2cd7-9bf3-44e4-8c91-53c11daed082', 2, 'Worest app, it cannot be downloaded', 2,
                    TO_DATE('2024-06-05', 'YYYY-MM-DD'), 'NEGATIVE', 0.998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fc50f8d9-0d2f-495f-8786-1e4670d229c7', 2, 'slow only some times the wey it is veary nice app', 5,
                    TO_DATE('2024-06-05', 'YYYY-MM-DD'), 'POSITIVE', 0.9499,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6762bc5b-caea-4127-9115-a0118dc9a3d3', 2, 'The worst mobile banking app', 1,
                    TO_DATE('2024-06-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6e005c4d-7639-4dd2-9c52-729074435d91', 2, 'It''s nice apps', 1,
                    TO_DATE('2024-06-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0ce9923a-bcad-4b3a-a73d-2af80ed12dcb', 2, 'Wow! what a disgrace for BOA. The app barely works. Too slow and always returns error.', 1,
                    TO_DATE('2024-06-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Transaction Performance', 'Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '89a67fc8-1887-4750-829c-71ee84d59622', 2, 'Excited by your service', 5,
                    TO_DATE('2024-06-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f6129057-9d9c-4e5b-bec6-b0281291bf61', 2, 'Kerfafa new', 1,
                    TO_DATE('2024-06-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.8149,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b8590342-3e7a-4574-85f5-eea1cbcb4fc3', 2, 'ABDU MUDESR', 2,
                    TO_DATE('2024-06-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.7395,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd9506985-4b35-431f-81f7-f9388ddb14d2', 2, 'The worst mobile banking app! It doesn''t load (seems like with the perfect WiFi and data connection it still manages to have network issues), when you finally get into the app, it makes it so hard more than it should be to send money.', 1,
                    TO_DATE('2024-05-31', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c179b1f8-8bb1-455a-b9fe-9c29d9e71a8c', 2, 'It is Good to save time 👌👌', 3,
                    TO_DATE('2024-05-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '852e921a-9de5-4396-8537-910cf5896d70', 2, 'I''m sorry but what kind of stupid developer thinks the app will be faster if we disable "Developer mode"? I''ve never seen such degeneracy in my entire life, please get rid of this feature', 1,
                    TO_DATE('2024-05-30', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3f955361-4a28-4185-9b83-bedfcac7b287', 2, 'What is the purpose or point of not allowing to take a screenshot of the recipe after transferring???', 1,
                    TO_DATE('2024-05-29', 'YYYY-MM-DD'), 'NEGATIVE', 0.9992,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e63b67b6-01d6-4181-ba54-f6e635067ff1', 2, 'Worst banking app ever', 1,
                    TO_DATE('2024-05-28', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f3e8b3d1-1c97-4b9f-9d34-1f6c18b340f1', 2, 'I can''t use the app unless I turn off developer mode?? What kind of stupid rule is that?? The worst experience for a banking app!!', 1,
                    TO_DATE('2024-05-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a7d1c799-ba53-4a0a-a8d6-c5400a009825', 1, 'A great app. It''s like carrying a bank in your pocket.', 4,
                    TO_DATE('2025-06-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '64ed5562-1758-4eb8-9291-8b6edc394118', 1, 'More than garrantty bank EBC.', 4,
                    TO_DATE('2025-06-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9972,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd0c05687-ddd4-43fb-95a9-08f6358d80a2', 1, 'really am happy to this app it is Siple to use everything', 5,
                    TO_DATE('2025-06-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9989,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '811bf820-3529-433a-9b6d-e624fa23a16a', 1, 'I liked this app. But the User interface is very basic and not attractive at all.', 2,
                    TO_DATE('2025-06-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'be2cb2ac-bbe0-4175-81c4-9f6c86afdaaa', 1, '"Why don’t your ATMs support account-to-account transfers like other countries( Kenya, Nigeria , South africa)"', 4,
                    TO_DATE('2025-06-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9965,
                    '['Transaction Performance', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8efd71e9-59cd-41ce-8c5c-12052dee9ad0', 1, 'what is this app problem???', 1,
                    TO_DATE('2025-06-05', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b12d0383-9b27-4e49-a94d-277a43b15800', 1, 'the app is proactive and a good connections.', 5,
                    TO_DATE('2025-06-05', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'dd9f9e37-177a-46df-b877-d0edaa9aed29', 1, 'I cannot send to cbebirr app. through this app.', 3,
                    TO_DATE('2025-06-05', 'YYYY-MM-DD'), 'NEGATIVE', 0.9953,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6f0c7fa2-3ce1-4310-b135-54fe0cb9fccd', 1, 'not functional', 1,
                    TO_DATE('2025-06-05', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f0dd744a-9409-4619-9800-7ea501571b09', 1, 'everytime you uninstall the app you have to reach them out physically. very oldy! if that''s one of security layer, they''d check for fraud attempt via app source directly(source:- app store, play store ... etc) implicitly ! we are in 2025, physical presence for every app install is traditional(traditionally very rare).', 1,
                    TO_DATE('2025-06-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9905,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3949d8e0-7ac4-4b43-b4f4-a45d6a888a85', 1, 'አካውንት የምናስገባበት ቦታ ስም ጽፈን ነው ከዚህ በፊት የላክንባቸውን አካዉንቶች የምንፈልገዉ ነገር ግን አዲስ አካውንቶች mr ብለዉ የሚጀምሩ በዝተዋል ግን አፕልኬሽኑ space ስንጽፍ አይቀበልም ቢስተካከል', 4,
                    TO_DATE('2025-06-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9617,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '54f070b9-895f-40e8-be18-acb16f8af7fa', 1, 'Best Mobile Banking app ever', 5,
                    TO_DATE('2025-06-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9af95d2a-e42c-45ff-a4c9-5c38765df4a4', 1, 'it was good app but it have some issues like it doesnt give me the right amount that I have in the bank and have some issues in transferring', 2,
                    TO_DATE('2025-06-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9981,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fce00cda-d71a-486e-a4c2-7479ab7793bc', 1, 'best app of finance', 5,
                    TO_DATE('2025-06-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2470d199-834a-4134-a0f9-8c684ba75491', 1, 'Engida Kebede Fetera', 5,
                    TO_DATE('2025-06-03', 'YYYY-MM-DD'), 'POSITIVE', 0.8397,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '428e5117-387f-4c9d-b095-3230e3f83a8a', 1, 'it is not safety', 1,
                    TO_DATE('2025-06-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2f605bab-a62d-4298-bb1d-0b749bc666c4', 1, 'it is like a childish app make it better the worst I have ever seen', 1,
                    TO_DATE('2025-06-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '90395621-bcb9-4c87-9742-57faa8e345c1', 1, 'It''s a problem solver application, go ahead CBE, I love so much.', 5,
                    TO_DATE('2025-06-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a6a00b41-127d-4dda-b175-e65b9879dec7', 1, 'It''s good but try to make it facilitate for your client', 4,
                    TO_DATE('2025-06-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9492,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a3290b0c-4569-4ed7-87aa-3a18639b4525', 1, 'Awesome bank', 5,
                    TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '50ffac9d-437d-4d26-af4f-b6b0153d55fd', 1, 'this app has developed in a very good ways but there are some comments I need to make 1- preventing the screenshot likely not good for someone like me coz I need to make screenshot for quicker evidence. 2-it would be good if you make us to access recent transaction histories for 30 days coz we don''t have to go to the Bank''s in person to see old transactions or add colander category so user can easily access old transactions through colanders.', 5,
                    TO_DATE('2025-05-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9983,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8bf4df47-c266-4152-9790-4217143b3a91', 1, 'Recently there is big problem when sending to safaricom, telebir, and even to cbebirr wallet could anybody who is responsible fix it, it''s very frustrating it''s been 5 days and my money hasn''t been returned it takes it out of my account but doesn''t send it to my mpesa update- they have just corrected it and sent me back the money but still I''m afraid now to send again', 2,
                    TO_DATE('2025-05-31', 'YYYY-MM-DD'), 'NEGATIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '62a13195-2c9d-4606-8f83-2866774e122c', 1, 'better service', 5,
                    TO_DATE('2025-05-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9982,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '66bc4eed-2004-41ea-89cd-5bed26921bc1', 1, 'it,s good app and time manager 👍', 5,
                    TO_DATE('2025-05-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '17190f44-a419-45dc-be9d-68b80c5360a2', 1, 'malkaamuu Jiidhaa Namoo', 5,
                    TO_DATE('2025-05-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9888,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '34cf56c4-74b9-4bec-b474-0d533f8aff49', 1, 'lower system everything', 3,
                    TO_DATE('2025-05-30', 'YYYY-MM-DD'), 'NEGATIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b99da78e-335f-40cb-bae6-26b71fa7c68c', 1, 'Keep it up My CBE', 5,
                    TO_DATE('2025-05-29', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ea23b98c-f4c7-4fdc-b64f-d8097e5efd1a', 1, 'I was using this app for the last two years with no problems. It stopped working about 3 months ago. when I tried to transfer funds it gives me error "can''t do this transaction. inactive account."', 4,
                    TO_DATE('2025-05-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Transaction Performance', 'Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '22c85c1d-46f6-4288-aab9-b615c040e6bb', 1, 'i like everything of this app', 5,
                    TO_DATE('2025-05-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b3310092-87a7-4996-b673-366957705b66', 1, '🤬🤬🤬🤬 network 🛜', 1,
                    TO_DATE('2025-05-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.6856,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fe899c01-b28c-4e6a-b221-a14759e3a97e', 1, 'CBE is the best financial application and and very dimple to use. I would like to say thank you so much for the developer of application. I really appreciate this app.', 5,
                    TO_DATE('2025-05-26', 'YYYY-MM-DD'), 'POSITIVE', 0.9983,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a9dd0b63-ccf5-4a8e-a0cf-5aae4cc0ef3b', 1, 'it''s awesome!!', 5,
                    TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fe6bf4b0-6bbd-4d88-b5b2-fa31f19ac63f', 1, 'thankyou every one', 5,
                    TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e24202d3-c8fd-46f3-9919-a6946c6ac403', 1, 'Ronaldo 🇵🇹 🥇', 5,
                    TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9948,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '52aa3e01-9c6a-499d-aa48-b85b82d34781', 1, 'this app is absolutely fantastic I love it and I enjoying to it ,let us support this foundation together .', 5,
                    TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9e6b8e08-8acf-4e1f-a179-a5a703ff2ebc', 1, 'The CBE app has been highly unreliable in recent weeks. It frequently fails to work properly on both Ethio Telecom and Safaricom networks, whether using Wi-Fi or mobile data. This week, the system was down entirely for extended periods, making it very difficult to access banking services. The app only functions intermittently, and the lack of consistency is frustrating. I hope the issues are addressed soon, and that any non-technical influences are removed from such essential services.', 2,
                    TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd4c4a244-7c41-4d44-9541-a9fefc6190c3', 1, 'mortuary app', 5,
                    TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'POSITIVE', 0.7925,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8bc7721c-3d11-4a15-a787-fdb0c266a9f4', 1, 'it is smart app but it has stoped after some period of time on my device with out any reason .', 5,
                    TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9961,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd3266f1c-8cb9-4766-a90e-47c2532a2b42', 1, 'amazing app I am used this app for one year', 4,
                    TO_DATE('2025-05-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5864d26a-c52e-4755-86e5-3bfbf9f1d814', 1, 'i love it 😍😘', 5,
                    TO_DATE('2025-05-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f49a91cf-b302-4977-a99d-c545b7213dad', 1, 'It makes life easy!👌', 5,
                    TO_DATE('2025-05-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9994,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '893a61e9-9eeb-4972-9a46-1eb810d54520', 1, 'its not fast', 1,
                    TO_DATE('2025-05-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '85e5a705-1f69-439d-be61-5b0cd73237e2', 1, 'it is sooo good', 5,
                    TO_DATE('2025-05-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'dad4e463-c5b1-47bc-a193-84741470825e', 1, 'accessible to using', 5,
                    TO_DATE('2025-05-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a68dfd3a-aaa3-48bc-84b8-842311de1b8c', 1, 'why you change default network?', 5,
                    TO_DATE('2025-05-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9962,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2938c3f2-fa9c-4847-98e1-b0bfc57cb614', 1, 'very nice 👍', 5,
                    TO_DATE('2025-05-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c2af9859-2af3-409d-8df2-57b98b6d29e1', 1, 'nice fast app', 5,
                    TO_DATE('2025-05-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3589e146-296a-4c7c-9c8d-8f1593190cbe', 1, 'how to I get my money', 5,
                    TO_DATE('2025-05-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9934,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7dc48c33-245c-4920-9cf7-4b3d40d00064', 1, 'Very bad, can''t even load they need to improve their services.', 1,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e207b071-24a5-447f-b6b3-0eb287986a88', 1, 'Very good app, but please make it reliable . it crashes sometimes .', 4,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'POSITIVE', 0.965,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd3187592-0b15-407a-a9a0-bffbd13bc2fd', 1, 'very busy I don''t know why... I prefer 889', 3,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9992,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5c907c9f-8bd3-4703-9505-744e632c595c', 1, 'Sometimes it has a nasty lag for several hour fix that , the rest is 👌', 4,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9967,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f5386dd0-124d-4a3e-964e-75f475130af9', 1, 'the most boring Mobil banking application in ethiopia.Please use alternative private banks mobile banking apps', 1,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9986,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cecd67ca-fc27-4414-8704-0f705520fa98', 1, 'hojii bonsaadha', 5,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9569,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '310cffb5-629d-4f32-b55c-aff448ddad2d', 1, 'user-friendly apps.because this app is easy.', 5,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9555,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b9c8ce60-4060-438b-a0e8-c8faf314b7a4', 1, 'Very good app,', 5,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '34d6492b-f6e7-42ed-851a-348ab215c36a', 1, 'sync problem may 22 2025 but the date stack on may 8 2025 help pls', 5,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9925,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '51d29cb1-86f9-45cb-8c16-04c431d7d213', 1, 'ይህ መተግበሪያ በጣም ጥሩ ነው. this app is very nice', 5,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '23ee51ec-56a4-4b30-987a-2c854badda8d', 1, 'I hate this app 😒', 1,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0073bcff-2f19-431b-ac20-770d2c08e9a4', 1, 'update issue', 4,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'POSITIVE', 0.5473,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '392ef1b2-7904-4874-99c5-45d7d98344ac', 1, 'its not working over safari network', 1,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '832328c2-cdd0-465b-b6eb-e519f7ffa59d', 1, 'it doesn''t work', 1,
                    TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '39f74545-07ff-415e-a401-2266fe41e7df', 1, 'This app is good, and we are using it well', 1,
                    TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'NEGATIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '05e70242-c8ac-4cee-8b41-22da134c5837', 1, 'very nice 👌 app for android phone', 5,
                    TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ca0ab815-f3f0-4620-9660-bfb79f818314', 1, 'easy to use helpful in my life', 5,
                    TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9981,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'da58ef58-30bf-41a7-b705-66e5ae261011', 1, 'the best mobile banking app', 5,
                    TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '30cfce0b-7504-425f-89a9-8091ffa24920', 1, 'this app is very useful app,it saves time,and it is secure', 4,
                    TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c0595f27-7901-4d8b-8363-ea3601854094', 1, 'it''s a good application 👍', 5,
                    TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '26fd7f14-c17f-4081-8910-45f2008ca145', 1, 'the screenshot and the reffresh options are so annoying that makes transaction so delaying activity !', 2,
                    TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b22fe51f-e673-41ae-a625-2f8f1cce76ee', 1, 'poor service', 1,
                    TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9eff9bee-1e05-4f68-ae9a-2de67b8564bc', 1, 'it is reliable and easy to use.', 5,
                    TO_DATE('2025-05-20', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cdad77fa-fadb-494d-970c-d816e2f6a83d', 1, 'the most annoying mobile banking app I''ve ever seen', 1,
                    TO_DATE('2025-05-20', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0869bd94-48d8-4a25-8aa3-d2dd8522ac1d', 1, 'Cbe mobile banking', 5,
                    TO_DATE('2025-05-20', 'YYYY-MM-DD'), 'POSITIVE', 0.8304,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5be1f935-aaad-4981-8f31-02d880bb987f', 1, 'i can''t make Screenshout in this app, please made modification', 5,
                    TO_DATE('2025-05-20', 'YYYY-MM-DD'), 'POSITIVE', 0.9967,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ba4b588c-3388-4ee1-8cca-4eae702a81e5', 1, 'Best app I loved it', 5,
                    TO_DATE('2025-05-19', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7b6c801d-4f97-44bd-b59f-252cde7c0515', 1, 'Amazing applicatiom sometimes doesnt work!', 5,
                    TO_DATE('2025-05-18', 'YYYY-MM-DD'), 'POSITIVE', 0.6449,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2fe903d9-41fe-4ec3-9a2d-fd0acfe57725', 1, 'well satisfied with this beautiful app', 5,
                    TO_DATE('2025-05-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7e493c4b-0d15-4444-9d9c-144b59c3fe49', 1, 'not working,why???', 5,
                    TO_DATE('2025-05-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '67398692-d12e-4229-9f88-67f25f1a7336', 1, 'Great impact but why Developer option turnoff if you fix 🙏 🙏 🙏', 5,
                    TO_DATE('2025-05-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9842,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '539ea673-656c-44ce-b226-f61677fd6e31', 1, 'always disappointing ! especially the iOS one !! some similar local applications are extremely superior to this application!! Really disappointing!', 1,
                    TO_DATE('2025-05-17', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '23ffabb6-3005-403f-a16b-10e24aab5f7e', 1, 'woxe harimo ribiso', 5,
                    TO_DATE('2025-05-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9374,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd4b852bb-683b-41ea-85ba-6ed38bed539c', 1, 'Good ,easy to use', 5,
                    TO_DATE('2025-05-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7fbce453-198b-401e-ab72-5f778309cd92', 1, 'Please kindly ask to update the app and allow us to screenshot, it''s convenient and efficient as long as you add security to the access there is no reason to block us from screenshooting our screen.', 2,
                    TO_DATE('2025-05-14', 'YYYY-MM-DD'), 'NEGATIVE', 0.9939,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '336d7230-c7c0-4aa9-9d43-17ddfbffbca1', 1, 'I have using the CBE mobile banking app. and overall i appreciate its Feuteres However i.ve Notticed that when i turn on the Developer options on my divice the App.Stop Functioning prorerly It.Would Be Great If You could look into This issue as l often need to access Developer setting for Otter Application ThankYou For Your attention to This Matter', 4,
                    TO_DATE('2025-05-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9474,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '91f3ee87-fb66-4106-809a-fee5c30761cb', 1, 'customer service is bad nothing is good about this bank', 1,
                    TO_DATE('2025-05-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '150068b3-36ed-489b-8ad7-b8121c0d8662', 1, 'It is Amazing Mobile Banking App....But why the screenshot of the receipt doesnt work', 5,
                    TO_DATE('2025-05-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9929,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0ee61e87-0b46-405b-9ac6-219eea2399a0', 1, 'fast and simple easy to use 👌', 5,
                    TO_DATE('2025-05-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9985,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a878dd26-bc46-4da6-8a6e-99794c921510', 1, 'The fastest transferring app I ever had its so reliable', 5,
                    TO_DATE('2025-05-11', 'YYYY-MM-DD'), 'POSITIVE', 0.9844,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1c69ba75-de9a-4dd4-9e84-e19d985c0d4d', 1, 'Funds transferred from the same bank do not reflect in the account, even though a confirmation text message was received.', 3,
                    TO_DATE('2025-05-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9987,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '955c6dc7-0841-4c20-8796-35504174788b', 1, 'it''s easy and fast', 5,
                    TO_DATE('2025-05-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '552dc072-e6aa-4360-a85c-161ffa4d575e', 1, 'This app don''t have self activation only you have to look near cbe branch that''s disgusting', 1,
                    TO_DATE('2025-05-10', 'YYYY-MM-DD'), 'NEGATIVE', 0.996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '719d06b2-b929-4dfa-98e8-8e24cff1bc13', 1, 'hello dearest CBE office personnel make some benefits for those using interest free accounts thanks for your help', 5,
                    TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'bd9d8254-264a-428c-8d48-2449e2260108', 1, 'wow best application ever', 5,
                    TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f569e45d-b7d5-4c40-bc43-18ac0e13965a', 1, 'Am sorry but what does developer mode do to the application ? hack it ? are you sure you are developer or are you stupid, doesnt makes sense,', 1,
                    TO_DATE('2025-05-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7327f7dd-510f-4054-9541-8157e0ae9b18', 1, 'the pride of Ethiopian bank 🏦', 5,
                    TO_DATE('2025-05-08', 'YYYY-MM-DD'), 'POSITIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a41ead51-812c-49bc-bd00-d7fc843231f5', 1, 'why the app telling me to turn of developer options please fix it.', 1,
                    TO_DATE('2025-05-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9991,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '50a257eb-6cc7-4d7a-ae9b-be97bc94ff99', 1, 'i am very happy . i have small prob. after i transfer i cant put the transfer cashe bil to my dic.', 5,
                    TO_DATE('2025-05-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9977,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '799ae549-516c-4619-8781-dde22fd66e77', 1, 'amazing apps', 5,
                    TO_DATE('2025-05-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '684fd27d-fb21-4f26-a3a2-2df5c05d35b8', 1, 'All service of Mobile Banking', 5,
                    TO_DATE('2025-05-06', 'YYYY-MM-DD'), 'POSITIVE', 0.8924,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5c9fa1c5-003b-4df4-b07e-80f0c26d73fd', 1, 'needs improvement', 1,
                    TO_DATE('2025-05-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9967,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6e27f7ac-d2f5-456f-b269-1082a276c3d7', 1, 'i miss the old one i couldn''t send my mony to other bank..', 1,
                    TO_DATE('2025-05-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9958,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '02a8488a-1993-4582-a072-3364f04647f6', 1, 'the app is recently crushing each time you open and try to make transfers...it used to be good. take lessons from the Dashen Super app or ethiotelecom. it is not befitting of your experience and glory. inv3st in making it more friendly and convenient. I am considering leaving CBE for good.', 2,
                    TO_DATE('2025-05-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9984,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4bd0f0c6-843e-4e4c-ad02-d735c1578c9e', 1, 'good but these week not oky', 4,
                    TO_DATE('2025-05-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9554,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c1bb53ca-ef9c-427f-a7a9-d4bb1ec232b9', 1, 'well designed! Fixing bugs & two step verification with biometric... simply it''s great!', 5,
                    TO_DATE('2025-05-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'bde45d03-32a2-40cd-aaf9-4b8e0df51a5e', 1, 'If any developer is reading this please fix the screenshot functionality or at least the download button should work flawlessly without me touching it twenty times.', 1,
                    TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'NEGATIVE', 0.9975,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '951e60b0-c44a-447f-ac25-7e2be26ff3de', 1, 'it''s a great job.but one more thing, it hasn''t been placed for transfer to other banks on face like mobile charge card place', 5,
                    TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'POSITIVE', 0.8991,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e8c16e1b-4452-4b87-bc72-398427914c25', 1, 'CBE mobilr bankg', 5,
                    TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'POSITIVE', 0.8703,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a5013e04-9ee0-4cf7-8b1e-b357a0743a84', 1, 'it''s very low quality application', 1,
                    TO_DATE('2025-05-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '44df75ec-64ad-4129-a70f-3b5512f595a9', 1, 'Very Amazing Apps', 5,
                    TO_DATE('2025-05-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ed713db5-3620-4a87-bb2e-f242e03a9336', 1, 'wow simple life', 5,
                    TO_DATE('2025-05-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0c2ecaea-7fc2-461b-9dcb-5c2d938dab18', 1, 'Why stacked sometimes', 5,
                    TO_DATE('2025-05-03', 'YYYY-MM-DD'), 'POSITIVE', 0.9941,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '783ea957-ec2a-4eaf-a1d8-398a95b1fb1d', 1, 'okay 👍 but sometimes busy', 1,
                    TO_DATE('2025-05-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.8516,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'beae4fab-d673-4120-ba42-ea1bf94a737f', 1, 'the worst commercial company that fails to do even the most normal things again and and again.', 1,
                    TO_DATE('2025-05-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1559b547-36e5-4b58-8507-b44cc1801331', 1, 'Very good app. but disappointed by general cessation of system.', 5,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9981,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9a11d82f-54b8-43ea-856c-1283ccb62f20', 1, 'Good and fast', 5,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '11839185-554f-4c79-bebf-f9a00082204f', 1, 'Unreliable!', 1,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '77d6154d-7008-47ba-8d70-2493451352a3', 1, 'Best the best fast', 5,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7dcbcd69-baa0-4c8c-a3a2-4a2cf0d959d1', 1, 'fast and reliable', 5,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9c5c1349-ffad-4876-92ff-2b222e753eb5', 1, 'network errorrrrrr', 2,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9978,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7e817bb8-d23e-4f3f-a5fb-b7c76ddc2126', 1, 'Best app but there is some problem I can''t send money to telebirr or mpesa so if you can add that it could be use full', 4,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9983,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '28e615dd-6a83-4cbe-b483-ad5aa59dffbc', 1, 'its good and simple to use', 5,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a038badc-107b-4d0d-9099-ae58366c24fa', 1, 'worest app like that bank for security and network access', 1,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9927,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd2564215-9555-4556-8378-518439ca55a6', 1, 'it''s the best app i', 5,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8e47f061-c03d-477d-83d7-9e9ef8fbd85f', 1, 'not bad not good', 1,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9715,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6c7d83e4-3225-4811-8f2e-eb376a6188a9', 1, 'its very nice', 5,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '926c79cf-a45f-452c-b00e-472621ded600', 1, 'do not work this week', 3,
                    TO_DATE('2025-04-30', 'YYYY-MM-DD'), 'NEGATIVE', 0.9978,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8096ea90-64d7-4416-9558-1f7b7ca73cde', 1, 'It crashes frequently', 4,
                    TO_DATE('2025-04-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ddcde4c3-479f-47e2-b8bd-3b5265ee7487', 1, 'I can simply describe this app as "Making all your work easier".', 5,
                    TO_DATE('2025-04-28', 'YYYY-MM-DD'), 'POSITIVE', 0.8383,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f0a209cf-6ea7-43c1-a920-e7e1523d1366', 1, 'best appearance', 5,
                    TO_DATE('2025-04-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '563d2717-eaf3-4fc6-9aa4-b75ab6324985', 1, 'it''s very good 👍 app', 5,
                    TO_DATE('2025-04-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0725f956-965a-48c8-a159-baa447a8ae37', 1, 'I need support you', 5,
                    TO_DATE('2025-04-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9881,
                    '['Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9948e178-3bb4-4237-8edd-14b17684304a', 1, 'the worst Mobile banking i have ever seen in my life', 1,
                    TO_DATE('2025-04-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9476aec1-1fc5-4e8c-9d21-129ce40d64d7', 1, 'i like the app', 5,
                    TO_DATE('2025-04-26', 'YYYY-MM-DD'), 'POSITIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a9f52719-956c-4f13-8971-908587f75eec', 1, 'to other bank is bad', 1,
                    TO_DATE('2025-04-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9c95b8ea-a536-45fa-9795-53b69d7acd64', 1, 'its good but add more features such like. bank statement showing', 5,
                    TO_DATE('2025-04-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9882,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ccbafb4f-13f1-4276-af0e-24faf4c27402', 1, 'it is so nice', 5,
                    TO_DATE('2025-04-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '51e311f1-6242-413f-91e1-5facc62e4b1f', 1, 'my first frequent experience of cbe app is critical-time failure such as suspending payment on air for 2-5 days with zero explanation, deducting from sender account without depositing to the receiver act. Another fatal error by the banking company as a whole (not the app itself though) is forced-banking with corporations without consent of employers-users of the corresponding corporations', 2,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Transaction Performance', 'Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '24eba239-d651-4f46-807b-020d3ccb0701', 1, 'wow, amazing app', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '70095df2-033a-493a-bc9e-82ea1ebec8b7', 1, 'Actually it is inactive', 4,
                    TO_DATE('2025-04-19', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '38887ac1-2782-426a-af99-23739cb6d450', 1, 'slow, only one account is used', 2,
                    TO_DATE('2025-04-19', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a13ac39b-03e1-4466-8838-479e91847813', 1, 'always CBE is the leading Commercial Bank💪💪💪', 5,
                    TO_DATE('2025-04-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9975,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ad5ea4f1-47f8-4ae1-928c-6fece7daaed1', 1, 'why removing screenshot feature why?', 1,
                    TO_DATE('2025-04-18', 'YYYY-MM-DD'), 'NEGATIVE', 0.9981,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0d591a9b-0f94-4fbb-8e85-4aa0dfd5be4d', 1, 'nice apps where network is good in connection', 5,
                    TO_DATE('2025-04-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '02ccc75a-f6f7-4f38-af6a-d562f8476623', 1, 'Thank you!!!', 5,
                    TO_DATE('2025-04-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '66b05081-b1eb-4744-90a9-33106e7017ec', 1, 'i can''t take screenshot', 1,
                    TO_DATE('2025-04-18', 'YYYY-MM-DD'), 'NEGATIVE', 0.9898,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9028e8f6-0f93-4631-8540-a1d39ecb40ee', 1, 'every update was made the system better and better until the March 19th, 2025 update, not allowing us to screenshot. you guys didn''t understand how much it''s a really quick and significant thing. You add extra steps to us, which makes the process draw back', 3,
                    TO_DATE('2025-04-18', 'YYYY-MM-DD'), 'NEGATIVE', 0.9861,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '310967cd-3b65-4f6d-b15b-b644b9ddb861', 1, 'perfectly special', 5,
                    TO_DATE('2025-04-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c0b3f973-9042-41c6-9528-ad3f6342976b', 1, 'Fast and Reliable', 5,
                    TO_DATE('2025-04-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd8fbd17a-2089-4c37-9a97-de8c61f92160', 1, 'The best application I have ever seen in Ethiopia banking industry.', 5,
                    TO_DATE('2025-04-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a6544fec-8879-4623-a77e-cb854d6afb47', 1, 'great app!!!', 5,
                    TO_DATE('2025-04-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '94976316-142f-4814-9ef5-5e37bb139daa', 1, 'because sometimes it doesn''t working it load too much', 3,
                    TO_DATE('2025-04-17', 'YYYY-MM-DD'), 'NEGATIVE', 0.9912,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '56b44694-2246-482a-be60-6e656324f3ed', 1, 'Absolutely the best app! It works flawlessly, anytime and anywhere.', 5,
                    TO_DATE('2025-04-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2a76a4cd-b2c9-4c07-b339-dd5422a6bf27', 1, 'very nice app ever!!!', 5,
                    TO_DATE('2025-04-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2c1bcf08-e5fe-43b8-aabf-0a1afefeb5aa', 1, 'the best app', 5,
                    TO_DATE('2025-04-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e5b9e2a5-2477-4f9c-bb71-2f2e0d6771f1', 1, 'Biometric security for mobile banking is not available', 5,
                    TO_DATE('2025-04-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '844ecc7c-2f80-4c36-a2bc-e9fbc5405a4e', 1, 'Nice service', 5,
                    TO_DATE('2025-04-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fe37446d-b91c-40e6-b94e-ddc1f12b051e', 1, 'it''s special apps', 5,
                    TO_DATE('2025-04-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ab453d8e-ab8c-4e04-9391-617dda3e4074', 1, 'In the updated version of the app, it takes more time to download the receipt.', 3,
                    TO_DATE('2025-04-15', 'YYYY-MM-DD'), 'NEGATIVE', 0.9986,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '901c9804-9dcb-44d0-a314-ee76f296bc94', 1, 'ለምንድነው ትራንዛክሽን ትንሽ ብቻ የሚያሳየው ?', 3,
                    TO_DATE('2025-04-14', 'YYYY-MM-DD'), 'NEGATIVE', 0.9648,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ae57ff29-717d-4873-a3b5-6269e209751d', 1, 'very interesting app i am using every day fantastic', 5,
                    TO_DATE('2025-04-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1d6fba2c-a4fc-4568-9883-b15faf80a6d3', 1, 'Can''t scan/recognize other banks'' Interoperable QR Codes', 1,
                    TO_DATE('2025-04-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.9983,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '50ec5140-ff83-473d-8b46-a8de1583caf4', 1, 'grateful app', 5,
                    TO_DATE('2025-04-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f7d00c96-d491-4fe8-8378-28a5bd41e3b2', 1, '100% ❤️❤️❤️🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏', 5,
                    TO_DATE('2025-04-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9975,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '83b51bfb-f6d6-4132-89a1-9ab2180955bc', 1, 'everthing wellbeok', 3,
                    TO_DATE('2025-04-13', 'YYYY-MM-DD'), 'NEGATIVE', 0.7056,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2127ac2c-ea02-41f4-82aa-c19dd51a87ee', 1, '"This mobile banking app is fast and user-friendly, but the only issue I encountered is that I can''t access my bank statement within the app. I kindly request that this feature be added, similar to what is offered by other private bank mobile banking apps.', 4,
                    TO_DATE('2025-04-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9963,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '13fe10ac-c719-49da-a87a-e2b7dbb6bbed', 1, 'why did this app is not screenshot', 5,
                    TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9989,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e9bdadab-f8c4-4c3d-aa8c-e634155fb890', 1, 'it so good app', 5,
                    TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'aef9a457-a8d2-4ec7-9157-163aba9347f4', 1, 'the best app', 3,
                    TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2cf0a2a1-a1bb-4356-ae1e-c874e69629be', 1, 'less network, specially to make fee for utility purpose', 1,
                    TO_DATE('2025-04-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9947,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '84e606a3-9b0d-40b9-a29d-fd18bc563992', 1, 'simply for used', 4,
                    TO_DATE('2025-04-11', 'YYYY-MM-DD'), 'POSITIVE', 0.9918,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '45da0198-d068-4670-9878-d18380ac1722', 1, 'wow keep up', 5,
                    TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b3117b0e-bdc6-40f4-874e-f61fc5dd50f5', 1, 'its great app but when updating we can''t take screen shot please try to fix it', 3,
                    TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'NEGATIVE', 0.9934,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a5c338ae-275b-44ab-ba2b-e1e556878e0b', 1, 'everything is easy thank you cebe', 5,
                    TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e6a4541d-d9d5-464f-9f46-127ea2284787', 1, 'but this app says can''t sync', 5,
                    TO_DATE('2025-04-09', 'YYYY-MM-DD'), 'POSITIVE', 0.9988,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ceae0bd1-8990-45f6-82ef-c0833ca786d7', 1, 'work on screen shot system', 4,
                    TO_DATE('2025-04-08', 'YYYY-MM-DD'), 'POSITIVE', 0.5903,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '39ddf219-7297-4858-8b7a-4016e3bde7f0', 1, 'very very nice aplication', 1,
                    TO_DATE('2025-04-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd5af7182-07fc-4a84-b818-c7aecf287b92', 1, 'wonder full and it is easy to use', 5,
                    TO_DATE('2025-04-08', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '325bdd8a-e83c-4522-986c-c30c73e3d90a', 1, 'easy and reliable', 2,
                    TO_DATE('2025-04-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9999,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7a1963a3-f0e5-4a5d-adae-cd179627881e', 1, 'it is Very Useful app 👍', 5,
                    TO_DATE('2025-04-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9945,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '18ef249b-6401-4c60-ab85-fb1a1030b742', 1, 'perfect app', 5,
                    TO_DATE('2025-04-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8d4eb395-51a3-41a1-bc4a-6d6e00f1b265', 1, 'commerial Bank', 5,
                    TO_DATE('2025-04-06', 'YYYY-MM-DD'), 'POSITIVE', 0.681,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9ddd6d35-e396-47c6-865a-461a18e52230', 1, 'it is good but it doesn''t allow screen shot', 4,
                    TO_DATE('2025-04-06', 'YYYY-MM-DD'), 'POSITIVE', 0.6723,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '64ca201d-446a-478e-8fd8-5edb48d7df99', 1, 'the best one', 5,
                    TO_DATE('2025-04-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '46fc17b3-ab19-461c-8636-ad995b4485bf', 1, 'You need to copy many things from other bank apps like Amole(Dashen)', 2,
                    TO_DATE('2025-04-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9968,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '65a31e10-ca83-46cb-a3de-7b8884218999', 1, 'bring back the screenshot feature.', 1,
                    TO_DATE('2025-04-05', 'YYYY-MM-DD'), 'NEGATIVE', 0.9943,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '229077d8-3e5b-478f-9980-0c17db814741', 1, 'best app to experience him that to smooth transaction among the customers', 1,
                    TO_DATE('2025-04-05', 'YYYY-MM-DD'), 'NEGATIVE', 0.9985,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fff7e46e-23f5-4824-ad13-75ce3242da2a', 1, 'nice app suitable to use it. the only weak side is it need data connections and hoping will be fixed to offline i gave 4 rate', 4,
                    TO_DATE('2025-04-05', 'YYYY-MM-DD'), 'POSITIVE', 0.9551,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f7ad3437-2b37-4c45-a9c6-191b08271d2e', 1, 'easy to use', 5,
                    TO_DATE('2025-04-05', 'YYYY-MM-DD'), 'POSITIVE', 0.9989,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c0caedf3-4a0b-4c32-94f8-d6a3bb6d3f17', 1, 'Good job to the CBE team on this mobile app! It''s designed in a way that''s simple and intuitive to navigate, which is great for everyone. It effectively handles the essential banking tasks I need to perform regularly. It''s a practical and reliable tool that makes everyday banking much more convenient. Thank you for this useful application.', 5,
                    TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7bc85bf3-f4c1-416c-95bb-cf88068a6b72', 1, 'ለኔ በጣም ምርጥ ነው ግን screenshot ማረግ ቢቻል ምርጥ ነበር', 5,
                    TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'POSITIVE', 0.8819,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '06e420aa-153d-45ed-b2e5-d779c12141aa', 1, 'before it was smooth and good. this time after the new update in 2025 i can not make screenshot of my recite. even the downlod button is very delayed in putting my recite in my gallery for simple proof. please fix this i am unable to show proof of payment to my clients. thankyou.', 3,
                    TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9974,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '76e52fea-7473-4299-b016-2b4a1aa05906', 1, 'best banking App', 4,
                    TO_DATE('2025-04-03', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd5748aa6-7b8c-4a9e-8806-ecfe363c217b', 1, 'this app is very necessary app many people found it', 5,
                    TO_DATE('2025-04-03', 'YYYY-MM-DD'), 'POSITIVE', 0.9981,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6bb2ee24-e0a9-4f85-ae15-e32fad756186', 1, 'cbe very active Bank I''m using CBE app very very satisfaction', 5,
                    TO_DATE('2025-04-03', 'YYYY-MM-DD'), 'POSITIVE', 0.9895,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5ea1fad2-c7cd-43c7-b325-1c3f62032fcd', 1, 'It made life alot easier. I cant even imagine having to make all those transactions in person. So this app was crucial for me. Very good app. well done.', 5,
                    TO_DATE('2025-04-03', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Transaction Performance', 'User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e1026d09-65d7-41c7-97e7-3a072beee79f', 1, 'I don''t understand the reason, why I need to disable developer options to access the app, it has no security risks nor does it hinder the app''s functionalities. This goes out to the dev, I hope your life is filled with inconveniences.', 1,
                    TO_DATE('2025-04-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9987,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e58659bb-7908-4aa3-bdc5-be9357d9b50e', 1, 'easy to use', 5,
                    TO_DATE('2025-04-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9989,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5fd9c2e9-96d9-4fa0-b70b-d1a3de41bafa', 1, 'very good app and stars faction with work', 5,
                    TO_DATE('2025-04-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '293b031b-1863-4523-bc4a-cdc68ba44a3f', 1, 'It is excelent', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5addc9b7-03d8-48d2-a74a-afecb6cc5de0', 1, 'በየወሩ አፕደት እየጠየቀኝ ነው ለነገሩ ብር ስሌለኝ ይሆናል እና ምን ለማለት ፈልገ መሰላቹ ወላህ ቼግሮኛል 🥺🥺🥺', 3,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.957,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5b2da8dd-b749-4e65-875b-e9f0f16baeb7', 1, 'very interesting app', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7dbbe46f-fd92-430c-89af-efc40cd4b980', 1, 'wow.......cbe.....keep it up.....!!!!!!', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9986,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4d350aed-c16f-4f6c-a70f-2a9c33896aad', 1, 'ጊዜን ቆጣቢ እና ህይወትን ቀለል ከሚያደርጉ ኢትዬጲያ ካሉ ፋይናንስ አፕልኬሽኖች ሁሉ ይሄ ይለያል', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.951,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9221a6a3-2e51-40bc-99be-03a13a670e9e', 1, 'Excellent🙏app', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.6971,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0d57028f-d5d5-46af-be80-b30e6c0ebb63', 1, 'the most useful', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1c2bdc31-563b-4a1b-b318-02af57442ad0', 1, 'I am more satisfied in this app . More sure you have to secure.', 4,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9788,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '26591776-dd62-4671-9d4e-e481ba5df9a4', 1, 'Easy to use', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9989,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '13003c33-c77b-4786-aad5-49077c6fcee8', 1, 'very good, but sometimes NUR CBE comes without my consent. even if I choose locked, it appears', 4,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9586,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e0ddd84f-e07c-413f-8b5e-f27eba75af42', 1, 'Excellent !!!', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fa099e0a-0307-4579-bd01-bbf0655d5573', 1, 'always we relay on', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9972,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '42b5a10f-6e06-4f71-98f0-bd8bf4c9133f', 1, 'I''m lucky to have this🙏 thank you CBE.', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'af37bc79-002c-4d3d-a4d6-e7d758e32636', 1, 'it''s need more improvement like Tellbirr.', 4,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9994,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3622c470-9200-4cab-8183-63dc3a67b4e3', 1, 'a very nice app.👍👍👍', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ebc087cb-987a-4c88-be6a-a54efdbf2ecc', 1, 'safe easy & fast', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '88ccbe0d-c8f0-422b-a692-18a44d07c0e1', 1, 'it''s good app', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7894c0af-08f2-4e6f-8034-fd8b72e784d6', 1, 'It is veary useful app but screen shout was impossible .solve this problem', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9959,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '42da0475-00f3-4431-805c-0ff35c500103', 1, 'እጅግ በጣም ጥሩ አፕ', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.8616,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cb135a05-7b66-434d-9181-c23d5c7d9e23', 1, 'በጣም ሃሪፍ ነው ግን ብር በሚተላለፍበት ወቅት ተቀንሷል ይላል እላፊ መልክቱ ይደርሳል ግን አይቀንስም', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9528,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '43779e4d-a876-4de2-9944-7abcc492f573', 1, 'suitable app', 4,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e22738d0-c7a2-4dff-a684-a29672cca142', 1, 'Dear cbe this app is not comparable with 21century and pls try to solve it.💀💀💀', 1,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1197e3a2-f9e4-439b-9893-1c82e3e23621', 1, 'best transaction method of financial', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd1a344d7-ae11-4752-960c-05c1fddb5b52', 1, '#CBE is Now going to on the right Pathway/track/!! Thank you CBE one step ahead on payment platform app!!', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ea74a6f2-d8ab-438e-a386-f2dee8d6f603', 1, 'It literarily don''t work at all', 4,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '43b3f185-c628-4daa-896d-8b3e629f5809', 1, 'good give us plus', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e86dc853-b071-4ba1-8326-6cb96f6fc354', 1, 'Very good application. However, I have one functionality recommendation. What if you let the app transfer money to any telebirr account as for MPESA? By the way, I am not the only one to ask this. Thank you!', 4,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9895,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7a680c7a-6fdc-41e9-b751-4de7d7d5a586', 1, 'before update it was able to screenshot while after update I can''t able to screenshot the transfere details', 4,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9852,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3c3f6d93-93b9-45d5-94c8-e2a99c962179', 1, 'it is good app. But you have integrate cbe with cbe birr. to allow cardless withdrawal directly from our accout!', 4,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9152,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ac9cefce-05ec-4da5-aec6-e183ee106c4a', 1, 'very good 👍 👏', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '38326d80-7315-4120-ab6d-63f3b1c4df98', 1, 'great when it works', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '117f3f1a-7d6b-4b72-9ca8-64dde3c8c500', 1, 'the app is very good, but why screenshots is impossible?', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9813,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3ec5c74f-2d0c-4062-91fb-e7abbaea3ac6', 1, 'excellent match application', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1e1d4fb5-8c70-476d-b2ff-61c89287f9e0', 1, 'The Best app😍😍😍', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7220306f-9af6-4084-bcf2-8ddfa328dc86', 1, 'excellent app', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8c89fe6d-7d41-449f-8448-50847ff76c5f', 1, 'easy to use and user friendly', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9979,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8b6f3b5e-94b2-4b69-a31e-9ffa05a80222', 1, 'አሪፍ ነው በተለይ የአሻራ ደህነቱ መረጋገጡ ተመችቶኛል', 3,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'NEGATIVE', 0.92,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9328d6af-18b9-4c46-b25f-3aaf8bd18a2f', 1, 'well software', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a7541548-6ac8-429f-853c-9b91828e5aa2', 1, 'ጥሩ ነው አንዳንዴ ስታክ ቢያደርግም', 4,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.8832,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '157c5302-a95d-4dd1-af53-e4b63e04ae74', 1, 'CBE very good apps', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '04ce887a-453f-4cc9-824c-8132c050ce15', 1, 'This application fast, secure and more convenient. Thanks CBE', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ad4e3135-eb8f-45b8-90e4-e185276ef91f', 1, 'excellent service', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e46feb79-7fb0-461d-9393-6ee1c91953b5', 1, 'Why didn''t you display cash transactions and bank statement in the mobile banking app?', 4,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9976,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7d349771-8d70-47f2-9f23-316af3714b4f', 1, 'Amazing app', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7ac1f4b1-cd05-44ee-ae8a-30a6ecc3f074', 1, 'our legitimate bank', 4,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9954,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'be1c3285-c021-4961-9b2a-942bce6e853c', 1, 'Ever and never seen this kind of app I proud my CBE', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9952,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '915d7435-0de7-4cfb-914c-f09c3e5f04e2', 1, 'very good and safe for me!', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '96ad15a7-6cdd-4148-9cca-ff10e1991adb', 1, 'it is best bank', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd6af9aa1-6bc2-4e40-b82e-7ab2abe15644', 1, 'very good, but sometimes....', 4,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c11c24de-7864-439c-b0de-7237c6f4db0c', 1, 'ከአንድ መስሪያ ቤት ወይም ድርጅት ወይም ግለሰብ በርከት ላለ ሰው ሲላክ የላኪውን መስሪያ ቤት ወይም ድርጅት ወይም ግለሰብ እንዲያሳይ አታደርጉም ? ግለሰብ ለግለሰብ ወይም ለድርጅት ሲከፍል ያሳያል ።', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9727,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8a4f0ca3-ed40-487b-a012-690b1aa5365c', 1, 'Why not allowed to pay for fuel?', 4,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9975,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6a7c4ac4-a6d2-4572-9f45-2f51f8172007', 1, 'Really! this app is more simple to use at any time in every where also it''s transaction quality between the users within the transaction receipt as abank that means this app is our bank on hand in mobile frankly I proud on this bank digital. I have no word to wrote ...... but it''s have weakness on poor connection.', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9963,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f0d64f88-e9f9-4ace-9575-160fb2454db1', 1, 'Great version', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1e5fc90a-d0bc-486b-b776-3ae80dfe3564', 1, 'Good and easy to use', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f3d195b8-3df3-488a-86a5-48e0816ab83f', 1, 'nice app and fast money transfer', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9994,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f914fd98-7772-4897-aacc-e6fce5721756', 1, 'Really automated...', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.8894,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2f822449-ab5d-49ef-b800-f8bbab01790b', 1, 'bek betam kelal', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9325,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cd1eb576-a4df-4b28-bf5f-56022df97d8b', 1, 'ምርጥ አፕ ነው ተመችቶኛል❤❤', 3,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'NEGATIVE', 0.8616,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6af02b24-8db3-424d-8c28-536448217610', 1, 'Recently app keeps closing and the notification after says this app has a bug. Can you make an update please', 4,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9968,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a05936eb-cb9f-438b-8d36-649f1e35e3a7', 1, 'very good, keep it up', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ade45eda-95cf-4a41-b4cc-a35d09fc9a27', 1, 'there is some issue the process it delay', 3,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'NEGATIVE', 0.9958,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '91d848e7-aa95-443a-ac90-7327bffbaa80', 1, 'what an amazing application in Ethiopian Banking industry which is very interested one!', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1254e829-efd8-43ca-acc9-41dd0b695fbc', 1, 'interesting', 3,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'dab85d9f-64c9-4e11-b585-ad031e8fddd6', 1, 'simple&fast!!!', 5,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4cbf8829-1b31-4b79-a56c-58aec5365742', 1, 'it is very good app', 5,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '70af3d1e-b55c-434c-b0b8-8a0dab48964f', 1, 'It is very excellent anddynamic plus user friend all in one bank apps of the era. I loved it.', 5,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '799b52c2-cc95-46df-aba2-c96edf264401', 1, 'Very God thanks', 5,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f12f3056-b2af-4dc5-a4f8-077223308e30', 1, 'The sum is good.', 3,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '969108d4-30ce-4089-a92c-2dbb90e7c041', 1, 'best of bests', 5,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'da0517a4-eccc-4fb8-8974-b1a3e5b135e6', 1, 'am happy thank you CBE🫡', 5,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4ddb61d6-6512-4e02-ad93-1abc3b784872', 1, 'it''s very nice 👍.', 5,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6cf09afc-f13c-462f-9183-c33863284a68', 1, 'The history sometimes misses transactions, tranfer to cbe birr debited but not really transferred, We need to really cop up with the world for real. The hacks and security problems, invest on and solve them.', 3,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'NEGATIVE', 0.9946,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd3afe77f-b964-469e-a25a-9dc549fb3cfa', 1, 'halan garidhaa cbe', 5,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9761,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8362e65a-05cf-45c0-96b3-c87ad47b9a2f', 1, 'best apps for useing', 5,
                    TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'POSITIVE', 0.999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9fa18c05-08ba-43d5-a9b0-63c6ae87b3a2', 1, 'Good apps ...But fix the screenshot its not easy like before ......', 5,
                    TO_DATE('2025-03-29', 'YYYY-MM-DD'), 'POSITIVE', 0.947,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd3125729-3da0-4331-9052-dfbb2850b136', 1, 'I am not exaggerating when I say that this application is one of the biggest players in the banking industry. It has simplified a lot of things for the user, even if the bank is in his pocket. But my opinion is (1), when we transfer money, there is a word limit on the (Note) at the end. Why can''t we write our reason briefly? I don''t understand why it is limited. On the other hand, there is no limit on the bank. Could you explain this? (2), when we pay for water, why is the code not mentioned', 5,
                    TO_DATE('2025-03-29', 'YYYY-MM-DD'), 'POSITIVE', 0.9913,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '060dd246-45a4-4e73-b059-992324c188eb', 1, 'in this update why screenshoot is disabled now it''s not working', 1,
                    TO_DATE('2025-03-28', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e2535fda-029f-4ff9-ad71-decf822e225a', 1, 'realy I donot seen like this application ! fast ,safe ande confortable', 5,
                    TO_DATE('2025-03-28', 'YYYY-MM-DD'), 'POSITIVE', 0.9892,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'bb4c6ba4-c74f-452b-9012-880c7cf5fa05', 1, 'Excellent but needed upgrading!', 5,
                    TO_DATE('2025-03-28', 'YYYY-MM-DD'), 'POSITIVE', 0.9264,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '34c8ed96-d00f-4805-ac0d-7dc14704790b', 1, 'goods app!! pleace update this apps??', 4,
                    TO_DATE('2025-03-28', 'YYYY-MM-DD'), 'POSITIVE', 0.9846,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '19f55fb5-6f4a-40aa-a1ea-b9e4fa7eabc7', 1, 'The latest update prevents taking screenshots, which is really annoying! please allow us to take screenshots! we need it for evidence (particularly, in case of transfer failure!).', 1,
                    TO_DATE('2025-03-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.9978,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '73f5af9d-deb1-4bda-8119-e7e8efbd9737', 1, 'Fantastic app! I appreciate it very much', 5,
                    TO_DATE('2025-03-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '515ac6ae-fdaf-4225-b098-71f28671b839', 1, 'Convenient app', 5,
                    TO_DATE('2025-03-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9977,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1345710a-a286-45a4-b8e5-77f53f186de2', 1, 'Doesn''t work properly. It crashes some many times. commercial bank of Ethiopia not only the application but also sending money to own CBE birr doesn''t get your money in your bank account. forcefully you must wait 3-5 days to get your money back to your account. walk up CBE the world is going to decentralized finance.', 1,
                    TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '66f5fb67-df7b-4274-aba4-d2c99ae38b1c', 1, 'It crashes multiple times everytime you launch it. Fix it. Edit: crash fixed but screenshots has been disabled. I don''t know who thought this was a good idea.', 1,
                    TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9995,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fa50a30f-d398-4c2d-b0d1-f94eea8a1349', 1, 'why why u remove screen shoot😡😡', 2,
                    TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'eb098c76-248b-4755-a15f-08a4e6f019cd', 1, 'I fails mid transaction, No screenshot, download don''t work, link shared not working bring back the old app this is usless', 1,
                    TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd98d7575-0d00-41d0-bf08-c733b6b9ad84', 1, 'very nice one', 5,
                    TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6215bca8-efa9-418e-8c54-a14603045d1f', 1, 'good application', 5,
                    TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0f99bd26-2bc3-4d0f-a813-f636ac631065', 1, 'problem solver and the best fast app', 5,
                    TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'dde8e620-2686-4797-a908-777b413fe102', 1, 'ምርጥ አፕሊከሽን ነው ገንዘብ ለመላክም ሆነ ለማንኛውም ነገር ተመችቶኛል በዚው ቀጥሉበት', 5,
                    TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9446,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f8522da0-c097-437e-9926-77b8b595c95d', 1, 'Please bring back the screenshot option. The screenshot download option takes like 15 second appear in gallery and most people don''t know about it.', 3,
                    TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.9957,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '969b2955-eda5-421b-b086-2aff885c8fbe', 1, 'you must added dark mode options ❗', 3,
                    TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.9865,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '745162ad-44bc-4883-9ca7-257d0c3903b1', 1, 'ممتاز جدا جدا', 5,
                    TO_DATE('2025-03-24', 'YYYY-MM-DD'), 'POSITIVE', 0.8608,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b0e36e7c-bd4d-4e3b-b64d-7b152f182395', 1, 'very nice and convenient app', 5,
                    TO_DATE('2025-03-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '265ad3b6-caf0-4359-b484-8415ddc178f2', 1, 'there are to many bugs app keeps crashi ng and the update file seems to keep getting worse', 2,
                    TO_DATE('2025-03-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '55fcc279-e571-493b-9de1-5abe1c7f00d4', 1, 'Great experience so far but why this app ain''t working while developer mode is on?', 4,
                    TO_DATE('2025-03-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9967,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd7022918-8907-4667-b975-7ccf6a6dd252', 1, 'why did the screen shot stopped ?????', 3,
                    TO_DATE('2025-03-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '07da55e1-0830-4332-b629-3bff9fcc530b', 1, 'it''s genuine app..', 5,
                    TO_DATE('2025-03-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6ab16d21-d2c8-4235-9c48-ff713bfde731', 3, 'I like this mobile banking app very much. Overall user interface and navigation is awesome. But it lacks instant response when someone deposit or withdraw money.', 2,
                    TO_DATE('2025-06-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9904,
                    '['User Interface', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'caf4a80c-85db-4b49-ab9c-a0b55e152317', 3, 'Massive upgrade from the Amole app.', 5,
                    TO_DATE('2025-05-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9646,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c25b35d2-35dd-4347-a520-99471d7b1066', 3, 'very good for this app', 5,
                    TO_DATE('2025-05-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5e6ff839-abc2-4b30-a8b4-e0f331da29d1', 3, 'this app better than Amole . but the biometric on new update doesn''t work', 4,
                    TO_DATE('2025-05-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '486d7550-98dd-4b9d-849d-e3f3fbf7c1ed', 3, 'wow to it saff and this app', 5,
                    TO_DATE('2025-05-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9986,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'be9a4e52-ed77-4953-9e52-17927dd7e138', 3, 'it too slow', 3,
                    TO_DATE('2025-05-29', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '053df9a3-e18d-4cb1-94f6-9cf522255b1c', 3, 'ዳሽን ባንክ ይለያል', 4,
                    TO_DATE('2025-05-28', 'YYYY-MM-DD'), 'POSITIVE', 0.8337,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cc215b00-332a-4b1d-93d1-4fad5592f40c', 3, 'real life changer', 5,
                    TO_DATE('2025-05-28', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4a9c5167-439a-4c99-a6d4-ad143b13bcd8', 3, 'nice application', 5,
                    TO_DATE('2025-05-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '115f7455-45c0-483c-b690-0e83dada584b', 3, 'useless app ever loading take long', 1,
                    TO_DATE('2025-05-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b2962d2d-86b8-43a5-ab14-d9d37ad03165', 3, 'Game changer app! Dashen Bank Super App is fast, secure, and easy to use. The three-click payment makes sending money super quick, and the QR code payment is perfect for cashless shopping. I also love the biometric login and easy airtime and bill payments. Everything I need is in one place. Dashen Bank has really raised the bar for digital banking in Ethiopia. Highly recommended!', 5,
                    TO_DATE('2025-05-26', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Account Access', 'Transaction Performance', 'User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '37afb22a-56f0-429c-9bab-41e39e524f29', 3, 'very useful App', 1,
                    TO_DATE('2025-05-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'aa332503-7097-479d-89d9-6b762bb9e814', 3, 'Simple, robust features? Yes, please! But the endless loading screen killed the fun—I couldn’t use it for days. Fix the glitch, and I’ll yeet a higher rating!', 2,
                    TO_DATE('2025-05-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.8351,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '46d39a4d-52de-4a73-9146-654d971ffb71', 3, 'it is good but some times says duplicate transaction why?', 5,
                    TO_DATE('2025-05-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9837,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9a583630-4540-44cb-8488-cf58211da392', 3, 'it is not as good as to the other mobile bank app.', 1,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'bb72bc30-a3bb-468f-ad15-1ca88c7897ae', 3, 'The best of best is now arrived **Empowering Your Financial Freedom** "Experience seamless banking at your fingertips with Dashen Bank. Empowering your financial freedom, anytime, anywhere!" **Innovation Meets Convenience** "Dashen Bank Mobile Banking: Where innovation meets convenience. **Secure and Reliable** "Bank with confidence', 5,
                    TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c8a76cee-dbcc-491e-9aa0-0f8fa423ee1a', 3, 'Nothing is changed in the updated version. You have been collecting comments but where is the feed back you improved in this version. superapp is mot functioning today.', 4,
                    TO_DATE('2025-05-20', 'YYYY-MM-DD'), 'POSITIVE', 0.994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a36489c7-0091-4e07-897f-78168bcb64b4', 3, 'The best app ever in finance sector', 5,
                    TO_DATE('2025-05-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '29d8b281-c802-4996-8dc3-eb99d78a43ed', 3, 'Its good app than other compitators but it confuse when we transfer it needs OTP and PIN most user inter their pin instead of OTP we know the litrecy level of our society so if it is device based i dont know the needs of OTP so please try to fix', 3,
                    TO_DATE('2025-05-18', 'YYYY-MM-DD'), 'NEGATIVE', 0.9983,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8ab908fa-9eb8-4b9a-9f76-707e01b53848', 3, 'dashen bank or dashen super app?', 1,
                    TO_DATE('2025-05-17', 'YYYY-MM-DD'), 'NEGATIVE', 0.9938,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '85c0cebd-10ec-4dd1-9e5b-647b9012acf4', 3, 'Transferring to other bank accounts is a hastle and inconvenient .Get used to seeing " please try again "', 2,
                    TO_DATE('2025-05-17', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1d4a769a-320a-4f19-a945-44c214f880ae', 3, 'always lagging', 1,
                    TO_DATE('2025-05-16', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '862138db-f7c6-4c78-bb5d-e28619cdb514', 3, 'Amazing Application...', 5,
                    TO_DATE('2025-05-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd8ab69ab-7277-493d-a2d5-0db4fd48635c', 3, 'Dashen bank app is very good, but sometimes it is not working well', 5,
                    TO_DATE('2025-05-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9976,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '499d89e8-8b7e-4641-b477-29ab5a5d314a', 3, 'its my choice', 5,
                    TO_DATE('2025-05-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9962,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f14bbcf2-d3c7-4eb9-bf61-b8be931c023f', 3, 'awesome app keep going', 5,
                    TO_DATE('2025-05-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '39322571-d8e5-42c6-8c9c-9f31706d5e4f', 3, 'It grows ethiopian digital banking step ahead.All fetures in one,simple fast and convince.', 5,
                    TO_DATE('2025-05-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7106eec4-cb60-4cf3-8f3b-fe5b0bfb400d', 3, 'Game changer', 5,
                    TO_DATE('2025-05-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9888,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b34cbb10-24ea-4091-93b3-41cd5f5506ec', 3, 'Totally amazing', 5,
                    TO_DATE('2025-05-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a1414451-a015-4553-a023-e2f4c2d8cfb9', 3, 'what a helpful app!!!!', 5,
                    TO_DATE('2025-05-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd61a5b09-39d5-4502-b270-15c6ad04f19c', 3, 'To be honest, best banking and lifestyle app in Ethiopia.', 5,
                    TO_DATE('2025-05-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c3afc51f-9e2b-4b3d-b155-0339a9ce0f20', 3, 'A must have, seamless, all in one digital platform "DB Superapp"! Keep living your motto "Always one step ahead"', 5,
                    TO_DATE('2025-05-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9966,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6fbffae4-0ab6-4bc9-a758-204abc102d89', 3, 'This App makes digital banking effortless and convenient. User-friendly interface, secure transactions, and excellent features for managing finances efficiently.', 4,
                    TO_DATE('2025-05-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['Transaction Performance', 'User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e1c1214a-8bc1-45db-bc49-3d51dddc6b88', 3, 'Amazing app super easy to use and best design. loved it.', 5,
                    TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8d1d472b-2bae-4749-b089-5632108ade02', 3, 'its the best ever', 5,
                    TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f2852962-b983-44af-b296-241a3373477f', 3, 'excellent game changer App', 5,
                    TO_DATE('2025-05-08', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '62102c1c-85b0-4965-b033-063c67ac9129', 3, 'I am highly excited by using this application and it is the most favorable as well as preferrable mobile app.', 5,
                    TO_DATE('2025-05-03', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f4d24779-931e-4cfd-a622-92dfcb654d3d', 3, 'it seems me logging out within minutes', 1,
                    TO_DATE('2025-05-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9982,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '157b5f87-506e-46dc-b89b-179653dbd957', 3, 'nice app especially GUI and I have got some error when you send within dashen bank the receipter is not get SMS notification', 4,
                    TO_DATE('2025-05-03', 'YYYY-MM-DD'), 'POSITIVE', 0.9858,
                    '['Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4e018789-e27b-4b7c-b1d4-f79dd0affa68', 3, 'yes i want dashen super open', 5,
                    TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'POSITIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0472c5b5-9fd3-49be-80f6-cca83ad918e5', 3, 'faster than this version', 5,
                    TO_DATE('2025-05-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '222e6a10-b3df-421c-83ae-1ff05ec40496', 3, 'Best UI mobile banking app, props to design team', 5,
                    TO_DATE('2025-04-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd744a029-1173-4a4b-b7f9-7c294f6fbd5d', 3, 'Dashen bank always one step ahead', 5,
                    TO_DATE('2025-04-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '153295c5-2630-4a84-9d1e-18ac73eca0c1', 3, 'dashen super app is secure band very easy', 5,
                    TO_DATE('2025-04-29', 'YYYY-MM-DD'), 'POSITIVE', 0.99,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '185c1487-6efe-4ba5-bbaf-41ea48da9422', 3, 'It is very fast and secured mobile banking app! I like this app!', 5,
                    TO_DATE('2025-04-29', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '63989d70-6ec3-44bb-87a8-2dad9286e37a', 3, 'best app I have ever seen', 5,
                    TO_DATE('2025-04-29', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '17d46982-18ec-43a9-85f3-0ff927671f95', 3, 'best of best', 5,
                    TO_DATE('2025-04-29', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9f0dddc5-58fa-4637-9a98-414044aa8bd0', 3, 'Its slow when i try to see the Recent Transaction and stucked', 1,
                    TO_DATE('2025-04-28', 'YYYY-MM-DD'), 'NEGATIVE', 0.9992,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1db8f294-b4c5-4389-8b1c-dcdf92f7ce3c', 3, 'wowslnwoooo wowwww amazing !!!!!!!!', 5,
                    TO_DATE('2025-04-28', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cbfa6f44-6387-46f5-8c57-005106a7f33f', 3, 'why do i have to change a pin number i use my finger print so dummy', 1,
                    TO_DATE('2025-04-27', 'YYYY-MM-DD'), 'NEGATIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3cef32ad-b3c0-4784-8594-0dfee471123e', 3, 'It is very slow and it lacks many features to be a super app. High rating is given by their employees, not by the customers.', 1,
                    TO_DATE('2025-04-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7e450cb8-6117-4fb2-b6fe-a4b889074190', 3, 'Smooth and secure experience transfers, bill payments, and tracking expenses are all effortless. The intuitive design makes banking on the go.', 5,
                    TO_DATE('2025-04-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Transaction Performance', 'User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '125057ca-c7fb-4c34-a7d1-a2cbe0d1b369', 3, 'Very easy and Fast.', 5,
                    TO_DATE('2025-04-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b7dbd93e-582d-4510-af69-30c206f1a99d', 3, 'Incomparably user-friendly and fast app for mobile banking.', 5,
                    TO_DATE('2025-04-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9393,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a96e41e8-767a-47e4-831c-2993d37f2906', 3, 'there is nothing super about this app, repeatedly failed transaction and wastes customer valuable time. if you have to do system upgrade do it at a time when there is less traffic demand. your Technical difficulty should not be reflected on customer.', 2,
                    TO_DATE('2025-04-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1115d2b9-b1f0-4fe5-a92c-67aed49141a7', 3, 'This super app is a total game-changer—fast, reliable, and packed with everything I need in one place. It’s seamless and super convenient. Love it!"', 5,
                    TO_DATE('2025-04-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '99705962-8067-497e-a116-cd6599ca4bb8', 3, 'All in One ✍️secure ✍️reliable ✍️convenient. Digital banking game changer!!', 5,
                    TO_DATE('2025-04-23', 'YYYY-MM-DD'), 'POSITIVE', 0.7599,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2d86848c-b71b-4419-871c-42ad60f1abfe', 3, 'it is incredible product.', 5,
                    TO_DATE('2025-04-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e887c287-a3a3-42dc-bd9a-7508531f6f0c', 3, 'I''m really impressed with this app! It’s user-friendly, runs smoothly, and has all the features I need. Makes my tasks so much easier and saves me a lot of time. Highly recommended!', 5,
                    TO_DATE('2025-04-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7b265fe3-1e03-425b-9b06-41bafe966fc3', 3, 'It''s an amazing app, experience it!!', 5,
                    TO_DATE('2025-04-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '49c926f1-3b4f-48af-8fab-ce09046e20cc', 3, 'This is the best banking app ever. I recommend everyone to use it.', 5,
                    TO_DATE('2025-04-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'aba6145f-bd70-43dd-ae4e-46e73fde8a82', 3, 'It is the best application!!!', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '02103d94-84d8-4ca5-aa3d-db0e512c68a7', 3, 'Exceptional digital experience, SupperApp will bring new paradigm shift in the banking business. Bravo Dashen keep it up!!!!', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9dd7083b-d295-42f5-b18f-f11dc02839a7', 3, 'its features are so dynamic', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e0e5b98d-5942-4c79-8610-4206edfdf353', 3, 'fast &Friendly user Application.', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '524e7cc6-ccd9-4c2a-8384-968ef8f4040e', 3, 'Fast, Reliable and User Friendly. Keep it Up', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd7f04f13-06de-4c04-b616-a7ecbb6dd8b4', 3, '#dashen super app is easy to use, secure & fast transaction😍', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9875,
                    '['Transaction Performance', 'User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '872c07eb-b111-4701-b263-c11d17dea1c7', 3, 'i love this app esp 3 click that make e-commerce easier and convinient.', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd41dd3e3-b09b-4d1f-a5a2-0caa9f430e37', 3, 'Dashen Super App contains extended selections for customers and can be easily accessible and also friendly to use.', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'be4677cc-1140-4ab6-b785-420638e0d7ba', 3, 'Great for everyday banking and payments on the go', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'acef4b82-b287-4a31-8dc8-6d701f99f9c4', 3, '"Dashen Super App'''' is impressive with its focus on simplicity, speed, and quality. The user interface is clean and easy to understand. Transactions process quickly, and the overall quality of the app is top-notch. A must-have for Dashen Bank customers. ዳሸን ባንክ አንድ እርምጃ ቀዳሚ።', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Transaction Performance', 'User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a7530454-7c62-4c62-9f29-9f3a2e82c705', 3, 'making transactions has never been easier. the new update is just amazing', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Transaction Performance', 'User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cdbc2de4-065b-4230-a34b-c532cf84ae71', 3, 'The app has various usefull functions, which make easy the payment system. Also, it will connect with sellers having reasonable prices.', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9851,
                    '['Transaction Performance', 'User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1ba081f6-d792-4a8e-a001-8613242bee50', 3, 'The app has great user interface with comprehensive payments and E-commerce platforms. And also it includes unique features such as chat Banking and budget.', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Transaction Performance', 'User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7baf1a73-5eb3-4057-b7aa-c94108c67155', 3, 'betam mirt Ena betam le atikakem kelel Yale Ena michu application nw', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9886,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5a146ecb-653c-4ffe-af0f-13a97eea6825', 3, 'Convenient!', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9937,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f6ad312f-15c3-43bb-b291-f8a8e35e331e', 3, 'It is an amazing application that meets the needs of customers.', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '751bedd2-1517-4cb4-a41c-f02d5f4b2468', 3, 'Effecting payment via the app has created convenience to the recipients in easily confirming the payments received!', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9731,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3e0e6df3-cb63-4503-8434-e1fb0bb790d1', 3, 'the best Supper App ever', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2bc93d8c-1975-44d3-b7c2-ef3429278f07', 3, 'This is the best app ever, when is it planned to include digital lending and gasification?', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f20f93ab-8f75-40aa-89a6-c450f54a7365', 3, 'A powerful, local solution that rivals any global app. I love how easy it is to explore services and products.', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ff1fe28f-db38-4286-acc3-b3693e528883', 3, 'Dashen bank is my number one choice', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9b5d99cc-8b0e-46d5-a846-ece397be1d99', 3, 'Assefa Genetu = Dashen superup is the latest and inclussive .I am happy with this super up.', 5,
                    TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '10870471-f38d-4dae-8a2c-ea875933d8ef', 3, 'The App is incredibly user-friendly and brings multiple services into one place. It''s fast, intuitive, and makes daily tasks super convenient. A true all-in-one solution!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6098f0f8-c13e-4cd3-a595-25b234b6a05f', 3, 'Proudly made in Ethiopia, this innovation delivers more than promised. The marketplace is a major boost for local commerce', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '43630291-4571-4e34-96d8-1d7ba7d174a9', 3, 'it so fanrastic and user friendly app. Bravo Dashen bank thanks.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '328e442a-c92a-42dc-a91c-44d71556a34e', 3, 'one of the best digital platforms I''ve used! from smooth transactions to a seamless shopping experience, highly recommended.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9937695e-7675-41d4-a60d-2fee72cb4b3c', 3, 'A proudly Ethiopia innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers bnd sellers', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9057ebb4-b1dd-4df9-a0d3-9ead5360b9c9', 3, 'Dashen Super App is a game-changer! It’s fast, user-friendly, and packed with features that make everyday banking and transactions super convenient. I love how everything I need from mobile banking to utility payments is all in one place. The interface is clean, and everything works smoothly. Definitely one of the best apps out there. Highly recommended!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Transaction Performance', 'User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'dd0238ce-336d-4dac-832c-8d01f44faf0a', 3, 'Easy to use and has many options. It is the best financial app I have ever used.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b5161ddf-ce45-46bf-9858-07071bdeeaba', 3, 'Highly impressed! Dash Bank really nailed it with this app. Secure, reliable, and packed with features I use daily', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5145d0cf-0bf3-4b48-9c11-46819cd06bcd', 3, 'One of the best digital platforms I’ve used! From smooth transactions to a seamless shopping experience, Highly recommended', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8cd152ac-79ad-4248-8a85-574943011aa6', 3, 'This app has everything I was looking for, dashen is becoming a grandmaster.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '83b92800-2bb0-47d6-8d64-b3409c428817', 3, 'Very convenient', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9988,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '70e43e76-a4ca-4e15-b690-93a34a5bf675', 3, 'The user experience is seamless, and everything just works perfectly right out of the box. I can’t believe how much time and effort it saves me every day.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1e865933-282f-4ea1-98f5-98c08d95a40f', 3, 'wawwwww what nice super app !!keep it up dashen bank !!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '650cfa8e-a81f-4f2e-bfbf-8f7fa6996872', 3, 'Dashen SuperApp the ultimate all-in-one solution! From banking and shopping to bill payments, everything you need is right at your fingertips. Life just got a whole lot easier!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['Transaction Performance', 'User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '31eddf1f-9725-472b-b29a-53377dac71ca', 3, 'It is,really super because of its unique offerings to individuals and businesses.It is a secure UX first app intended to cater comprehensive digital meeds.I am also happy to know that Dashen is considering to make the app more inclusive by lowering the mobile version requirements .', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '876f0ee8-c6e9-437e-9a56-bf00083a0319', 3, 'the very easy, secured, fast and multifunctional dashen supper application I ever seen. dashen really one steps ahead!!!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9983,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6c78dd1a-b338-4892-8821-27329e6a37cb', 3, 'One app for everything! I can shop, manage my bank account , and do so much more . Truly a super app', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '62ff3224-447a-4021-9b69-69faade17181', 3, 'one of the best digital platforms I’ve used! From smooth transactions to a seamless shopping experie', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f1d0d6cf-8d40-4ff9-99d5-3225c4efd6b9', 3, 'Dashen Bank super App is the most suitable, reliable, and fast digital banking system.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '86b26648-6711-4439-a44d-55e9aa090353', 3, 'Excellent app.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7ec853c5-737f-4ffe-b35b-069674bb88a8', 3, 'This is what we call banking app. As professional I want banking app as simple as this and an app rich of features that align with my lifestyle.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd66a2f21-49a4-4434-9e4e-2e6ce9b28307', 3, 'thanks again', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '65fbea88-9893-412a-adf2-7bde81ea0d0f', 3, 'Super Easy To Use and Fast Transaction.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9969,
                    '['Transaction Performance', 'User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f3f97b40-b273-44a0-afb9-1d393132be8d', 3, 'I have an incredible experience with Dashen super app, what an amazing platform is it?. keep pioneering in technological advancement 👏👏👏', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4515e0fb-53a8-4310-8734-084b884ed005', 3, 'i can''t recommend the Dashen Super App enough! This app is truly a game changer for anyone looking for a seamless and efficient way to manage their daily life. It combines multiple essential services into one easy-to-use platform, saving time and simplifying tasks The user interface is modern, intuitive, and super responsive, making navigation a breeze. Whether it''s banking, payment services, or accessing lifestyle features, everything is just a few clicks away!!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9954,
                    '['Transaction Performance', 'User Interface', 'Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '873196ce-c4ce-441c-a522-dd0785ea59f3', 3, 'The app is incredibly handy for managing multiple financial tasks, from bill payments to managing budgets. It’s saved me a lot of time and made banking way more convenient. Definitely worth checking out!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9982,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6f49f061-db2b-45e0-9947-743a32c2660f', 3, 'what an App', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9938,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '06aa9940-e8eb-45b2-91c7-1f13bd1645b6', 3, 'The new e-commerce feature is incredibly amazing and user friendly.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '05ea16ca-9cbf-4683-9ac7-ea4395cf688b', 3, 'dashen bank supper app is the most easy to use and have high speed,quality and I like features like chat,budget,fuel payment, and security for my opinion this product is techonolgy edge,this international standard thanks for product oweners (dashen bank)', 3,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9975,
                    '['Transaction Performance', 'User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '134d29fb-1daa-4f59-b21f-11e5fa7be525', 3, 'The Dashen supperapp is a revolutionary advancement in digital banking, combining exceptional usability, an intuitive interface and a seamless user experience. among its standout features are the integration of QR codes, account statement, transaction advise, chat, transaction authentication for limit thresholds, budgeting and different app in a single dashboard. Truly ahead of the curve ..... keep up the excellent work 🤝👏', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Account Access', 'Transaction Performance', 'User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'de603128-030e-4e5b-9bda-38e74813ad2d', 3, 'A proudly Ethiopian innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers and sellers. Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f37a6b6d-6879-4d35-80ba-64d2c96fa749', 3, 'Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd41af5b1-8acf-4f66-9d54-e14316bf489d', 3, 'Dashen Bank Super App is fast, reliable, and super easy to use. All my banking needs are handled smoothly in one place. Clean design and seamless experience – highly recommended!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ba65f5a6-aa3f-4c38-956e-7077d9756d65', 3, 'Db sup app is A platform or an application that can grasp more satisfactions through fastest mode of operation which means for budget planning, to use QR code(scan, pay, go) chat with staff, acc to acc other bank ft, merchant payment, and easly. I addition to i satisfied and i invite everyone to use those platform!!.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.8948,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0d377b76-0853-4251-b23e-81fd0cc4d9f5', 3, 'the chat banking and unique and only app that alow money request!!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9823,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e18544eb-d622-47eb-8d7d-ef3bf4df0a10', 3, 'Better and inclusive app!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3eabf614-6972-446f-a350-b4df903e9e8c', 3, 'Amazing Application', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '867ceac0-2b05-4261-86c0-093b58ea0553', 3, 'It keep my time to pay my bills and I generate my satment easily', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9967,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '80908e03-2856-4e22-84ed-a70b53d96a41', 3, 'It''s an amazing app that is up-to-date with the times, wow wow', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e84b7866-5a17-40c7-affc-1a44702a7227', 3, 'A game-changing Ethiopian innovation—where shopping meets opportunity. The marketplace feature connects buyers and sellers like never before.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9994,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '963f1643-28ff-462c-88a7-bc9146390102', 3, 'Dashen Super App isn’t just an app — it’s an experience. Effortless, powerful, and built for the future', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5b63a17e-0903-47f6-b8da-cb1c7346ad56', 3, 'This Is An Amazing App with Uniqe Quality,Easy And Fast Mobile Banking App.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5b8c94df-b1d3-4948-bcb1-238e80146227', 3, 'Dashen SuperApp is a lifesaver! Banking, shopping, and bills in one super easy app. The new e-commerce feature is awesome and supports local merchants. Fast, secure, and proudly Ethiopian.Download it now—you won’t regret it!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['User Interface', 'Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2a157c0e-b57e-43e8-8207-4ae55e549812', 3, 'Dashen SuperApp blends finance, shopping, and daily services effortlessly. The new e-commerce feature is smooth and supports local merchants—proud to back an Ethiopian-made solution!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '739b4157-4335-4fe7-9273-07f9427c8dba', 3, 'A solid step forward by Dashen Bank. The SuperApp combines essential banking features with lifestyle services, making everything accessible in one place. The interface is smooth, and transactions are quick and reliable. It’s clear a lot of thought went into the design and functionality. Great job!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Transaction Performance', 'User Interface', 'Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '369da03b-61ed-424a-abab-7efc142b1038', 3, 'Dashen bank super app is the crucial and convenient app in Ethiopia. there is no other app to compare with Dashen bank super app', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9818,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '83682450-a7ae-424d-9ea9-15b6fe29de4d', 3, 'All-in-one finance & e-commerce super app! Pay, save, shop seamlessly. Fast, secure. #BankAndShop', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9944,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '427aa626-93a9-4faf-899a-d519952b4baa', 3, 'it''s a hestorical app. in the bank industry.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9916,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '86b63f8a-6ca9-487d-beca-ed2f75ca888f', 3, 'A game changer in Ethiopian digital banking fast, secure, and packed with services. Everything you need, all in one powerful app. A true leap toward financial convenience and innovation!', 4,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'fdcc34cc-699d-46ba-bcde-69f82e340aa4', 3, 'easy &,simple to use', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9968,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ce9b538b-ea95-497b-ba79-45189131f057', 3, 'Banking, but make it smart. Local solutions, all in one place. Smooth, fast, and actually saving time. Feels like the future. Love it!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8697f174-08de-481a-8bbd-9619e90719e6', 3, 'All in one, that is it 👌', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.8945,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '82f5d5da-6678-4f6d-8d35-a5130983c919', 3, ', Dashen Bank Supper App is multipurpose, convenient, very attractive and Make life easier', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f6f345d9-913f-4923-93af-c3430d22d4ac', 3, 'very easy and flexible app.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '98a21365-53e3-42ef-8481-573c6ef8a181', 3, 'I choose Dashen Bank Super Up since, it is easy to use & it has attractive features !', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '369c76a3-4250-4983-a479-859c8eed7007', 3, 'dashen super app is simple faster and reliable.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ffefe136-8fc9-4c3b-a4be-71adf835a4f0', 3, 'Dashen Bank Super App is a game-changer! The user-friendly design, wide range of services, and smooth performance make it incredibly convenient for everyday banking. It’s fast, secure, and truly reflects the bank’s commitment to digital excellence. Highly recommended!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['User Interface', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '353f56b2-61a0-4685-82b3-8007b602bdaa', 3, 'The app keeps getting better with every update! Smooth performance, great UI, and top-notch security. Thank you for making banking so convenient!"', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '31577c85-64e5-4309-88f4-c1806697ca2d', 3, 'this app is the most simply to use and secure safe i love it to use for any bank transaction', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9964,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '22725963-a873-43c8-a711-f52ec4ce55b2', 3, 'After i download the app recently had a smooth expriance, its user friendly, fast, and everything works as expected. keep up the good work.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '94163742-6825-440b-9f7f-71d8d9d036ed', 3, 'An app with High performance and advanced features!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '34df06ad-f6e9-46cc-b5f8-34baddb56b9b', 3, 'It is a very user friendly, attractive user interface, full of useful features. I really encourage everyone to give it a try.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '67218c11-6089-4be4-a26b-801ef1c9df87', 3, 'Good actually , but it have to WORK when developer option is on 🙏', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9746,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '117e220b-de40-4fd8-8d9e-15b95080d3a5', 3, 'All-in-one convenience, From managing accounts to paying bills and shopping online and the chat banking is game changer, this app does it all seamlessly.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9982,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '032354de-55bf-4025-989e-d3b8c5b0f7f0', 3, 'I appreciate that Dashen Bank takes lifestyle services into account.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.998,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6974a44c-7969-4c5b-9ba0-3221ec5f0bb1', 3, 'keep it up!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '70756dbd-4ae2-40b8-b814-a6b322d9ea0b', 3, 'amazing app really i loved it .that''s why we say dashen bank is one stap ahead. It''s the best mobile application that should be on every phone.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'adb74398-cf2d-4c18-aff4-72412cfe8c51', 3, 'very comfortable app keep it', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'bcf18a5b-5e9e-43f1-8dfa-d2fb31a8dcd7', 3, 'it has clear detail information about the application so it helps customer how to use the app. and it is very easy to use and also app is secure.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['User Interface', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '43c462b0-3873-429a-ac91-ee72fbf4e070', 3, 'I have been using the Dashen Supper app mobile banking app , and overall, I appreciate its features.However,I’ve noticed that when I turn on the developer options on my device, the app stops functioning properly. It would be great if you could look into this issue, as I often need to access developer settings for other applications . Thank you for your attention to this matter!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9069,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '195107de-6ae9-4adf-bb09-e25c029d6706', 3, 'easiness to use with fast response time', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9647,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c2ef1fe4-8517-4a83-9f92-165c0e65540a', 3, 'The new mobile banking application is a major upgrade! It’s incredibly user-friendly, with a clean and modern design that makes navigation simple and intuitive. I really appreciate how fast it loads and how smooth the overall experience is. All essential services like balance checks, transfers, and bill payments are eas y to find and use. The added security features give me peace of mind, and the app runs reliably without crashes or glitches. It’s clear a lot of thought went into the user experi', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Transaction Performance', 'User Interface', 'Reliability', 'Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd6059960-9967-4be6-a771-000dd2f1743a', 3, 'As an Internal Customer, Dashen Bank SuperApp has greatly simplified my online banking experience. It''s easy to use, allowing me to quickly check balances, transfer money and pay Bills. The app''s advanced security features are highly secure, ensuring my data is well protected. The Three click, Chat Banking and IPS features have also given me a smarter experience. In deed Dashen Bank is always steping ahead!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.999,
                    '['Transaction Performance', 'User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'be79dbdd-63db-463c-9abf-a88387d6b07a', 3, 'A truly impressive app — user-friendly and a game-changer in Ethiopian banking. The Dashen Super App stands out as one of the most innovative and convenient digital banking solutions in Ethiopia’s financial history. Smooth navigation, seamless features, and a wide range of services all in one place. Well done!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a852af36-a839-4285-b57d-2a0616e9e544', 3, 'dashen bank super up has very fast and convenience and also it has contain more things on one app .I am very interesting to use dashen bank super up', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9974,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '62e4269a-6b6b-44ea-a4ec-07b21d8eda68', 3, 'The Dashen Bank Super App has truly elevated my mobile banking experience. It''s fast, user-friendly, and packed with all the essential features. The interface is clean and intuitive, making navigation easy even for first-time users. I also appreciate the added security features that give me peace of mind while banking on the go. Dashen Bank has done an amazing job with this app—it’s reliable, efficient, and always improving. Highly recommended for anyone looking for seamless digital banking!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a1a3c20b-aef3-474d-b045-c700d6fae1bc', 3, 'A fantastic product!! keep the good work.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8f0e023e-152e-44a6-bba1-627c20d3e298', 3, 'I am very impressed with the Dashen super app. It is user-friendly and operates efficiently. The budget and chatbot features are impressive, and all items can be purchased with just three clicks.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '23019863-9b22-4d7e-8271-49f6b96b1546', 3, 'The Dashen Super App offers a quick and user-friendly experience, bringing together a variety of services, like budgeting, payments, airtime recharges, and more, all in one convenient platform. Its sleek design and intuitive navigation ensure effortless transactions. It''s evident that Dashen Bank has carefully crafted the app to make everyday financial activities easier. A great choice for anyone aiming to streamline their digital routines!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9991,
                    '['Transaction Performance', 'User Interface', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '34f021e1-7017-44b8-b630-9d1dc75bf1db', 3, 'Dashen supper App is the most useful app for our customers', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9989,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f0c3ab74-087f-43bd-ab00-fe80b34e864a', 3, 'it is the most amazing mobile app', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6a9d5447-10d8-4f6e-abc9-7a3f0ba909f6', 3, 'A Good and fast supper app thanks for dashen bank', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '02b8cc52-e23d-4b2f-b1e5-576c3560b859', 3, 'Dear Users of the Dashen Bank Super App,I have been using the Dashen Bank Super App for a while now, and I must say—it’s truly a game-changer! The app is incredibly fast and reliable; I’ve never encountered any delays with my transactions. One feature I absolutely love is Chat Banking. It makes everyday tasks like checking my balance or transferring money as simple as sending a quick message. Also, the budgeting tool has been a huge help in tracking my spending and giving me a clearer', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Transaction Performance', 'Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd5ae9239-54f2-4f66-9050-09c7aa0d84a8', 3, 'Dashen Bank Super Up,use the app and makes your easy,fast,convinent.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9986,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0e6b332e-9636-45c6-9467-3826506707f5', 3, 'To join digital world use supper app and make your life easy', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9871,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '63f87ad6-81fd-41ce-ac38-3fa11b0db062', 3, 'best mobile banking application', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3fcf360a-1a03-42d4-9c5e-7973b8671e68', 3, 'This banking superapp is incredibly well designed. The design and appearance of the app and the overall experience I have when using the app is fantastic. The app is packed with features from banking to e-commerce all in one place.It even has a budget setting option which is super useful for managing my money. Everything runs smoothly and I love how convenient it has made my daily life. Huge Kudos to Dashen Bank. You are truly living up to the motto ''''Always one step ahead." Keep it up!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9386a998-e31b-4518-b44f-8ddde2d80f82', 3, 'best mobile banking application', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b5a99318-f47b-46ae-8eef-db5c863f7958', 3, 'I was really amazed by the idea of an e-commerce service on a banking app. This is what it means to be one step ahead. Please include all kinds of products in there as soon as possible.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9982,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b88fa79d-d681-4e41-8994-88bd84e50d24', 3, 'this is what we expect to get service Dashen Bank always like his slogan', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.8835,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5bfe42a8-190a-44b6-8149-bbf58d0cbd08', 3, 'Dashen SupApp is the most contemporary application, offering a great experience by enabling users to perform multiple tasks through a single platform—such as chatting with friends, transferring money, paying bills, and more. It is the first app of its kind in the Ethiopian banking industry, making it a remarkable opportunity for entrepreneurs working in app-based sales and software marketing. Good job, Dashen Bank!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '996483eb-2fa8-4628-8c6f-059c82d9e883', 3, 'Dashen Super App gives me an amazing convenience and makes life easy.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '99157497-80f6-4302-9987-a61fb2d35d8b', 3, 'excellent mobile banking app', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f539096f-c091-4424-9f29-8b1de5bcd809', 3, 'Wow! like his name Super App...', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9986,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0e4cf42b-eb22-4a9d-b2f9-e99cfc55dd8b', 3, 'Dashen supper app is the most special. ይምቾቱ ይለያያል!!!!', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9927,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8a3f027a-9427-4cd2-901b-6fff9659d994', 3, 'convenient and fast', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '386c3a7b-275d-436c-a83b-af805c1cc4ac', 3, 'Best- in-class app.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c8734abd-f137-417a-8c36-defbc982ec26', 3, 'I really like this amazing application and Dashen Supper app that has made my life easier.', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0dbc863f-6b31-45ac-b3b6-cc5aad65786d', 3, 'amazing features, faster and easy to use', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1351d527-0ebd-4fcb-9c37-ba6361ece17e', 3, 'The Dashen Super App offers a modern, user-friendly experience that leverages the latest technological advancements to deliver a seamless e-commerce platform', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '50117391-aa47-4c25-b9fa-bda3a861d922', 3, 'I love it. one of the best mobile banking app in the banking industry', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3f6bead7-080a-4031-8a18-49b6e7997c15', 3, 'I love this app', 5,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4ca0ede2-4259-4cec-a958-71d3a7555715', 3, 'no working for me hulum information asgebiche continue or accept yemilew button ayeseram my phone is Samsung A51', 1,
                    TO_DATE('2025-04-21', 'YYYY-MM-DD'), 'NEGATIVE', 0.9981,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1806822b-7539-4ec1-bb6e-52d6a9786ee0', 3, 'waw no idea the best app.', 5,
                    TO_DATE('2025-04-19', 'YYYY-MM-DD'), 'POSITIVE', 0.9923,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '79fabd48-7d9f-4be6-b0d2-ab35cec736eb', 3, 'fast best app', 5,
                    TO_DATE('2025-04-19', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1d457104-9dca-4518-9217-003ed78f3710', 3, 'nice app ever', 5,
                    TO_DATE('2025-04-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '04461449-8fd8-4684-8b12-1bc3aee7f6f2', 3, 'very disappointing app. Closes frequently and unstable in function', 2,
                    TO_DATE('2025-04-17', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd5552347-d7f6-4f91-ae8c-c33d16d0a8d3', 3, 'Feature-rich? Absolutely. But the speed? Painfully slow. Seriously, is it communicating with a server on Mars or something?', 5,
                    TO_DATE('2025-04-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e7057ab4-ff08-40bd-8c50-1d67ce4f5058', 3, 'The Dashen Super App delivers a remarkably fast, highly secure, and exceptionally user-friendly experience, establishing it as a leading application in its category.keep it up and stay ahead Dashen Bank.', 5,
                    TO_DATE('2025-04-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '71670dbe-1de7-4384-822f-cc47f95185d8', 3, 'So far so good! their in person customer service is amazing 👏', 5,
                    TO_DATE('2025-04-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a7b719d1-4b74-4a60-b7ed-19b62e900168', 3, 'The app is very backward and doesn''t always work. If it works three hours out of 24 hours it''s great!😥', 1,
                    TO_DATE('2025-04-14', 'YYYY-MM-DD'), 'NEGATIVE', 0.9958,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0096a509-2709-4211-b0f4-626d3d6a8dbb', 3, 'It''s bad for the connection and too many days are it that not working', 1,
                    TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2979e41b-2997-44da-82a6-fb8f9040841b', 3, 'it''s samart', 5,
                    TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3371e672-aa09-45c0-9ae6-ec3d4e3e827a', 3, 'The app is not working properly, I have been using it.', 1,
                    TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1048668b-fdd7-488f-bd6b-83f3586915eb', 3, 'it is very good app', 5,
                    TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '87355423-1404-4beb-b08d-7cad5d4b4f08', 3, 'I had a disappointing experience with Dashen Bank''s Super Up service. The app is very slow and takes forever to load during transactions, which is incredibly frustrating. Additionally, it doesn''t generate receipts for any transactions, making it difficult to keep track of my expenses. I also reached out to customer support, but the response time was longer than expected. Overall, I was hoping for a better experience, but I find the service lacking and in need of improvement.', 2,
                    TO_DATE('2025-04-09', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Transaction Performance', 'Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9c142de4-313b-4287-8a61-1ee79e0a290c', 3, 'slow cumbersome', 3,
                    TO_DATE('2025-04-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '382fcdf9-c528-46d3-9b20-fd83a4f5d4f2', 3, 'Is really 💀', 2,
                    TO_DATE('2025-04-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9859,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c7cdf3f1-a374-470d-80be-8d7bc00d360f', 3, 'It''s slow to send OTP. it''s not reliable. It crushed many times. It needs improvement in many ways', 1,
                    TO_DATE('2025-04-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'aa31a976-cb24-4df5-8f7c-6fcb238d9327', 3, 'This is the worst mobile banking experience I’ve ever had. It doesn’t work when you need it, and it randomly updates itself without warning. You can’t make transactions whenever you want. It’s a nightmare for anyone who relies on this as their main banking option, especially those with a lot of money in their account. I’m lucky I’m not one of them, but still, it’s infuriating not being able to access your money when you need it."l', 1,
                    TO_DATE('2025-04-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c23b473c-4144-4bea-98ae-172df77c97b1', 3, 'I have experienced on using the app of Banks in Ethiopia, this Dashen sup is like old version of the applications for using. I gave 3 star for it''s very low speed while login and processing', 3,
                    TO_DATE('2025-04-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9981,
                    '['Account Access']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cc85c5a4-aa62-4817-b48d-e4fe94daa748', 3, 'proud by dashen bank', 5,
                    TO_DATE('2025-04-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a928485d-6535-4782-8ff5-d4f0d401957a', 3, 'best of best', 5,
                    TO_DATE('2025-04-05', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4eb71bb5-9546-4eb8-9115-35dbb8ec6a84', 3, 'This app is not working unless you turn off developer mode on your phone. So it takes your rights to just use it.', 2,
                    TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0712b546-88dd-4f2b-a977-87ccd827841d', 3, 'real super up', 5,
                    TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '971db897-312b-4560-998a-aaf867c9aba0', 3, 'it''s very disappointing fix it as soon as possible not expected from dashin bank fix it', 1,
                    TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '86d03988-70ec-4dfa-a24c-9fb492fd62d7', 3, 'why dashen bank workers hidden my ATM Card 🏧?it''s a big problem to me', 5,
                    TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0af7f66d-ac1b-46c8-866a-afbed0f5ed57', 3, 'why does it ask me for both pin and opt even the opt is touch let alone both', 2,
                    TO_DATE('2025-04-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9959,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8cc8db7d-a995-475f-a326-f77644f05262', 3, 'it is best app easy to use', 5,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9864,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0849d6e7-3240-430d-9fcf-d6be127a5ac0', 3, 'It is very easy to use and powerful application.', 3,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f586fd46-d883-4970-8ae3-dfded1df6aa1', 3, 'this apps have a good feature but but some features like developer mode turn off irritate user', 3,
                    TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'NEGATIVE', 0.9972,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '98ca9bca-5c01-4997-b80a-b8a53481b391', 3, 'This is not only a mobile banking app, it is beyond that. We will access our account easily, we are able to get many information easily here. i.e. exchage rate. We are able to chat with others, we are able to budget, we are able to transfer to other bank and within Dashen. we are able to access many accounts in a single app, we are able to pay bills in QR scan, we are able to make payments and order delivery items here in a single app. #Always one step ahead.', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9898,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1181718c-4e5c-4181-a943-53e579042bd6', 3, 'wallahi very fantastic Bank', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'afa8745f-7dad-4bdd-9e5b-0d7c19057f9e', 3, 'Waw, It''s amazing app. thank you Dashen Bank.', 5,
                    TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1124e4c7-b545-49aa-be67-4284f2b39eeb', 3, 'I’ve been using the Dashen Bank Super App for a while now, and it’s been a game-changer. The app is super fast and reliable—I’ve never had an issue with transactions being delayed. One of my favorite features is the chat banking, which makes it so easy to do things like check my balance or transfer money just by typing a quick message. The budgeting tool is also really useful. It helps me keep track of my spending and gives me a clear picture of where', 5,
                    TO_DATE('2025-03-28', 'YYYY-MM-DD'), 'POSITIVE', 0.9992,
                    '['Transaction Performance', 'User Interface', 'Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b92003f6-a038-4aea-87ae-6c07441dacae', 3, 'nice application', 4,
                    TO_DATE('2025-03-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '008fc909-9a69-40fd-9eee-cce9d3144fe9', 3, 'Very good app that like it too. B/c it is very fast and easy to use.', 5,
                    TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0a7db85e-00c5-40f6-a9c2-08e130808303', 3, 'best experiences', 5,
                    TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'POSITIVE', 0.9993,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '122c3323-11c7-4f8e-a842-57272e0b80e3', 3, 'too slow to use.', 1,
                    TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c793fb73-c44b-4e4b-99fc-9af551261b68', 3, 'the worst app in the market only good ui', 1,
                    TO_DATE('2025-03-22', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd91ffd3d-5e49-4bee-9cea-553bbc87a371', 3, 'በጣም ቅልል ያለ አፕ በርቱልን ለአጠቃቀም ምቹ', 5,
                    TO_DATE('2025-03-22', 'YYYY-MM-DD'), 'POSITIVE', 0.92,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '59403fd9-76ed-416f-85c3-f63b3a664bdc', 3, 'thanks for all digital transaction', 5,
                    TO_DATE('2025-03-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '48ca44ba-ef5d-4023-84c2-20fa95be75d5', 3, 'This app is not supporting smart phones that have old android version and so it is none inclusive. At the same time the amole lite is not working properly and once you reached to maximum otp trail mistakes due to network or other errors like stacks , you will be tied up to make Transactions. Ohh... tired!!!!!', 1,
                    TO_DATE('2025-03-20', 'YYYY-MM-DD'), 'NEGATIVE', 0.9997,
                    '['Transaction Performance', 'Reliability', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '07855205-ebce-419e-ab28-34d0a7b7373e', 3, 'it''s Be Come Busy &not working good', 1,
                    TO_DATE('2025-03-20', 'YYYY-MM-DD'), 'NEGATIVE', 0.9994,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'acab324e-1c06-4be4-bfb4-093e0d0db46f', 3, 'I wanted to share some concerns about your Supper App. It appears to be experiencing reliability issues and isn’t performing as expected. I hope this can be addressed soon to improve the user experience. One star 🌟 for now.', 1,
                    TO_DATE('2025-03-19', 'YYYY-MM-DD'), 'NEGATIVE', 0.9981,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '043ba0ce-d496-4f1c-bcf7-ae23c275d5a6', 3, 'best ever digital banking sector essay for understanding ,smart and convince for using', 5,
                    TO_DATE('2025-03-19', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd356a5b4-5cb2-433f-aac3-1e077cea0a90', 3, 'good and latest', 5,
                    TO_DATE('2025-03-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd9e806c8-38ac-4376-8317-16692333e2dd', 3, 'The best App of all', 5,
                    TO_DATE('2025-03-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e814d6c2-d350-4b7b-9b58-b1f387d987ac', 3, 'Worst app ever', 1,
                    TO_DATE('2025-03-15', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a02f3622-dc96-4c0a-9509-83f06407c209', 3, 'This app is the most unreliable mobile banking application I have ever used for transaction, it is very late, non-responsive and full of bugs. Its is very disappointing. It is just inconvinient, and not user friendly and compatabke at all !!!!!!', 1,
                    TO_DATE('2025-03-14', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Transaction Performance', 'Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b2730fe5-571b-4fcd-8a66-24f872b7b8bb', 3, 'The app is good but it has no USSD option', 4,
                    TO_DATE('2025-03-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9952,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a34ea67e-01a2-487d-b414-b2d41d0572a2', 3, 'I have used many mobile banking and also tellebir and mpesa nothing come close to this app. Well done Dashen indeed one step a head. A lot of cool features that amole hasn''t the receipt and the account statement is superb for me. I hope you add more integrated small apps to.', 5,
                    TO_DATE('2025-03-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9985,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3a7cd664-6247-442c-b273-a913dc7cc30b', 3, 'The app is good but it ask update every week so tiring', 2,
                    TO_DATE('2025-03-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9952,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd797e094-d6fb-4ead-b33a-980b9c5fb93d', 3, 'It good and easy to use', 5,
                    TO_DATE('2025-03-11', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2407d488-1b89-4b2b-a7be-0fa9822dbaaf', 3, 'በጣም አሪፍ መተግበሪያ ነው ። አመሠግናለሁ ።', 5,
                    TO_DATE('2025-03-10', 'YYYY-MM-DD'), 'POSITIVE', 0.92,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a9b0db48-0dae-4e29-9406-dfc9b52cd466', 3, 'Greately improved since it was released! I really like the budget and expense tegistration feature. For ATM or POS withdrawals, it is not possible to account these expenses, even if it is visible on the transactions window. If that can be worked on, it will be improve so much!!', 5,
                    TO_DATE('2025-03-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9656,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9f23d18f-937a-44d7-8e52-9808841d887f', 3, 'Wow Excellent app', 5,
                    TO_DATE('2025-03-08', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '82441d3e-7555-4c97-a5d3-aada8ee43dce', 3, 'Nice app but i experience some issues with others banks transfer it keeps saying account is not exist most of the time.', 4,
                    TO_DATE('2025-03-08', 'YYYY-MM-DD'), 'POSITIVE', 0.9984,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7126c191-fb47-4ed3-ace7-3a6784d5a298', 3, 'Add the option to send money to any telebirr account like amole does.', 3,
                    TO_DATE('2025-03-08', 'YYYY-MM-DD'), 'NEGATIVE', 0.9957,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '98dfa0bb-fbf6-4852-bf93-51e83ef6c1a9', 3, 'no one dashen yichlal', 5,
                    TO_DATE('2025-03-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9842,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '739dab0d-35eb-44e1-b4a7-245712593631', 3, 'In short ! I''m so proud of this app developers for their highest professional of developing. Thanks', 5,
                    TO_DATE('2025-03-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '212c339b-807a-4c89-b5b1-cb9ab844f676', 3, 'The speed is too slow. Need some improvements.', 2,
                    TO_DATE('2025-03-06', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '690ec730-d658-47b8-80d8-1b02eb85cc6b', 3, 'Fantastic app', 5,
                    TO_DATE('2025-03-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c7dccd52-ade3-4496-a9d1-f52e3af60664', 3, 'I wish dark mode feature is add as an option but it''s good app', 5,
                    TO_DATE('2025-02-27', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '74f35e55-6ee7-4d01-bc8a-e5b3c92a6b70', 3, 'Super Up is the ultimate digital banking app, living up to its name with speed, efficiency, and innovation. Designed for a seamless experience, it offers lightning-fast transactions, top-tier security, and effortless financial management. With Super Up, banking has never been this smooth, smart, and super!', 5,
                    TO_DATE('2025-02-26', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Transaction Performance', 'User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '759ccebb-dcdd-4f4b-bc9b-7a7453191e52', 3, 'The Dashen Super App is a game-changer in digital banking, offering a seamless and convenient experience. With its user-friendly interface, fast transactions, and a wide range of financial services, it simplifies banking for customers. Features like bill payments, fund transfers, mobile top-ups, and loan applications make it an all-in-one solution. Plus, its security measures ensure safe and reliable Experiance effortless banking', 5,
                    TO_DATE('2025-02-26', 'YYYY-MM-DD'), 'POSITIVE', 0.9977,
                    '['Transaction Performance', 'User Interface', 'Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '804dc621-491a-4645-abf9-0b5db917406a', 3, 'It has good feature. But, it is Very Slow! difficult to pay or receive. The Speed should be improved, else I didn''t recommend.', 2,
                    TO_DATE('2025-02-24', 'YYYY-MM-DD'), 'NEGATIVE', 0.9961,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '1d0f9b72-5b50-40f4-9659-fe79222b8213', 3, 'Excellent app', 5,
                    TO_DATE('2025-02-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3137ba80-d819-4ee4-bbfd-999fcc02f6f7', 3, 'አፕልኬሽኑ አሪፍ ሆኖ ሳለ ቴሌብር ወደራስ ብቻ ለምን ሆነ እንደ ድሮው ለሰውም መላክ ቢቻል', 4,
                    TO_DATE('2025-02-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9528,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '347d1005-af56-400b-95e6-b48e96816565', 3, 'Wow amazing app', 5,
                    TO_DATE('2025-02-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cf3081c5-a6d9-4481-80de-c990cf6b9784', 3, 'best platform... Please avoid otp', 5,
                    TO_DATE('2025-02-21', 'YYYY-MM-DD'), 'POSITIVE', 0.9229,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e13bd7ee-f36d-422a-9341-7e55733d5971', 3, 'Super smart app.', 5,
                    TO_DATE('2025-02-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '88d57ce9-5ba3-4d52-aaba-18c92e2cbbc8', 3, 'I don''t know what happens but the application is not send verification pass code you should fix that', 1,
                    TO_DATE('2025-02-16', 'YYYY-MM-DD'), 'NEGATIVE', 0.9974,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '30cdf34a-c7e8-4573-b51d-920e576eb5a9', 3, 'This app doesn''t work on my phone my phone is Samsung Galaxy s7 android version 9 All other financial apps work like telebirr CBE M_pesa...', 1,
                    TO_DATE('2025-02-14', 'YYYY-MM-DD'), 'NEGATIVE', 0.9974,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '62a49d95-3dee-4d62-9b5a-cceff329af48', 3, 'Dashen Super app is secure, very easy to use and has more services uniquely like budgeting, chat, IPS...', 5,
                    TO_DATE('2025-02-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9938,
                    '['User Interface', 'Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f4f64316-a28a-464b-aba8-c9279ef1fa1f', 3, 'Amazing and user friendly supper app and looking forward the additional features', 5,
                    TO_DATE('2025-02-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7a363704-a9b9-4805-99ce-288543537fc5', 3, 'it''s amazing app i have seen ever', 5,
                    TO_DATE('2025-02-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '15e7f782-ce40-4927-a035-f0f73b2b5631', 3, 'One star deducted for not to able to transfer to telebirr.', 4,
                    TO_DATE('2025-02-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9904,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '40ab34a6-0027-4019-b565-824e578f79c3', 3, 'ጥሩ ነው ግን በደንብ ሊሸሻል ይገባል', 4,
                    TO_DATE('2025-02-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9047,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c6d8d045-ccb6-427d-9e8b-3b8937445a28', 3, 'ፍጥነቱ በጣም አሪፍ ነው! እና ቀለል ያለ ነው ! ነገር ግን ተጨማሪ ወደ ቴሌብር ኤጀንት መላኪያ አፕ ቢካተትበት ጥሩ ነው::', 4,
                    TO_DATE('2025-02-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9328,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2b6f2fa5-b5ce-4c1c-adc5-b21429979ae7', 3, 'Keep up the good work and pleas add water and electric utility payment', 5,
                    TO_DATE('2025-02-12', 'YYYY-MM-DD'), 'POSITIVE', 0.9987,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd98af23a-58c4-48d9-beaf-b4767f97b769', 3, 'The app missed some important features 1. It does''t show recent transactions 2. Transfer to Telebirr limited to own telebirr 3. The statement does''t show running balance', 2,
                    TO_DATE('2025-02-11', 'YYYY-MM-DD'), 'NEGATIVE', 0.9996,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a18d6971-00fe-4bc1-b303-7c47e6ab410b', 3, 'Simple, Fast and Easy ⭐⭐⭐🎉', 4,
                    TO_DATE('2025-02-10', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9710f0a3-e133-4969-874b-2316715d90b7', 3, 'የሚገርም aplication ነው, ነገር ግን ብር ትራንስፈር ሲደረግ ያለ ፒን መሆኑ risk አለው ሁሉ ጊዜ የ ትራንስፈር መደምደሚያ ፒን መሆን አለበት!!!!!!!!!!!!:: አሱ ቢስተካከል 5 star አስከዛው ግን 4 ሰጥቻለው::', 4,
                    TO_DATE('2025-02-09', 'YYYY-MM-DD'), 'POSITIVE', 0.8566,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e0a1d8a1-df15-4a9b-8e99-1b596bd97fb7', 3, 'Baankii daashin baankii hudna galeessa galatoomaa isinii woliin jirra Godina jimmaa magaalaa Aggaaroo irraa Muaz Abamecha Abamilki', 5,
                    TO_DATE('2025-02-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9961,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '88374fe2-44b0-4122-9f7c-1bd98b21108e', 3, 'It doesn''t work', 1,
                    TO_DATE('2025-02-07', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '631604e5-d2d7-4cfc-8eed-174a736a28ad', 3, '#Dashen Super App; Super easy to use, secure, and fast transaction. Love it!', 5,
                    TO_DATE('2025-02-07', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Transaction Performance', 'User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f1f64244-c9b5-4cbe-9844-7d101beed08c', 3, 'I tried the new Dash Bank Super App today, and it''s amazingly easy and fun.I recommend you download and use it. You really like it', 5,
                    TO_DATE('2025-02-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f41b6dcb-0e54-468a-bba2-f5db6c7cb66d', 3, 'Gud app kegza ga mezmn endze new aind ermjh kedme nachu hlam', 5,
                    TO_DATE('2025-02-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9852,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'da386798-3db3-4e83-96b1-1444618f9e9b', 3, 'Good app, bad security', 3,
                    TO_DATE('2025-02-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9893,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ede1dfcb-1c62-403f-8d8c-0cebc9f600ca', 3, 'On Transaction page only show sent Transaction. Try to include received transaction.', 4,
                    TO_DATE('2025-02-06', 'YYYY-MM-DD'), 'POSITIVE', 0.9957,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ee6b6f72-3d6a-463d-97e5-e187c3d333b7', 3, 'Wonderful Application 😍', 5,
                    TO_DATE('2025-02-05', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6d543e34-b5a0-4314-b1ef-53a6d6e8ad36', 3, 'አሁን ገና አንድ እርምጃ ቀደማችው', 5,
                    TO_DATE('2025-02-04', 'YYYY-MM-DD'), 'POSITIVE', 0.8832,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd1c22383-7e9c-4130-923f-b69817109b3b', 3, 'I am so thankful for having this best app Dashen one step ahead', 5,
                    TO_DATE('2025-02-04', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ea5aac1f-644e-4166-86d6-d8a144d5ad77', 3, 'Not good this app', 1,
                    TO_DATE('2025-02-04', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6b838917-bb83-44e6-8ebf-c052a041d168', 3, 'Excellent app ever but it needs improvement on speed and transaction lists', 1,
                    TO_DATE('2025-02-03', 'YYYY-MM-DD'), 'NEGATIVE', 0.9909,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5bd1a772-544e-4524-a5bc-aa7b5d86f3fd', 3, 'It does not work functional ,', 1,
                    TO_DATE('2025-02-02', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '030ff419-ef33-4724-afcc-3ca530dab0f5', 3, 'all of dashen bank customers use the application it is good to use', 5,
                    TO_DATE('2025-02-01', 'YYYY-MM-DD'), 'POSITIVE', 0.9958,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8c56744b-4478-46fa-a17f-6159bb931a78', 3, 'Gret experience', 5,
                    TO_DATE('2025-02-01', 'YYYY-MM-DD'), 'POSITIVE', 0.76,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'faee3a15-6fa8-46e8-9196-55a9a99e7a7e', 3, 'All good we need more', 3,
                    TO_DATE('2025-01-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e6ac68ac-bbdb-43ec-9987-081c36a2ca8a', 3, 'Dashen super app is easy to use, fast and robust', 5,
                    TO_DATE('2025-01-31', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '173957b9-fba2-4a7e-b9bc-ec34bbe0b52a', 3, 'it was amazing app.....thank you dashen bank....', 5,
                    TO_DATE('2025-01-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd2f0062a-2be2-4fac-81d9-f9dd2a8f9a27', 3, 'Dashen bank super app for easy life.', 5,
                    TO_DATE('2025-01-30', 'YYYY-MM-DD'), 'POSITIVE', 0.7723,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b7ba023c-3a56-4fa5-8f30-8fcce982b8ef', 3, 'Excellent UI/UX and beyond Banking services👍👍', 5,
                    TO_DATE('2025-01-30', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '88f31adb-275f-4f6c-90d1-94bbdbebe22b', 3, 'Send to oher bank የሚለዉ ዉስጥ ገብተን ወደ addisinternational bank ለመላክ አይሰራም ሁለተኛ ደግሞ ወደ cbe birr ለመላክ account number ይጠይቃል ሞባይል ነበር ነዉ መጠየቅ ያለበት ይመስለኛል', 2,
                    TO_DATE('2025-01-29', 'YYYY-MM-DD'), 'NEGATIVE', 0.9946,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cf843f50-d9bc-4542-a69d-da3620c76fa5', 3, 'mobile banking to the next level', 5,
                    TO_DATE('2025-01-28', 'YYYY-MM-DD'), 'POSITIVE', 0.941,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '567e36a0-fcd9-486a-88aa-11f24f5b1af0', 3, 'The first 3 star review is me', 3,
                    TO_DATE('2025-01-25', 'YYYY-MM-DD'), 'POSITIVE', 0.9968,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd7b6c9eb-fb71-4fb5-bd27-0d4387aea517', 3, 'Is not working', 1,
                    TO_DATE('2025-01-25', 'YYYY-MM-DD'), 'NEGATIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ed4347fd-ddc7-401d-91ae-5fdd82dcf218', 3, 'Fast, reliable and user friendly. Amazing chatting features. Keep it up! Always one step ahead!', 5,
                    TO_DATE('2025-01-24', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9b75d0d7-9840-4c6c-bf0f-5d0816e7644c', 3, 'This app is literally the best thing ever The chat banking is so easy just text and it’s done Super smooth, fast, and honestly a life saverIf you haven’t downloaded it yet you’re missing out big time', 5,
                    TO_DATE('2025-01-23', 'YYYY-MM-DD'), 'POSITIVE', 0.9862,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ee7cd878-3cf8-41b7-b8e9-e30c5db69704', 3, 'I only see white page', 2,
                    TO_DATE('2025-01-23', 'YYYY-MM-DD'), 'NEGATIVE', 0.991,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '143ca385-df65-48dc-8339-c870d3fce650', 3, 'Excellent banking app for all your needs! Who needs a physical branch when you can use Dashen Bank Super App Instead! I''ve never had an issue with anything that Dashen Bank Super App haven''t handled swiftly and resolved to my satisfaction and above I don''t often write reviews but this is an app/bank that I would highly recommended to everyone 💯 👌👍', 5,
                    TO_DATE('2025-01-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9994,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '79d870fa-d006-4188-ae49-45760269ecb6', 3, 'Amizing Application 😍', 5,
                    TO_DATE('2025-01-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9905,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '4497c57a-d9e7-4447-87d8-37a117332356', 3, 'Fastest and easy to use', 5,
                    TO_DATE('2025-01-22', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0a6d9811-4c0c-4ac6-9533-0f71215e1a9e', 3, 'Exellent app with exellent banking system and exellent bank ever', 5,
                    TO_DATE('2025-01-21', 'YYYY-MM-DD'), 'POSITIVE', 0.958,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '513a636f-9b72-4092-bae7-33352916e8e5', 3, 'Amazing app to use as usual! But why option of transferring to Telebirr and M pesa which was available on Amole app is omitted?? Dasheen is my favourite keep it up.', 4,
                    TO_DATE('2025-01-20', 'YYYY-MM-DD'), 'POSITIVE', 0.9712,
                    '['Transaction Performance', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '495ede3b-26fc-497e-8409-7717affaf3f6', 3, 'Needs some improvement', 5,
                    TO_DATE('2025-01-20', 'YYYY-MM-DD'), 'POSITIVE', 0.998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0c12111e-1b8a-461f-966b-125e58c6075e', 3, 'Amazing super app', 5,
                    TO_DATE('2025-01-19', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '80794c1d-2e9b-4fdf-88e6-c4bee65e5f94', 3, 'I hope it will be better than amole', 5,
                    TO_DATE('2025-01-18', 'YYYY-MM-DD'), 'POSITIVE', 0.997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '33c317d1-6366-4c33-ab00-e35488a26e2a', 3, 'Wly Super App ilove it ❤️ 😍 💖 💕', 5,
                    TO_DATE('2025-01-18', 'YYYY-MM-DD'), 'POSITIVE', 0.9464,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c24e4faf-305a-47b2-bf62-94319d984e61', 3, 'Dashen yichalal. Ewnetem one step a head', 5,
                    TO_DATE('2025-01-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9833,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '40cc8813-3573-4cc3-bbba-3cd722362717', 3, 'It has a Good performance but need more upgrade for more performance like when we login account not be fast balance show other thing looking good. Carry on. Thanks so much for Greatest service', 4,
                    TO_DATE('2025-01-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9968,
                    '['Account Access', 'Customer Support', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '42006315-95d0-4ccb-9a5c-a7ac1053d977', 3, 'It is a very wonderful work that has saved its time. That is why it is "Always one step ahead!"', 5,
                    TO_DATE('2025-01-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b969925e-d6eb-4620-9bb2-6a7868cc4d57', 3, '“Life-changing!” I can’t imagine going back to traditional banking after using this app. It’s so convenient.', 5,
                    TO_DATE('2025-01-17', 'YYYY-MM-DD'), 'POSITIVE', 0.9968,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '21885f99-6abd-43d1-8bda-9b9c135a01ed', 3, 'The most good app and easy', 5,
                    TO_DATE('2025-01-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '6653632f-1bf6-4a52-8cf4-40b9d21e88f2', 3, 'Excellent and user friendly App. Excellence is what makes you always one step ahead. Dashen Bank, Always One Step Ahead !!', 5,
                    TO_DATE('2025-01-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '2a6d4b63-244e-4615-a272-6edd9860e6fb', 3, 'Proud to be dashen family . Shout out to the serial entrepreneur 👏', 5,
                    TO_DATE('2025-01-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '3f17acb1-b3a8-44ea-b12f-0875994c0d7d', 3, 'Excellent app.', 5,
                    TO_DATE('2025-01-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ad65cb66-1fe6-451f-bb15-a2fe1bcadd15', 3, 'First ATM in East africa ⭐️⭐️⭐️⭐️⭐️', 5,
                    TO_DATE('2025-01-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9875,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0883eae9-8a3c-4c12-9c99-ce6945b4538b', 3, 'Better Move to catch the competition up👍', 5,
                    TO_DATE('2025-01-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9915,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '8f9c201f-2c2d-4e40-a5ff-adeca0d1f040', 3, 'Great job my home, my bank.', 5,
                    TO_DATE('2025-01-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '90d2468b-101a-4006-ae49-d07185b49594', 3, 'Always one step ahead! What a masterpiece.', 5,
                    TO_DATE('2025-01-16', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b6417689-7817-4d01-9dac-77337118d8a5', 3, 'Great App Well done Dashen Bank', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '5fc203ce-67c5-449e-a0a3-afdc1bb0c04d', 3, 'I love it but it has bugs during confirmation of password! So, please make it functional', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9805,
                    '['Account Access', 'Reliability']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c6e938b5-244e-472c-ade8-811e02984c65', 3, 'Always one step forward', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'de496d31-86a5-4051-b76d-4e91d882f5f5', 3, 'It''s great! But it will be advanced if you include a caption that allow customers to transfer to Telebirr account. Dashen Bank, "ኩሉ ግዜ፡ ሓደ ስጕሚ ቀዳሚ።" (Always one step ahead!)', 4,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Transaction Performance']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7340ad46-01ce-4b28-9d5a-680a7ea387b2', 3, 'Small size with vast features and functionalities.', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9981,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '11dc9c6e-53cc-4396-a152-dca400b39f11', 3, 'Amazing app 👏 👌 Dashen bank one step a head', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9995,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '02f78b78-255a-4e0b-9cca-5be6f627903d', 3, 'It has a great application features from the beginning. I''m glad to use it even I haven''t used it yet because I haven''t activated my account yet. But it''s simple, comprehensive, full of information, and fast. በርቱ ዳሸኖች: The super app has impressed me more than I expected.', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cf0ccbab-5c43-4fe3-99ed-655849b5a2fe', 3, 'Dashen Bank Always One Step Ahead!', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a350ad02-f499-4f8a-bb2a-4c1f887e8b71', 3, 'U can''t create account', 1,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'NEGATIVE', 0.9984,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a83a5e1d-f26b-4fd1-95ec-6c7d151049f0', 3, 'Really super app... so seamless and with a nice user interface .. we are proud of you dashen bank ...', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['User Interface']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'd822baf8-da6c-49f0-896b-8e9bdca59098', 3, 'We will see it', 2,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'NEGATIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'f86b4755-e62d-4f13-86f5-adf5bdf4105a', 3, 'Always one step a head!', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9981,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ce7153a9-77e9-41b8-9b70-ab9e15ef3fca', 3, 'A lightweight,catchy and smooth app', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9987,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '25ffdf6f-8804-4598-b5fc-af32ebbf6ae6', 3, 'Very impressive interface with best security feature and user friendly app.', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['User Interface', 'Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'ac0cc36a-ecb8-4a17-b329-1f66502b5336', 3, 'It is so far so good it has a unique features than telebirr good job Dashen', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Feature Requests']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'af4b6cdd-64dd-4415-8e6a-0bfcf4edb631', 3, 'Yea , it''s a good idea to make it with the bank name, it will help for the bank easily to find the application, and customers can easily downloed and use the product. I wish all the best for Dashen bank initiative.', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.755,
                    '['Customer Support']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '9dca9330-32a2-486a-85f9-287a9dc5cd38', 3, 'This is My Bank!', 5,
                    TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'POSITIVE', 0.9968,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '39ba91c9-38f6-43c0-bccc-62ca70a7edf9', 3, 'Dashen Bank Always One Step Ahead!', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'bdfd757f-9d41-450e-a765-96219cf37841', 3, 'Truly, db => AlwaysOneStepAhead !!', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9989,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '0a694319-1c5e-4541-9a4c-048c16dcbf4f', 3, 'ALWAYS ONE STEP AHEAD', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'c01a3892-e8b5-4405-8687-c4511dc23c4d', 3, 'Well developed', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9999,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'e29fbbc4-6bf3-4ee8-82c7-bec09e75ae63', 3, 'oh nice!!! i wish it''s very nice app', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9996,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '10271bb9-ee08-42d4-9c57-b33258ad1358', 3, 'Really the app looks like amazing. I can''t wait to activate in the morning.', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '89e162a6-9481-4780-9219-e1ff91ca232e', 3, 'Applause 👏 Dashen Bank. One of the best super app inorder to pay easily and securely. One step a head.', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a3c3a7da-4b63-44b1-9440-72256216045d', 3, 'Wow Dashen Super App 🚀🚀', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9979,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7bb4cd6c-66c5-4ac6-bae7-4231c6e67f3d', 3, 'The best Banking app I have ever seen', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '30ebc149-910a-41be-ac92-fd4e9e002fd1', 3, 'It looks good and simple to use', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'a3e9f625-d8f9-47bb-aa87-6ddadf35b89e', 3, 'App That makes Difference!', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '871a74e7-f701-4c92-83e1-d6bc659a397d', 3, 'Faster and userfriendly', 5,
                    TO_DATE('2025-01-14', 'YYYY-MM-DD'), 'POSITIVE', 0.9199,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'cad7278a-410d-4eed-805d-d1a942009cc3', 3, 'Waw Great and innovated,user friendly, always one step ahead', 5,
                    TO_DATE('2025-01-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    'b92aaec0-99b9-49ac-ae55-03c04a52aec5', 3, 'It''s Best waww 🙏', 5,
                    TO_DATE('2025-01-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9997,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '7ed6c112-916c-44c2-b0ae-af2ff9d8c58f', 3, 'Always one step ahead', 5,
                    TO_DATE('2025-01-13', 'YYYY-MM-DD'), 'POSITIVE', 0.9998,
                    '['Other']', 'Google Play'
                );
INSERT INTO Reviews (
                    review_id, bank_id, review_text, rating, review_date,
                    sentiment_label, sentiment_score, themes, source
                ) VALUES (
                    '60f2b9c0-9fc9-49d9-97c8-7c1f9aca05fe', 3, 'Like Me, I Hope It Works Better Than Before.', 5,
                    TO_DATE('2025-01-11', 'YYYY-MM-DD'), 'POSITIVE', 0.9987,
                    '['Other']', 'Google Play'
                );
COMMIT;

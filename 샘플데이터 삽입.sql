INSERT INTO MEMBER (MEM_NO, MEM_ID, MEM_PWD, MEM_NAME, MEM_BD, MEM_GENDER, MEM_EMAIL, MEM_PHONE, PREF_GENRE, NICKNAME, MEM_STATUS, SIGNIN_DATE, MEM_LEVEL, MEM_COLOR, MEM_IMGPATH, MEM_FILE)
SELECT 
  SEQ_MEMBER_NO.NEXTVAL,
  'user' || LPAD(ROWNUM, 3, '0'), -- 아이디를 'user001', 'user002', ... 형식으로 생성
  'password' || LPAD(ROWNUM, 3, '0'), -- 패스워드를 'password001', 'password002', ... 형식으로 생성
  'Name' || LPAD(ROWNUM, 3, '0'), -- 이름을 'Name001', 'Name002', ... 형식으로 생성
  TO_CHAR(TO_DATE('1980-01-01', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE(1, 15000), 'YYYY-MM-DD'), -- 랜덤한 생년월일 생성
  CASE WHEN MOD(ROWNUM, 2) = 0 THEN 'M' ELSE 'F' END, -- 랜덤한 성별 생성
  'user' || LPAD(ROWNUM, 3, '0') || '@example.com', -- 이메일 생성
  '1234567890', -- 랜덤한 전화번호 생성
  CASE WHEN MOD(ROWNUM, 3) = 0 THEN 'Action' WHEN MOD(ROWNUM, 3) = 1 THEN 'Comedy' ELSE 'Drama' END, -- 랜덤한 선호장르 생성
  'Nickname' || LPAD(ROWNUM, 3, '0'), -- 닉네임을 'Nickname001', 'Nickname002', ... 형식으로 생성
  CASE WHEN MOD(ROWNUM, 2) = 0 THEN 'Y' ELSE 'N' END, -- 랜덤한 회원상태 생성
  SYSDATE - DBMS_RANDOM.VALUE(1, 365), -- 랜덤한 회원정보수정일 생성
  CASE WHEN ROWNUM <= 5 THEN 1 WHEN ROWNUM <= 15 THEN 2 ELSE 3 END, -- 회원등급을 1, 2, 3 중에서 랜덤하게 생성
  '#FFFFFF', -- 기본 회원정보색깔
  'resources/xxxx/xxxxx.jpg', -- 기본 회원정보 이미지 경로
  NULL -- NULL 값으로 MEM_FILE 생성
FROM 
  DUAL
CONNECT BY 
  LEVEL <= 30;
  
-- MEMBER 샘플데이터 삽입 끝

INSERT INTO ADMIN (ADMIN_NO, ADMIN_ID, ADMIN_PWD, ADMIN_NAME, ADMIN_PHONE, ADMIN_STATUS)
SELECT 
  SEQ_ADMIN_NO.NEXTVAL,
  'admin' || LPAD(ROWNUM, 2, '0'), -- 관리자 아이디를 'admin01', 'admin02', ... 형식으로 생성
  'password' || LPAD(ROWNUM, 2, '0'), -- 관리자 패스워드를 'password01', 'password02', ... 형식으로 생성
  'AdminName' || LPAD(ROWNUM, 2, '0'), -- 관리자 이름을 'AdminName01', 'AdminName02', ... 형식으로 생성
  '1234567890', -- 랜덤한 전화번호 생성
  CASE WHEN MOD(ROWNUM, 2) = 0 THEN 'Y' ELSE 'N' END -- 랜덤한 활성화 상태 생성
FROM 
  DUAL
CONNECT BY 
  LEVEL <= 5;
  
  -- ADMIN 샘플 데이터 삽입 끝
  
INSERT INTO BOARD (B_NO, B_TITLE, B_CONTENT, B_REGIST_DATE, B_READ_COUNT, B_RECOMMEND_COUNT, B_CATEGORY, B_B_STATUS, B_D_STATUS, MEM_NO)
SELECT 
  SEQ_BOARD_NO.NEXTVAL,
  'Title' || LPAD(ROWNUM, 2, '0'), -- 게시글 제목을 'Title01', 'Title02', ... 형식으로 생성
  'Content' || LPAD(ROWNUM, 2, '0'), -- 게시글 내용을 'Content01', 'Content02', ... 형식으로 생성
  SYSDATE - DBMS_RANDOM.VALUE(1, 365), -- 랜덤한 작성일 생성
  0, -- 초기 조회수를 0으로 설정
  0, -- 초기 추천수를 0으로 설정
  CASE WHEN MOD(ROWNUM, 2) = 0 THEN '1' ELSE '2' END, -- 영화(1) 또는 잡담(2) 카테고리를 랜덤하게 생성
  'N', -- B_B_STATUS의 기본값 'N' 사용
  'N', -- B_D_STATUS의 기본값 'N' 사용
  MOD(ROWNUM, 30) + 1 -- 1부터 30까지의 숫자를 순환하여 MEM_NO 생성
FROM 
  DUAL
CONNECT BY 
  LEVEL <= 30;
  
  -- BOARD 샘플 데이터 삽입 끝
  
  -- 15개의 샘플 데이터 삽입
INSERT INTO CATEGORY (CATEGORY_NO, CATEGORY_NAME, CATEGORY_DATE, CATEGORY_STATUS)
SELECT 
  SEQ_CATEGORY_NO.NEXTVAL,
  CASE 
    WHEN ROWNUM = 1 THEN '액션'
    WHEN ROWNUM = 2 THEN '코미디'
    WHEN ROWNUM = 3 THEN '로맨스'
    WHEN ROWNUM = 4 THEN '스릴러'
    WHEN ROWNUM = 5 THEN '공포'
    WHEN ROWNUM = 6 THEN '판타지'
    WHEN ROWNUM = 7 THEN '어드벤처'
    WHEN ROWNUM = 8 THEN '드라마'
    WHEN ROWNUM = 9 THEN '애니메이션'
    WHEN ROWNUM = 10 THEN 'SF'
    WHEN ROWNUM = 11 THEN '범죄'
    WHEN ROWNUM = 12 THEN '모험'
    WHEN ROWNUM = 13 THEN '다큐멘터리'
    WHEN ROWNUM = 14 THEN '가족'
    WHEN ROWNUM = 15 THEN '뮤지컬'
  END,
  SYSDATE - DBMS_RANDOM.VALUE(1, 365), -- 랜덤한 등록일 생성
  'Y' -- 장르 상태를 기본값 'Y'로 설정
FROM 
  DUAL
CONNECT BY 
  LEVEL <= 15;
-- CATEGORY 샘플 데이터 삽입 끝

-- 30개의 샘플 데이터 삽입
INSERT INTO NOTICE (NOTICE_NO, NOTICE_CATEGORY, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_READ_COUNT, ADMIN_NO, NOTICE_STATUS)
SELECT 
  SEQ_NOTICE_NO.NEXTVAL,
  CASE WHEN ROWNUM <= 15 THEN '1' ELSE '2' END, -- 일반(1) 또는 이벤트(2) 카테고리를 랜덤하게 생성
  'Title' || LPAD(ROWNUM, 2, '0'), -- 공지사항 제목을 'Title01', 'Title02', ... 형식으로 생성
  'Content' || LPAD(ROWNUM, 2, '0'), -- 공지사항 내용을 'Content01', 'Content02', ... 형식으로 생성
  SYSDATE - DBMS_RANDOM.VALUE(1, 365), -- 랜덤한 작성일 생성
  0, -- 초기 조회수를 0으로 설정
  MOD(ROWNUM, 5) + 1, -- 1부터 5까지의 숫자를 순환하여 ADMIN_NO 생성
  'Y' -- 공지사항 상태를 기본값 'Y'로 설정
FROM 
  DUAL
CONNECT BY 
  LEVEL <= 30;
  -- NOTICE 샘플 데이터 삽입 끝
  
  INSERT INTO REPLY (REPLY_NO, REPLY_CONTENT, ENROLL_DATE, REPLY_B_STATUS, REPLY_D_STATUS, BOARD_NO, MEM_NO)
SELECT 
  SEQ_REPLY_NO.NEXTVAL,
  'Content' || LPAD(ROWNUM, 2, '0'), -- 댓글 내용을 'Content01', 'Content02', ... 형식으로 생성
  SYSDATE - DBMS_RANDOM.VALUE(1, 365), -- 랜덤한 작성일 생성
  CASE WHEN ROWNUM <= 10 THEN 'Y' ELSE 'N' END, -- 처음 10개의 데이터는 'Y', 나머지는 'N'으로 REPLY_B_STATUS 설정
  CASE WHEN ROWNUM <= 10 THEN 'Y' ELSE 'N' END, -- 처음 10개의 데이터는 'Y', 나머지는 'N'으로 REPLY_D_STATUS 설정
  MOD(ROWNUM, 30) + 1, -- 1부터 30까지의 숫자를 순환하여 BOARD_NO 생성
  MOD(ROWNUM, 30) + 1 -- 1부터 30까지의 숫자를 순환하여 MEM_NO 생성
FROM 
  DUAL
CONNECT BY 
  LEVEL <= 120;
  -- REPLY 샘플 데이터 삽입 끝
  
  
  
-- MOVIE

--수민  
INSERT INTO MOVIE
    VALUES(SEQ_MOVIE_NO.NEXTVAL
                ,  '범죄도시2'
                , '2022-05-18'
                , '1'
                , '106분'
                , '금천서 강력반은 베트남으로 도주한 용의자를 인도받아 오라는 임무를 받고 베트남에 갔다가 수년간 관광객을 노린 살인범을 발견한다.'
                , DEFAULT
                , '15세 이상'
                , 'N'
                , DEFAULT
                , 11
                , 12
                , DEFAULT
                , DEFAULT);
                
--------------------
INSERT INTO MOVIE
    VALUES(SEQ_MOVIE_NO.NEXTVAL
                ,  '한산: 용의 출현'
                , '2022-07-27'
                , '1'
                , '130분'
                , '명량대첩이 일어나기 5년 전인 1592년 7월 8일, 조선의 앞날은 여전히 풍전등화이다. 위기에 빠진 조국을 위한 이순신 장군의 진두지휘로 한산도 앞바다에서 조선 수군의 전략과 패기가 더해진 한산해전이 벌어진다.'
                , DEFAULT
                , '12세 이상'
                , 'N'
                , DEFAULT
                , 13
                , 14
                , DEFAULT
                , DEFAULT);
                
-------------

INSERT INTO MOVIE
    VALUES(SEQ_MOVIE_NO.NEXTVAL
                ,  '공조2: 인터내셔날'
                , '2022-09-07'
                , '1'
                , '129분'
                , '남한 형사 강진태와 북한 형사 림철령이 새로운 임무를 위해 다시 한번 뭉친다. 여기에 미국 FBI 잭이 끼어들며 각자의 목적을 이루기 위한 남북미 형사들의 삼각 공조가 펼쳐진다.'
                , DEFAULT
                , '15세 이상'
                , 'N'
                , DEFAULT
                , 15
                , 16
                , DEFAULT
                , DEFAULT);
                
        
-----------
INSERT INTO MOVIE
    VALUES(SEQ_MOVIE_NO.NEXTVAL
                ,  '헌트'
                , '2022-08-10'
                , '1'
                , '125분'
                , '박평호와 김정도는 북한 간첩 동림을 찾아내는 임무를 맡는다. 그러나 일급 기밀이 유출되어 조직 내 스파이가 있음을 알게 되고, 서로를 의심하며 추적하던 중 숨겨진 진실과 마주한다.'
                , DEFAULT
                , '15세 이상'
                , 'N'
                , DEFAULT
                , 17
                , 18
                , DEFAULT
                , DEFAULT);
                
                
-----------

INSERT INTO MOVIE
    VALUES(SEQ_MOVIE_NO.NEXTVAL
                ,  '올빼미'
                , '2022-11-23'
                , '1'
                , '118분'
                , '맹인임에도 뛰어난 침술 실력을 인정받은 경수는 궁에 들어가게 된다. 그러던 어느 날, 그는 어둠 속에서 희미하게 소현세자의 충격적인 죽음을 목격한다.'
                , DEFAULT
                , '15세 이상'
                , 'N'
                , DEFAULT
                , 19
                , 20
                , DEFAULT
                , DEFAULT);
            
------------------------ 김지우 ------------------------ 
INSERT INTO MOVIE VALUES(SEQ_MOVIE_NO.NEXTVAL, '파묘', '2024/02/22', 1, '134분', '미국 LA, 거액의 의뢰를 받은 무당 ‘화림’(김고은)과 ‘봉길’(이도현)은 기이한 병이 대물림되는 집안의 장손을 만난다. 조상의 묫자리가 화근임을 알아챈 ‘화림’은 이장을 권하고, 돈 냄새를 맡은 최고의 풍수사 ‘상덕’(최민식)과 장의사 ‘영근’(유해진)이 합류한다. “전부 잘 알 거야… 묘 하나 잘못 건들면 어떻게 되는지” 절대 사람이 묻힐 수 없는 악지에 자리한 기이한 묘. ‘상덕’은 불길한 기운을 느끼고 제안을 거절하지만, ‘화림’의 설득으로 결국 파묘가 시작되고… 나와서는 안될 것이 나왔다.', DEFAULT, '15세 이상', 'Y', DEFAULT, 1, 2, DEFAULT, DEFAULT);

INSERT INTO MOVIE VALUES(SEQ_MOVIE_NO.NEXTVAL, '스즈메의 문단속', '2024/01/10', 2, '122분', '한 소녀가 우연히 만난 청년과 재난의 문을 닫는 모험에 뛰어들게 되는 이야기를 다룬 애니메이션 영화', DEFAULT, '12세 이상', 'N', DEFAULT, 3, 4, DEFAULT, DEFAULT);

INSERT INTO MOVIE VALUES(SEQ_MOVIE_NO.NEXTVAL, '대외비', '2023/03/01', 1, '116분', '1992년 부산, 만년 국회의원 후보 해웅과 정치판의 숨은 실세 순태, 행동파 조폭 필도가 대한민국을 뒤흔들 비밀 문서를 손에 쥐고 판을 뒤집기 위한 치열한 쟁탈전을 벌이는 범죄드라마', DEFAULT, '15세 이상', 'N', DEFAULT, 5, 6, DEFAULT, DEFAULT);

INSERT INTO MOVIE VALUES(SEQ_MOVIE_NO.NEXTVAL, '서울의 봄', '2023/11/22', 1, '141분', '1979년 12월 12일, 수도 서울 군사반란 발생 그날, 대한민국의 운명이 바뀌었다 대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시 12월 12일, 보안사령관 전두광이 반란을 일으키고 군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다. 권력에 눈이 먼 전두광의 반란군과 이에 맞선 수도경비사령관 이태신을 비롯한 진압군 사이, 일촉즉발의 9시간이 흘러가는데… 목숨을 건 두 세력의 팽팽한 대립 오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!', DEFAULT, '12세 이상', 'N', DEFAULT, 7, 8, DEFAULT, DEFAULT);

INSERT INTO MOVIE VALUES(SEQ_MOVIE_NO.NEXTVAL, '범죄도시3', '2023/05/31', 1, '105분', '대체불가 괴물형사 마석도, 서울 광수대로 발탁! 베트남 납치 살해범 검거 후 7년 뒤, ‘마석도’(마동석)는 새로운 팀원들과 함께 살인사건을 조사한다. 사건 조사 중, ‘마석도’는 신종 마약 사건이 연루되었음을 알게 되고 수사를 확대한다. 한편, 마약 사건의 배후인 주성철(이준혁)은 계속해서 판을 키워가고 약을 유통하던 일본 조직과 리키(아오키 무네타카)까지 한국에 들어오며 사건의 규모는 점점 더 커져가는데... 나쁜 놈들 잡는 데 이유 없고 제한 없다. 커진 판도 시원하게 싹 쓸어버린다!', DEFAULT, '15세 이상', 'N', DEFAULT, 9, 10, DEFAULT, DEFAULT);
--------------------------------------------------------------------------------------------------------------------------------

------------------------ 김호용 ------------------------ 
INSERT INTO MOVIE (MV_NO, MV_NAME, MV_OPENDATE, MV_NATION, MV_RTIME, MV_STORY, VIEW_RATING, MV_POSTER, MV_PREVIEW) 
VALUES (SEQ_MOVIE_NO.NEXTVAL, '기생충', '2019-05-30', '1', '131분', '전원 백수로 살고 있지만 사이좋은 기택 가족. 장남 기우에게 친구 민혁이 고액 과외를 연결시켜주고 온 가족의 기대를 받으며 기우는 박 사장의 집으로 간다.', '15세 이상', 41, 42);

INSERT INTO MOVIE (MV_NO, MV_NAME, MV_OPENDATE, MV_NATION, MV_RTIME, MV_STORY, VIEW_RATING, MV_POSTER, MV_PREVIEW) 
VALUES (SEQ_MOVIE_NO.NEXTVAL, '조커', '2019-10-01', '2', '123분', '고담시의 광대 아서 플렉은 코미디언을 꿈꾸고 있다. 그는 서서히 그가 맨 정신으로는 코미디언이 될 수 없다는 사실을 깨닫기 시작한다.', '15세 이상', 43, 44);

INSERT INTO MOVIE (MV_NO, MV_NAME, MV_OPENDATE, MV_NATION, MV_RTIME, MV_STORY, VIEW_RATING, MV_POSTER, MV_PREVIEW) 
VALUES (SEQ_MOVIE_NO.NEXTVAL, '어벤져스: 엔드게임', '2019-04-24', '2', '182분', '인피니티 워 이후 절반만 살아남은 지구. 살아남은 어벤져스 멤버들은 타노스에게 반격하기 위해 계획을 세운다.', '12세 이상', 45, 46);

INSERT INTO MOVIE (MV_NO, MV_NAME, MV_OPENDATE, MV_NATION, MV_RTIME, MV_STORY, VIEW_RATING, MV_POSTER, MV_PREVIEW) 
VALUES (SEQ_MOVIE_NO.NEXTVAL, '나이브스 아웃', '2019-12-04', '2', '130분', '베스트셀러 작가 할런이 85세 생일날 숨진 채 발견된다. 그의 죽음의 원인을 밝히기 위해 경찰과 탐정 브누아 블랑은 수사에 나서고, 가족 전체가 용의선상에 오른다.', '12세 이상', 47, 48);

INSERT INTO MOVIE (MV_NO, MV_NAME, MV_OPENDATE, MV_NATION, MV_RTIME, MV_STORY, VIEW_RATING, MV_POSTER, MV_PREVIEW) 
VALUES (SEQ_MOVIE_NO.NEXTVAL, '겨울왕국 2', '2019-11-21', '2', '103분', '의문의 목소리가 엘사를 부르고, 아렌델 왕국에 위기가 찾아온다. 트롤은 엘사의 힘의 비밀과 진실을 찾아야 한다고 하고, 엘사와 안나는 여행을 떠난다.', '전체관람가', 49, 50);







--------파일 추가--------
-------수민--------
-----MOVIE_FILE_MP4
INSERT INTO ATTACHMENT
        VALUES(SEQ_ATTACHMENT_NO.NEXTVAL
                    , '범죄도시2_예고편_12.mp4'
                    , '20240318103404_75346.mp4'
                    , DEFAULT
                    , 2
                    , 'resources/upfiles/'
                    , 1
                    , DEFAULT
                    , 2
                    , 6);
--             
INSERT INTO ATTACHMENT
        VALUES(SEQ_ATTACHMENT_NO.NEXTVAL
                    , '한산_예고편_14.mp4'
                    , '20240218103403_75346.mp4'
                    , DEFAULT
                    , 2
                    , 'resources/upfiles/'
                    , 1
                    , DEFAULT
                    , 2
                    , 7);
                    
--
INSERT INTO ATTACHMENT
        VALUES(SEQ_ATTACHMENT_NO.NEXTVAL
                    , '공조2_예고편_16.mp4'
                    , '20240118103402_75346.mp4'
                    , DEFAULT
                    , 2
                    , 'resources/upfiles/'
                    , 1
                    , DEFAULT
                    , 2
                    , 8);
                    
--
INSERT INTO ATTACHMENT
        VALUES(SEQ_ATTACHMENT_NO.NEXTVAL
                    , '헌트_예고편_18.mp4'
                    , '20240128103401_75348.mp4'
                    , DEFAULT
                    , 2
                    , 'resources/upfiles/'
                    , 1
                    , DEFAULT
                    , 2
                    , 9);
                    
--
INSERT INTO ATTACHMENT
        VALUES(SEQ_ATTACHMENT_NO.NEXTVAL
                    , '올빼미_예고편_20.mp4'
                    , '20240308103401_75356.mp4'
                    , DEFAULT
                    , 2
                    , 'resources/upfiles/'
                    , 1
                    , DEFAULT
                    , 2
                    , 10);
                    
-----MOVIE_FILE_POSTER
INSERT INTO ATTACHMENT
        VALUES(SEQ_ATTACHMENT_NO.NEXTVAL
                    , '범죄도시2_11.png'
                    , '20240318103401_75346.png'
                    , DEFAULT
                    , 1
                    , 'resources/upfiles/'
                    , 1
                    , DEFAULT
                    , 1
                    , 6);
--             
INSERT INTO ATTACHMENT
        VALUES(SEQ_ATTACHMENT_NO.NEXTVAL
                    , '한산_13.png'
                    , '20240218103401_75346.png'
                    , DEFAULT
                    , 1
                    , 'resources/upfiles/'
                    , 1
                    , DEFAULT
                    , 1
                    , 7);
                    
--
INSERT INTO ATTACHMENT
        VALUES(SEQ_ATTACHMENT_NO.NEXTVAL
                    , '공조2_15.png'
                    , '20240118103401_75346.png'
                    , DEFAULT
                    , 1
                    , 'resources/upfiles/'
                    , 1
                    , DEFAULT
                    , 1
                    , 8);
                    
--
INSERT INTO ATTACHMENT
        VALUES(SEQ_ATTACHMENT_NO.NEXTVAL
                    , '헌트_17.png'
                    , '20240128103401_75346.png'
                    , DEFAULT
                    , 1
                    , 'resources/upfiles/'
                    , 1
                    , DEFAULT
                    , 1
                    , 9);
                    
--
INSERT INTO ATTACHMENT
        VALUES(SEQ_ATTACHMENT_NO.NEXTVAL
                    , '올빼미_19.png'
                    , '20240308103401_75346.png'
                    , DEFAULT
                    , 1
                    , 'resources/upfiles/'
                    , 1
                    , DEFAULT
                    , 1
                    , 10);
-------------------------------------------------- 김지우 ---------------------------------------------------
INSERT INTO ATTACHMENT VALUES(SEQ_ATTACHMENT_NO.NEXTVAL, '파묘.png', '20240318103838_91929', SYSDATE, 1, 'resources/upfiles/', 1, DEFAULT, 1, 1);
INSERT INTO ATTACHMENT VALUES(SEQ_ATTACHMENT_NO.NEXTVAL, '파묘 예고편.mp4', '20240318104140_63098', SYSDATE, 2, 'resources/upfiles/', 1, DEFAULT, 2, 1);

INSERT INTO ATTACHMENT VALUES(SEQ_ATTACHMENT_NO.NEXTVAL, '스즈메의문단속.png', '20240318104334_13872', SYSDATE, 1, 'resources/upfiles/', 1, DEFAULT, 1, 2);
INSERT INTO ATTACHMENT VALUES(SEQ_ATTACHMENT_NO.NEXTVAL, '스즈메의 문단속 예고편.mp4', '20240318104441_38300', SYSDATE, 2, 'resources/upfiles/', 1, DEFAULT, 2, 2);

INSERT INTO ATTACHMENT VALUES(SEQ_ATTACHMENT_NO.NEXTVAL, '대외비.png', '20240318104522_63626', SYSDATE, 1, 'resources/upfiles/', 1, DEFAULT, 1, 3);
INSERT INTO ATTACHMENT VALUES(SEQ_ATTACHMENT_NO.NEXTVAL, '대외비 예고편.mp4', '20240318104633_46273', SYSDATE, 2, 'resources/upfiles/', 1, DEFAULT, 2, 3);

INSERT INTO ATTACHMENT VALUES(SEQ_ATTACHMENT_NO.NEXTVAL, '서울의봄.png', '20240318104722_50221', SYSDATE, 1, 'resources/upfiles/', 1, DEFAULT, 1, 4);
INSERT INTO ATTACHMENT VALUES(SEQ_ATTACHMENT_NO.NEXTVAL, '서울의봄 예고편.mp4', '20240318104745_76619', SYSDATE, 2, 'resources/upfiles/', 1, DEFAULT, 2, 4);

INSERT INTO ATTACHMENT VALUES(SEQ_ATTACHMENT_NO.NEXTVAL, '범죄도시3.png', '20240318104801_78030', SYSDATE, 1, 'resources/upfiles/', 1, DEFAULT, 1, 5);
INSERT INTO ATTACHMENT VALUES(SEQ_ATTACHMENT_NO.NEXTVAL, '범죄도시3 예고편.mp4', '20240318104819_65085', SYSDATE, 2, 'resources/upfiles/', 1, DEFAULT, 2, 5);

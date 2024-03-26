--관리자 테이블(관리자ID, 이름, 권한 등)
--회원 테이블(회원ID, 이름, 연락처, 결제정보 등)
--시설 테이블(시설ID, 위치, 시설정보 등)
--예약 테이블(예약ID, 회원ID, 시설ID, 예약일시, 대여기간)

/* 
TABLE MEMBER
유저번호, 아이디, 패스워드 이름, 관리자(BOOLEAN), 연락처, 생성시간

TABLE 시설 FACILITY
시설번호, 시설이름, 시설위치, 생성일

TABLE 예약 Reservation
예약번호, 회원아이디, 시설아이디, 예약일, 대여기간

TABLE 후기 REVIEW


이용 여부 처음에는 NULL 값으로 갖고 있다가
이용 완료하면 트리거로 불린값 전달
*/

SELECT * FROM R_FAC;
DESC R_USER;


----------------------------------------------------------------------
ALTER TABLE R_USER ADD CONSTRAINT R_USER_UNIQUE UNIQUE(USERID);

ALTER TABLE R_RES
ADD CONSTRAINT USER_ID_FK
FOREIGN KEY (USERID) REFERENCES R_USER(USERID);
----------------------------------------------------------------------

ALTER TABLE R_RES ADD CONSTRAINT R_FAC_UNIQUE UNIQUE(FACNAME);

ALTER TABLE R_FAC
ADD CONSTRAINT FAC_FK
FOREIGN KEY (FACNO) REFERENCES R_RES(FACNAME);

----------------------------------------------------------------------
ALTER TABLE R_REVIEW ADD CONSTRAINT R_REVIEW_UNIQUE UNIQUE(FACNAME);

ALTER TABLE R_FAC
ADD CONSTRAINT FAC_REVIEW_FK
FOREIGN KEY (FACNAME) REFERENCES R_REVIEW(FACNAME);
-------------
ALTER TABLE R_REVIEW 
ADD CONSTRAINT REVIEW_USER_FK FOREIGN KEY (USERID) REFERENCES R_USER(USERID);
-------------------


SELECT * FROM r_user;
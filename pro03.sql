--테이블 생성
CREATE TABLE notice(
	NO INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200),
	content VARCHAR(1500),
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
	);

create table user(
	id varchar(20) primary key,
	pw varchar(200),
	name varchar(30) not null,
	tel varchar(13) not null,
	address varchar (200) not null,
	mail varchar (100)
);


--user 데이터
insert into user values ("jin","1234","진석","010-1111-2222","김포","a123@naver.com");
--게시판 데이터
INSERT INTO notice(title, content) VALUES ("테스트1", "테스트1내용");

--테이블 조회
select *from user;
SELECT * FROM notice;


--테이블 삭제
drop table user;


DESC notice;



COMMIT;
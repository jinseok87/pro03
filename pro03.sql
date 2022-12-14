USE goverment;

CREATE TABLE notice(
	no INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200),
	content VARCHAR(1000),
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
);

DESC notice;

INSERT INTO notice(title, content) VALUES ("테스트 글1", "테스트 글2 내용입니다.");

COMMIT;

SELECT * FROM notice;

CREATE TABLE USER(
	id VARCHAR(30) PRIMARY KEY,
	pw VARCHAR(300) NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	POINT INT DEFAULT 0,
	grade VARCHAR(4) DEFAULT "F",
	visted INT DEFAULT 1,
	tel VARCHAR(11),
	addr VARCHAR(150),
	email VARCHAR(100),
	birth DATE,
	regdate DATETIME DEFAULT NOW()
);

DROP TABLE USER;
DESC user;

SELECT * FROM USER;
UPDATE user SET grade="A" WHERE id="admin";
COMMIT;

CREATE TABLE pic(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),
	picname VARCHAR(150)
);
ALTER TABLE pic ADD COLUMN pos INT default 1; 
DESC pic;
SELECT * FROM pic;
DELETE FROM pic;

COMMIT;
CREATE TABLE tour(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),	-- 카테고리 타입 - 마지막 레코드의 no+1
	cate VARCHAR(20),
	place VARCHAR(100),
	comment1 VARCHAR(1000),
	comment2 VARCHAR(1000)  
);
DESC tour;
SELECT * FROM tour;

create table review(
	no INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200),
	content VARCHAR(1000),
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
);
select * from review;
drop table review;
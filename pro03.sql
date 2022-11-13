CREATE TABLE notice(
	NO INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200),
	content VARCHAR(1500),
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
	);

	
DESC notice;

INSERT INTO notice(title, content) VALUES ("테스트1", "테스트1내용");


SELECT * FROM notice;

COMMIT;
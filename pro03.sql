


CREATE TABLE notice(
	NO INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200),
	content VARCHAR(1500),
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
	);

	desc notice;
	
	INSERT INTO notice(title,content) VALUES ("테스트글1", "테스트글1");
	
	COMMIT;
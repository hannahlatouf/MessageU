DROP DATABASE IF EXISTS messageU;
CREATE DATABASE messageU;
USE messageU;

CREATE TABLE userAccount
(
userID							INT 			PRIMARY KEY		AUTO_INCREMENT,
userName						VARCHAR(50)		NOT NULL,
password						VARCHAR(50)		NOT NULL
);

CREATE TABLE identityStore
(
userID							INT 			PRIMARY KEY		AUTO_INCREMENT,
hashedPassword					VARCHAR(50)		NOT NULL,
CONSTRAINT identityStore_fk_userAccount
    FOREIGN KEY (userID)
    REFERENCES userAccount (userID)
);
CREATE TABLE contactList
(
contactID							INT 			PRIMARY KEY		AUTO_INCREMENT,
userID								INT				NOT NULL,
userFriendID						INT				NOT	NULL,
CONSTRAINT contactList_fk_userAccount
    FOREIGN KEY (userID)
    REFERENCES userAccount (userID)
);

CREATE TABLE userProfile
(
userID							INT 			PRIMARY KEY		AUTO_INCREMENT,
screenName						VARCHAR(50)		NOT NULL,
userBIO						VARCHAR(500),	
CONSTRAINT userProfile_fk_identityStore
    FOREIGN KEY (userID)
    REFERENCES userAccount (userID)
);



CREATE TABLE chat
(
chatID							INT 			PRIMARY KEY		AUTO_INCREMENT,
chatName						VARCHAR(50)
);

CREATE TABLE message
(
messageID							INT 			PRIMARY KEY		AUTO_INCREMENT,
senderName						VARCHAR(50)		NOT NULL,
message							VARCHAR(500)   	NOT NULL,
senderID							INT			NOT NULL,
chatID								INT			NOT NULL,			
timestamp							DATETIME,
CONSTRAINT message_fk_chat
    FOREIGN KEY (chatID)
    REFERENCES chat (chatID)	
);

CREATE TABLE chatMembers
(
chatMembersID					INT				PRIMARY KEY		AUTO_INCREMENT,
chatID							INT,
userID							INT,
CONSTRAINT chatMembers_fk_chat
    FOREIGN KEY (chatID)
    REFERENCES chat (chatID),
CONSTRAINT chatMembers_fk_userAccount
    FOREIGN KEY (userID)
    REFERENCES userAccount (userID)
);

INSERT INTO userAccount(username, password) VALUES ('firstUser', 'firstPass');
INSERT INTO userAccount(username, password) VALUES ('secondUser', 'secondPass');
INSERT INTO userAccount(username, password) VALUES ('thirdUser', 'thirdPass');
INSERT INTO userProfile(screenName, userBIO) VALUES ('FIRSTUSER', 'I am the first user');
INSERT INTO userProfile(screenName, userBIO) VALUES ('SECONDUSER', 'I am the second user');
INSERT INTO userProfile(screenName, userBIO) VALUES ('THIRDUSER', 'I am the third user');
INSERT INTO chat(chatname) VALUES('The First Chat');
INSERT INTO chat(chatname) VALUES('The Second Chat');
INSERT INTO message(senderName, senderID, chatID, timestamp, message) VALUES('FIRSTUSER','1','1','2021-11-22 12:25:21' ,'I am the first user sending a message in the first chat');
INSERT INTO message(senderName, senderID, chatID, timestamp, message) VALUES('SECONDUSER','2','1','2021-11-22 12:35:25' ,'I am the second user sending a message in the first chat');
INSERT INTO message(senderName, senderID, chatID, timestamp, message) VALUES('FIRSTUSER','1','2','2021-11-22 14:30:54' ,'I am the first user sending a message in the second chat');
INSERT INTO message(senderName, senderID, chatID, timestamp, message) VALUES('SECONDUSER','2','2','2021-11-22 16:45:45' ,'I am the second user sending a message in the second chat');
INSERT INTO message(senderName, senderID, chatID, timestamp, message) VALUES('THIRDUSER','3','2','2021-11-22 16:50:40' ,'I am the third user sending a message in the second chat');

INSERT INTO chatMembers(chatID, userID) VALUES(1 ,1);
INSERT INTO chatMembers(chatID, userID) VALUES(1 ,2);
INSERT INTO chatMembers(chatID, userID) VALUES(2 ,1);
INSERT INTO chatMembers(chatID, userID) VALUES(2 ,2);
INSERT INTO chatMembers(chatID, userID) VALUES(2 ,3);




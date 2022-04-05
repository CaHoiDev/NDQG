-- Phuong:
  CREATE TABLE `User`(
       userId  int auto_increment PRIMARY KEY,
        userName text not null,
        userGender enum('male', 'female','other'),
        userPhone varchar(12),
        userEmail varchar(50)
        );
      
  CREATE TABLE `Address`(
        userId int unique,
        city varchar(20) not null,
        district varchar(20) not null,
        ward varchar(20) not null,
        detail varchar(50) 
        );

   ALTER TABLE `Address`ADD CONSTRAINT fk_Address_userId FOREIGN KEY (userId) REFERENCES `User` (userId);


-- Tien:
CREATE TABLE `order`(
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL
     );
CREATE TABLE orderDetail (
    orderId INT NOT NULL,
    productId   INT NOT NULL 
    );
    
     ALTER TABLE orderDetail ADD FOREIGN KEY (orderId ) REFERENCES `order` (orderId );
     ALTER TABLE `order`  ADD FOREIGN KEY (userId ) REFERENCES user (userId );
---- Dieu: 
    create table comment(
commentId int AUTO_INCREMENT,
productId int not null,
CONSTRAINT fk_product
FOREIGN KEY (productId )
REFERENCES product (productId),
userId int not null,
commentContent text  not null,
timeCmt datetime default now()
);
------- khóa ngoại-------
ALTER TABLE `comment` CONSTRAINT fk_comment
FOREIGN KEY (userId )
REFERENCES `user` (userId);

ALTER TABLE `comment` CONSTRAINT fk_product
FOREIGN KEY (productId )
REFERENCES `product` (productId );
----- khóa chính ------
ALTER TABLE `comment`
ADD CONSTRAINT comment_pk PRIMARY KEY (commentId);
---- insert dữ liệu vào ---- 
Insert into `comment`(commentId,productId,userId,commentContent,timeCmt )
values(1,1,1,'tranh dep lam','2022/04/05'),
(1,1,1,'tranh dep lam nè','2022/04/06');
create table `reply`(
    replyId int AUTO_INCREMENT,
    commentId int not null,
    userId int not null,
    replyContent text not null,
    timeReply datetime default now()
);
----- khóa chính -----
ALTER TABLE `reply`
ADD CONSTRAINT reply_pk PRIMARY KEY (replyId );
----- khóa ngoại -----

ALTER TABLE `reply` CONSTRAINT fk_reply
FOREIGN KEY (commentId)
REFERENCES `comment` (commentId);

ALTER TABLE `reply` CONSTRAINT fk_reply 
FOREIGN KEY (userId  )
REFERENCES `user` (userId  );

Insert into `reply`(replyId, commentId, userId,replyContent,timeReply )
values(1,1,1,'Cảm ơn quý khách'),
(2,2,2,'Cảm ơn quý khách  nha');
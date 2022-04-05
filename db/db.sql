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

--Duyệt

--create table Product, ProductLove
Create table `Product`(
        productId INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        productName text not null,
        isSelf boolean not null,
        productPrice decimal(10,2),
        productImage text not null,
        productDayPublication date not null
        );

create table `ProductLove`( 
        productId varchar(5),
        userId varchar(10)
        );

--khóa ngoại
ALTER TABLE ProductLove CONSTRAINT fk_ProductLove FOREIGN KEY (userId)
     REFERENCES User (userId);

ALTER TABLE ProductLove CONSTRAINT fk_ProductLove FOREIGN KEY (productId)
     REFERENCES Product (productId); 

-- Insert data
Insert Into `ProductLove`( ‘productId’, ‘userId’)
    VALUES
    (‘SP01’, ‘US01’),
    (‘SP02’, ‘US02’),
    (‘SP03’, ‘US03’);
Insert into `Product` (productId ,productName, isSelf ,productPrice,
       productImage, productDayPublication )
       values(‘SP01’,'Tranh 1','ban','2000000', 'anh.jpg' ,'2022/03/22'),
       (‘SP02’,'Tranh 2','ban','800000','anh2.jpg','2022/03/28'),
       (‘SP03’,'Tranh 3','khong ban','1800000','anh3.jpg','2022/04/23');

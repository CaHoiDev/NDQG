drop database NDQG;
create database NDQG;
use NDQG;
-- Phuong:
  CREATE TABLE `user`(
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

   ALTER TABLE `Address`ADD CONSTRAINT fk_Address_userId FOREIGN KEY (userId) REFERENCES `user` (userId);

     INSERT INTO `user`
     VALUES
    ('1','Nguyen Van A','male','03959608','anguyen@gmail.com'),
    ('2','Nguyen Thi B','male','03959608','bnguyen@gmail.com'); 


        INSERT INTO  `Address`
        VALUES ('1','Da Nang','Son Tra','Phuoc My','abc'),
               ('2','Da Nang','Son Tra','An Hai Dong','abc');

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
     Create table `product`(
        productId int AUTO_INCREMENT PRIMARY KEY,
        productName text not null,
        isSelf boolean not null,
        productPrice decimal(10,2),
        productImage text not null,
        productDayPublication date not null
        );

create table `productLove`( 
        productId int,
        userId int
        );


ALTER TABLE `productLove` ADD CONSTRAINT fk_ProductLove1 FOREIGN KEY (userId)
     REFERENCES User (userId);

ALTER TABLE `productLove` ADD CONSTRAINT fk_ProductLove2 FOREIGN KEY (productId)
     REFERENCES Product (productId); 

-- Insert data
Insert Into `productLove`( productId, userId)
    VALUES
    ('1', '1'),
    ('2', '2'),
    ('3', '3');
Insert into `product` (productId ,productName, isSelf ,productPrice,
       productImage, productDayPublication )
       values('1','Tranh 1','ban','2000000', '' ,'2022/03/22'),
       ('2','Tranh 2','ban','800000','','2022/03/28'),
       ('3','Tranh 3','khong ban','1800000','','2022/04/23');

---- Dieu: 
    create table comment(
commentId int AUTO_INCREMENT primary key, 
productId int not null,
userId int not null,
commentContent text  not null,
timeCmt datetime default now()
);
------- khóa ngoại-------
ALTER TABLE `comment`ADD CONSTRAINT fk_comment 
FOREIGN KEY (userId )
REFERENCES `user` (userId);

ALTER TABLE `comment` ADD CONSTRAINT fk_product 
FOREIGN KEY (productId )
REFERENCES `product` (productId);
----- khóa chính ------

---- insert dữ liệu vào ---- 
Insert into `comment`(commentId,productId,userId,commentContent,timeCmt )
values(1,1,1,'tranh dep lam','2022/04/05'),
(2,2,2,'tranh dep lam nè','2022/04/06');
create table `reply`(
    replyId int AUTO_INCREMENT primary key,
    commentId int not null,
    userId int not null,
    replyContent text not null,
    timeReply datetime default now()
);

----- khóa ngoại -----

ALTER TABLE `reply` ADD CONSTRAINT fk_reply 
FOREIGN KEY (commentId)
REFERENCES `comment` (commentId);

ALTER TABLE `reply` ADD CONSTRAINT fk_reply  
FOREIGN KEY (userId  )
REFERENCES `user` (userId  );

Insert into `reply`(replyId, commentId, userId,replyContent,timeReply )
values(1,1,1,'Cảm ơn quý khách',2022/04/05),
(2,2,2,'Cảm ơn quý khách  nha','2022/04/06');





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
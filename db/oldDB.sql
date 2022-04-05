SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
-- --------------------------------------------------------
--
-- Tạo bảng "User"
--

CREATE TABLE `Users`(
    userId int auto_increment PRIMARY KEY,
    userName text not null,
    userGender enum('male', 'female','other'),
    userPhone varchar(12),
    userEmail varchar(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Thêm dữ liệu "User"
--
INSERT INTO `Users`(userName,userGender,userPhone,userEmail)
VALUES
('Nguyen Van A','male','03959608','anguyen@gmail.com'),
('Nguyen Thi B','male','03959608','bnguyen@gmail.com');
-- --------------------------------------------------------

--
-- Tạo bảng "Adress"
--

CREATE TABLE `Address`(
    addressId INT AUTO_INCREMENT PRIMARY KEY,
    userId int not null,
    city varchar(20) not null,
    district varchar(20) not null,
    ward varchar(20) not null,
    detail varchar(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Thêm dữ liệu "Address"
--
INSERT INTO  `Address`(userId,city,district,ward,detail)
VALUES
(1,'Da Nang','Son Tra','Phuoc My','abc'),
(2,'Da Nang','Son Tra','An Hai Dong','abc');

--
-- Cập nhật bảng `Address`
-- --
-- ALTER TABLE `Address`
-- ADD FOREIGN KEY (userId) REFERENCES `User`(userId);
ALTER TABLE `addresses`
ADD CONSTRAINT `addressesFK` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);
COMMIT;
-- --------------------------------------------------------
--
-- Tạo bảng "Product"
--
Create table Product(
    productId INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    productName text not null,
    isSelf boolean not null,
    productPrice decimal(10,2),
    productImage text not null,
    productDayPublication TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
--
-- Thêm dữ liệu "Product"
--
Insert into `Product` (productName, isSelf ,productPrice,productImage)
values
('Tranh 1','ban','2000000', './anh.jpg'),
('Tranh 2','ban','800000','./anh2.jpg'),
('Tranh 3','khong ban','1800000','./anh3.jpg');
-- --------------------------------------------------------
--
-- Tạo bảng "ProductLove"
--
create table ProductLove(
    productId int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    userId int UNSIGNED not null
);

--
-- Cập nhật bảng `ProductLove`
--
ALTER TABLE ProductLove
add foreign key (productId) references Product(productId);

ALTER TABLE ProductLove
add foreign key (userId) references User(userId);
-- --------------------------------------------------------

--
-- Tạo bảng "Comment"
--
create table Comment(
    commentId int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    productId int UNSIGNED not null,
    userId int UNSIGNED not null,
    commentContent text  not null,
    `time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--
-- Cập nhật bảng `Comment`
--
ALTER TABLE Comment
add foreign key (productId) references Product(productId);
ALTER TABLE Comment
add foreign key (userId) references User(userId);
--
-- Thêm dữ liệu "Comment"
--
insert into Comment(commentContent)
values
('So beautiful'),
('That is so bad'),
('I like it!');
-- --------------------------------------------------------

--
-- Tạo bảng "Reply"
--
CREATE TABLE Reply (
    replyId int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    commentId int UNSIGNED not null,
    userId int UNSIGNED not null,
    replyContent text NOT NULL,
    `time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
--
-- Thêm dữ liệu "Reply"
--
insert into Reply (replyContent)
values
('Oh no! It not good!'),
('Yes! I also think so!'),
('Really!');
--
-- Cập nhật bảng `Reply`
--
ALTER TABLE Reply
add foreign key (commentId) references Comment(commentId);
ALTER TABLE Reply
add foreign key (userId) references User(userId);
-- --------------------------------------------------------

--
-- Tạo bảng "Order"
--
CREATE TABLE `Order`(
    orderId INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    userId INT UNSIGNED NOT NULL
);
--
-- Thêm dữ liệu "Order"
--

--
-- Cập nhật bảng `Order`
--
ALTER TABLE `Order`
add foreign key (userId) references User(userId);
-- --------------------------------------------------------

--
-- Tạo bảng "OrderDetail"
--
CREATE TABLE OrderDetail (
    orderId INT UNSIGNED NOT NULL,
    productId INT UNSIGNED NOT NULL
);
--
-- Thêm dữ liệu "OrderDetail"
--

--
-- Cập nhật bảng `OrderDetail`
--
ALTER TABLE OrderDetail
add foreign key (orderId) references `Order`(orderId);
ALTER TABLE OrderDetail
add foreign key (productId) references Product(productId);
-- --------------------------------------------------------

--
-- Tạo bảng "TransportStatus"
--
CREATE TABLE TransportStatus(
    transportStatusId INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    orderTransportStatus TEXT DEFAULT 'Being transported'
);
--
-- Thêm dữ liệu "TransportStatus"
--
insert into TransportStatus(orderTransportStatus)
values (''),
('Packing'),
('Sent goods');
-- --------------------------------------------------------

--
-- Tạo bảng "OrderTransportStatus"
--
CREATE TABLE OrderTransportStatus(
    orderId int UNSIGNED NOT NULL,
    transportStatusId INT UNSIGNED PRIMARY KEY,
    `time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
--
-- Thêm dữ liệu "OrderTransportStatus"
--

--
-- Cập nhật bảng `OrderTransportStatus`
--
alter table OrderTransportStatus
add foreign key (orderId) references `Order`(orderId);

alter table OrderTransportStatus
add foreign key (transportStatusId) references TransportStatus(transportStatusId);
-- --------------------------------------------------------

--
-- Tạo bảng "PaymentMethod"
--
CREATE TABLE PaymentMethod (
    paymentMethodId int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    paymentMethod text default 'Payment on delivery'
);
--
-- Thêm dữ liệu "PaymentMethod"
--
insert into PaymentMethod (paymentMethod)
values (''),
('Payment via Vietcombank card'),
('Payment via Momo');

-- --------------------------------------------------------

--
-- Tạo bảng "OrderpaymentStatus"
--
CREATE TABLE OrderpaymentStatus (
    orderId  int UNSIGNED not null,
    isPayed  bit(1) default 0,
    paymentMethodId int UNSIGNED not null
);
--
-- Thêm dữ liệu "OrderpaymentStatus"
--
insert into OrderpaymentStatus(isPayed)
values
(0),
(1),
(1);

--
-- Cập nhật bảng `OrderpaymentStatus`
--
alter table OrderpaymentStatus
add foreign key (orderId) references `Order`(orderId);
alter table OrderpaymentStatus
add foreign key (paymentMethodId) references PaymentMethod(paymentMethodId);
-- --------------------------------------------------------

--
-- Tạo bảng "User"
--

CREATE TABLE `User`(
    userId int UNSIGNED auto_increment PRIMARY KEY,
    userName text not null,
    userGender enum('male', 'female','other'),
    userPhone varchar(12),
    userEmail varchar(50)
);

-- --------------------------------------------------------

--
-- Tạo bảng "Adress"
--

CREATE TABLE `Address`(
    addressId INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    userId int unsigned not null,
    city varchar(20) not null,
    district varchar(20) not null,
    ward varchar(20) not null,
    detail varchar(50),
    FOREIGN KEY (userId) REFERENCES User(userId)
);

--
-- Cập nhật bảng `Address`
-- --
-- ALTER TABLE `Address`
-- ADD FOREIGN KEY (userId) REFERENCES `User`(userId);
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
    productDayPublication date not null
);
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
    orderTransportStatus TEXT NOT NULL DEFAULT 'Being transported'
);
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
    paymentMethod text
);
-- --------------------------------------------------------

--
-- Tạo bảng "OrderpaymentStatus"
--
CREATE TABLE OrderpaymentStatus (
    orderId  int UNSIGNED not null,
    isPayed  tinyint(100),
    paymentMethodId int UNSIGNED not null
);
--
-- Cập nhật bảng `OrderpaymentStatus`
--
alter table OrderpaymentStatus
add foreign key (orderId) references `Order`(orderId);
alter table OrderpaymentStatus
add foreign key (paymentMethodId) references PaymentMethod(paymentMethodId);
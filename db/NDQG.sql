
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Cơ sở dữ liệu: `ndqg`
--
-- CREATE DATABASE NDQG character set UTF8 collate utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `addressId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `ward` varchar(20) NOT NULL,
  `detail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`addressId`, `userId`, `city`, `district`, `ward`, `detail`) VALUES
(1, 1, 'Kon Tum', 'Đăk Tô', 'Rơ Nga', 'I am handsome, many girls love '),
(2, 3, 'Đà Nẵng', 'Sơn Trà', 'Phước Mỹ', 'I am hacker'),
(3, 2, 'Quảng Trị', 'Đăk Tô', 'Rơ Nga', 'I am handsome'),
(4, 4, 'Đà Nẵng', 'Sơn Trà', 'Phước Mỹ', 'I am Joker');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `commentContent` text NOT NULL,
  `timeCM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`commentId`, `productId`, `userId`, `commentContent`, `timeCM`) VALUES
(1, 1, 1, 'So beautiful!', '2022-04-05 20:16:18'),
(2, 1, 3, 'That is so bad!', '2022-04-05 20:16:18'),
(3, 2, 2, 'I like it!', '2022-04-05 20:16:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderpaymentstatus`
--

CREATE TABLE `orderpaymentstatus` (
  `orderId` int(11) NOT NULL,
  `isPayed` bit(1) NOT NULL DEFAULT b'0',
  `paymentMethodId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orderpaymentstatus`
--

INSERT INTO `orderpaymentstatus` (`orderId`, `isPayed`, `paymentMethodId`) VALUES
(1, b'0', 1),
(3, b'0', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`orderId`, `userId`) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 2),
(3, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordertransportstatus`
--

CREATE TABLE `ordertransportstatus` (
  `orderId` int(11) NOT NULL,
  `transportStatusId` int(11) NOT NULL,
  `timeOrderStatus` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `paymentMethodId` int(11) NOT NULL,
  `paymentMethod` text NOT NULL DEFAULT 'Payment on delivery'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `paymentmethods`
--

INSERT INTO `paymentmethods` (`paymentMethodId`, `paymentMethod`) VALUES
(1, 'Payment on delivery'),
(2, 'Payment via Vietcombank card'),
(3, 'Payment on delivery'),
(4, 'Payment via Momo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productloves`
--

CREATE TABLE `productloves` (
  `productId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `productName` text NOT NULL,
  `isSelf` bit(1) NOT NULL DEFAULT b'0',
  `productPrice` decimal(10,0) NOT NULL,
  `productImage` text NOT NULL,
  `productDayPublication` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`productId`, `productName`, `isSelf`, `productPrice`, `productImage`, `productDayPublication`) VALUES
(1, 'Landscape painting', b'0', '3000', './image1.jpg', '2022-04-06 03:06:17'),
(2, 'Super rare painting', b'0', '400', './image2.jpg', '2022-04-06 03:07:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `replies`
--

CREATE TABLE `replies` (
  `replyId` int(11) DEFAULT NULL,
  `commentId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `replyContent` text NOT NULL,
  `timeReply` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `replies`
--

INSERT INTO `replies` (`replyId`, `commentId`, `userId`, `replyContent`, `timeReply`) VALUES
(NULL, 1, 3, 'Oh no! It not good!', '2022-04-05 20:21:28'),
(NULL, 3, 4, 'Yes! I also think so!', '2022-04-05 20:21:28'),
(NULL, 1, 2, 'Really!!!', '2022-04-05 20:21:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transportstatus`
--

CREATE TABLE `transportstatus` (
  `transportStatusId` int(11) NOT NULL,
  `orderTransportStatus` text NOT NULL DEFAULT 'Being transported'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `transportstatus`
--

INSERT INTO `transportstatus` (`transportStatusId`, `orderTransportStatus`) VALUES
(1, 'Being transported'),
(2, 'Packing'),
(3, 'Sent goods');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` text NOT NULL,
  `userGender` enum('Male','Female','Other') NOT NULL,
  `userPhone` varchar(12) NOT NULL,
  `userEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`userId`, `userName`, `userGender`, `userPhone`, `userEmail`) VALUES
(1, 'A Đăm Thanh', 'Male', '0982934861', 'athanh2002@gmail.com'),
(2, 'Hồ Quốc Trí', 'Male', '0123456789', 'tri@gmail.com'),
(3, 'Hiếu PC', 'Female', '0982934862', 'hieu@gmail.com'),
(4, 'ABC', 'Other', '0123456780', 'ABC@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressId`),
  ADD KEY `AUsersFK` (`userId`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `CProductsFK` (`productId`),
  ADD KEY `CUsersFk` (`userId`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD UNIQUE KEY `ProductId` (`productId`),
  ADD KEY `ODOrdersFK` (`orderId`);

--
-- Chỉ mục cho bảng `orderpaymentstatus`
--
ALTER TABLE `orderpaymentstatus`
  ADD KEY `OPSPaymenthodFK` (`paymentMethodId`),
  ADD KEY `OTSOrdersFK` (`orderId`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `OUsersFK` (`userId`);

--
-- Chỉ mục cho bảng `ordertransportstatus`
--
ALTER TABLE `ordertransportstatus`
  ADD PRIMARY KEY (`transportStatusId`),
  ADD KEY `OTSSOrdersFK` (`orderId`);

--
-- Chỉ mục cho bảng `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`paymentMethodId`);

--
-- Chỉ mục cho bảng `productloves`
--
ALTER TABLE `productloves`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `PLUsersFK` (`userId`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `replies`
--
ALTER TABLE `replies`
  ADD KEY `RCommentsFK` (`commentId`),
  ADD KEY `RUsersFK` (`userId`);

--
-- Chỉ mục cho bảng `transportstatus`
--
ALTER TABLE `transportstatus`
  ADD PRIMARY KEY (`transportStatusId`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `addressId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `ordertransportstatus`
--
ALTER TABLE `ordertransportstatus`
  MODIFY `transportStatusId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `paymentMethodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `productloves`
--
ALTER TABLE `productloves`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `transportstatus`
--
ALTER TABLE `transportstatus`
  MODIFY `transportStatusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `AUsersFK` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `CProductsFK` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`),
  ADD CONSTRAINT `CUsersFk` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Các ràng buộc cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `ODOrdersFK` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  ADD CONSTRAINT `ODProductsFK` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`);

--
-- Các ràng buộc cho bảng `orderpaymentstatus`
--
ALTER TABLE `orderpaymentstatus`
  ADD CONSTRAINT `OPSPaymenthodFK` FOREIGN KEY (`paymentMethodId`) REFERENCES `paymentmethods` (`paymentMethodId`),
  ADD CONSTRAINT `OTSOrdersFK` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `OUsersFK` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Các ràng buộc cho bảng `ordertransportstatus`
--
ALTER TABLE `ordertransportstatus`
  ADD CONSTRAINT `OTSSOrdersFK` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  ADD CONSTRAINT `OTSStransportstatusFK` FOREIGN KEY (`transportStatusId`) REFERENCES `transportstatus` (`transportStatusId`);

--
-- Các ràng buộc cho bảng `productloves`
--
ALTER TABLE `productloves`
  ADD CONSTRAINT `PLProductsFK` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`),
  ADD CONSTRAINT `PLUsersFK` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Các ràng buộc cho bảng `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `RCommentsFK` FOREIGN KEY (`commentId`) REFERENCES `comments` (`commentId`),
  ADD CONSTRAINT `RUsersFK` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);
COMMIT;
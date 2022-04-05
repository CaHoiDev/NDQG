CREATE TABLE orderDetail (
    orderId INT NOT NULL,
    productId UNIQUE  INT NOT NULL
    );

    ALTER TABLE orderDetail ADD FOREIGN KEY (orderId ) REFERENCES orders (orderId );
    INSERT INTO `order` (`orderId`, `userId`) VALUES (' ',  '1');
  


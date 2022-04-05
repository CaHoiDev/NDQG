CREATE TABLE orderpaymentStatus (
     orderID  int AUTO_INCREMENT,
     isPayed  tinyint(100),
     paymentMethodID int,
);
ALTER TABLE paymentStatus
ADD FOREIGN KEY (paymentMethodID ) REFERENCES paymentMethod(paymentMethodID);


INSERT INTO paymentMethod
VALUES 
("1", "Tiền mặt"),
("2", "Qua Zalo"),
("3","Qua VCB");

INSERT INTO paymentStatus
VALUES 
("1", 1, "1"),
("2", 0, "2"),
("3", 1, "1");

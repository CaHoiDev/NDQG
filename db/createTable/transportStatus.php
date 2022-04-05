CREATE TABLE transportStatus(
    transportStatusId INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    orderTransportStatus TEXT NOT NULL DEFAULT 'Being transported'
);
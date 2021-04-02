DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
    `ord_id` int NOT NULL AUTO_INCREMENT,
    `ord_ref` varchar(50) NOT NULL,
    `ord_discount` decimal(7,2) DEFAULT NULL,
    `ord_date` date NOT NULL,
    `ord_method_payment` varchar(50) DEFAULT NULL,
    `ord_payment_status` varchar(50) NOT NULL,
    `ord_d_payment` date DEFAULT NULL,
    `ord_d_ship` date DEFAULT NULL,
    `ord_d_reception` date DEFAULT NULL,
    `ord_status` varchar(50) DEFAULT NULL,
    `ord_billing_address` varchar(150) NOT NULL,
    `ord_delivery_address` varchar(150) NOT NULL,
    `ord_cus_id` int NOT NULL,
    PRIMARY KEY (`ord_id`),
    KEY `ord_cus_id` (`ord_cus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `orders` VALUES 
(1,'QEU75HHU3ET',9.00,'2020-01-13','Espèce','Validé','2020-01-29','NULL','NULL','En préparation','2640 Vulputate Road','2640 Vulputate Road',107),
(2,'DIC97WHZ6RG',10.00,'2021-06-29','Espèce','Validé','2020-12-11','2020-12-17','NULL','Envoyé','456-6073 Dui. St.','456-6073 Dui. St.',101),
(3,'WVE09MFV4SF',0.00,'2021-01-28','Espèce','Validé','2019-10-20','NULL','NULL','En préparation','Ap #541-1300 Orci Rd.','Ap #541-1300 Orci Rd.',102),
(4,'IQS96LVJ3ND',0.00,'2021-07-09','Carte bancaire','Validé','2020-09-15','2020-12-23','NULL','Envoyé','190-8737 Vel Street','190-8737 Vel Street',110),
(5,'ABK93ZBI4WU',3.00,'2021-02-10','Carte bancaire','Validé','2020-05-13','2020-12-26','NULL','Envoyé','2640 Vulputate Road','2640 Vulputate Road',107),
(6,'IDR43VYR4QP',9.00,'2020-07-07','Chèque','Validé','2021-07-04','NULL','NULL','En préparation','284-9568 Phasellus Rd.','284-9568 Phasellus Rd.',106),
(7,'PID99JPL8DY',9.00,'2021-07-27','Carte bancaire','Validé','2021-03-26','2021-03-27','2021-03-31','Livré','P.O. Box 327, 7517 Adipiscing, Av.','P.O. Box 327, 7517 Adipiscing, Av.',103),
(8,'ZHC73TKR8PE',2.00,'2020-01-07','Espèce','Validé','2019-11-09','NULL','NULL','En préparation','Ap #541-1300 Orci Rd.','Ap #541-1300 Orci Rd.',102),
(9,'JDH21ZIX3NA',6.00,'2020-10-13','Chèque','Validé','2021-06-01','2021-08-01','2021-08-10','Livré','641-821 Eu Av.','641-821 Eu Av.',109),
(10,'VAM76FSI5BW',5.00,'2020-05-07','Carte bancaire','Validé','2020-06-10','2020-06-23','2020-06-30','Livré','456-6073 Dui. St.','456-6073 Dui. St.',101);

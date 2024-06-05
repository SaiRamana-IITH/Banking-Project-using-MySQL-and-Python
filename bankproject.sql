USE bankproject;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer`(
    `acno` int(11) NOT NULL AUTO_INCREMENT,
    `name` char(30) DEFAULT NULL,
    `address` varchar(100) DEFAULT NULL,
    `phone` varchar(15) DEFAULT NULL,
    `email` varchar(80) DEFAULT NULL,
    `aadhar_no` varchar(20) DEFAULT NULL,
    `acc_type` varchar(20) DEFAULT NULL,
    `status` char(15) DEFAULT NULL,
    `balance` float(15,2) DEFAULT NULL,
    PRIMARY KEY (`acno`)   
) ENGINE = MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `customer` (`acno`, `name`, `address`, `phone`, `email`, `aadhar_no`, `acc_type`, `status`, `balance`) VALUES
(1, 'riya singhal', 'cf-4 surya nagar', '987181818', 'support@gmail.com', '1234-1234-4545', 'saving', 'active', 12200.00),
(2, 'mansi goyal', 'A-75-B Brij vihar', '96734344318', 'raju@gmail.com', '4545-1234-4545', 'current', 'active', 10000.00),
(3, 'archana', 'cf04', '4545456', 'archana@gmail.com', '134-5656-4545', 'saving', 'active', 10000.00);


DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
    `tid` int(11) NOT NULL AUTO_INCREMENT,
    `dot` date DEFAULT NULL,
    `amount` int(10) DEFAULT NULL,
    `type` char(20) DEFAULT NULL,
    `acno` int(10) DEFAULT NULL,
    PRIMARY KEY(`tid`)
) ENGINE = MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO `transaction` (`tid`,`dot`,`amount`,`type`,`acno`) VALUES
(1, '2020-10-16', 2000, 'deposit', 1),
(2, '2020-10-15', 2000, 'deposit', 2),
(3, '2020-10-18', 1200, 'withdraw', 1);

COMMIT;

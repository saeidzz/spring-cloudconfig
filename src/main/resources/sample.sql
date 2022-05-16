CREATE TABLE `properties` (
  `application` varchar(200) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `label` varchar(200) DEFAULT NULL,
  `key` varchar(200) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1

INSERT INTO `properties` (`key`, `value`, `application`, `profile`, `label`)
VALUES ('rate','12345','app1','dev','sample');
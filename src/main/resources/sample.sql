CREATE TABLE `properties` (
  `application` varchar(200) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `label` varchar(200) DEFAULT NULL,
  `key` varchar(200) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1

INSERT INTO `properties` (`key`, `value`, `application`, `profile`, `label`)
VALUES ('rate','12345','app1','dev','sample');



--- adding encrypted value

--this request have been used for generating that string as value

-----  curl --location --request POST 'http://localhost:8888/encrypt' \
-----  --header 'Content-Type: text/plain' \
-----  --data-raw 'connectionstring=server123;user=root;password=pass@word1'

INSERT INTO `props`.`properties`
(`application`,
`profile`,
`label`,
`key`,
`value`)
VALUES
('app1',
'dev',
'sample',
'connstring',
'{cipher}346ed660448686163e3ca6a97717f465a941c0db835d5b23c43dfdb992f125695f3295d7615d0ff3257249265d875e927c59568f5c3430472b91071ec327bcb08191dd596a2b7c9a2c3f6546635441fb');

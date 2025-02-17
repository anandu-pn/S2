use testnew;
INSERT INTO regions(region_id,region_name) VALUES ('1','Europe'), ('2','Americas'), ('3','Asia'),
 ('4','Middle East and Africa');
 INSERT INTO countries(country_id,country_name,region_id) VALUES ('AR','Argentina','2'), 
('CA','Canada','2'), 
('AU','Australia','3'), 
('CH','Switzerland','1'), 
('DK','Denmark','1'), 
('EG','Egypt','4'), 
('BE','Belgium','1'), 
('CN','China','3'), 
('FR','France','1'), 
 ('BR','Brazil','2'),
 ('DE','Germany','1'),
 ('HK','HongKong','3'),
 ('IL','Israel','4'), ('IN','India','3'), ('IT','Italy','1'), ('JP','Japan','3'), ('KW','Kuwait','4'),
 ('MX','Mexico','2'), ('NG','Nigeria','4'), ('NL','Netherlands','1'), ('SG','Singapore','3'),
 ('UK','United Kingdom','1'), ('US','United States of America','2'), ('ZM','Zambia','4'),
 ('ZW','Zimbabwe','4'); 
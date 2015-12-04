--add test data into members
INSERT INTO members (id,email,password,token,fname,lname,user_name,created_ts,modified_ts,country_id,city) VALUES (1,'test@ebates.com','testpassword','test','test','account','testaccount',now(),now(),86,'BEIJING'); 

UPDATE members m 
SET photo_url = 'https://sharetribe.s3.amazonaws.com/images/people/images/b6kkLUF8Or5yaA-dPlzTtY/medium/image.jpeg?1446378737' 
WHERE m.id = 1;
--add test data into ACTIVITIES
INSERT INTO ACTIVITIES (id,name,descriptions,seller_id,created_ts,modified_ts,price,price_unit,from_ts,to_ts,max_person,available,active,address,photo_url,city_id) VALUES (1,'TEST SHOW TIME','TEST DESCRIPTION',1,now(), now(), 500,1,now(), now(), 3,true,true,'BEIJING CHINA','http://b.hiphotos.baidu.com/zhidao/pic/item/0823dd54564e9258602942f79e82d158ccbf4e8e.jpg',1);
INSERT INTO ACTIVITIES (id,name,descriptions,seller_id,created_ts,modified_ts,price,price_unit,from_ts,to_ts,max_person,available,active,address,photo_url,city_id) VALUES (2,'TEST SHOW TIME','TEST DESCRIPTION',1,now(), now(), 500,1,now(), now(), 3,true,true,'BEIJING CHINA','http://b.hiphotos.baidu.com/zhidao/pic/item/0823dd54564e9258602942f79e82d158ccbf4e8e.jpg',1);
INSERT INTO ACTIVITIES (id,name,descriptions,seller_id,created_ts,modified_ts,price,price_unit,from_ts,to_ts,max_person,available,active,address,photo_url,city_id) VALUES (3,'TEST SHOW TIME','TEST DESCRIPTION',1,now(), now(), 500,1,now(), now(), 3,true,true,'BEIJING CHINA','http://b.hiphotos.baidu.com/zhidao/pic/item/0823dd54564e9258602942f79e82d158ccbf4e8e.jpg',1);
INSERT INTO ACTIVITIES (id,name,descriptions,seller_id,created_ts,modified_ts,price,price_unit,from_ts,to_ts,max_person,available,active,address,photo_url,city_id) VALUES (4,'TEST SHOW TIME','TEST DESCRIPTION',1,now(), now(), 500,1,now(), now(), 3,true,true,'BEIJING CHINA','http://b.hiphotos.baidu.com/zhidao/pic/item/0823dd54564e9258602942f79e82d158ccbf4e8e.jpg',1);
INSERT INTO ACTIVITIES (id,name,descriptions,seller_id,created_ts,modified_ts,price,price_unit,from_ts,to_ts,max_person,available,active,address,photo_url,city_id) VALUES (5,'TEST SHOW TIME','TEST DESCRIPTION',1,now(), now(), 500,1,now(), now(), 3,true,true,'BEIJING CHINA','http://b.hiphotos.baidu.com/zhidao/pic/item/0823dd54564e9258602942f79e82d158ccbf4e8e.jpg',1);
INSERT INTO ACTIVITIES (id,name,descriptions,seller_id,created_ts,modified_ts,price,price_unit,from_ts,to_ts,max_person,available,active,address,photo_url,city_id) VALUES (6,'TEST SHOW TIME','TEST DESCRIPTION',1,now(), now(), 500,1,now(), now(), 3,true,true,'BEIJING CHINA','http://b.hiphotos.baidu.com/zhidao/pic/item/0823dd54564e9258602942f79e82d158ccbf4e8e.jpg',1);
INSERT INTO ACTIVITIES (id,name,descriptions,seller_id,created_ts,modified_ts,price,price_unit,from_ts,to_ts,max_person,available,active,address,photo_url,city_id) VALUES (7,'TEST SHOW TIME','TEST DESCRIPTION',1,now(), now(), 500,1,now(), now(), 3,true,true,'BEIJING CHINA','http://b.hiphotos.baidu.com/zhidao/pic/item/0823dd54564e9258602942f79e82d158ccbf4e8e.jpg',1);

INSERT INTO CITY (NAME) VALUES ('北京');
INSERT INTO TAGS (NAME) VALUES ('美食');
INSERT INTO TAGS (NAME) VALUES ('风俗');
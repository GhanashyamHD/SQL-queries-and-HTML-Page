CREATE TABLE `wolken`.`guns_details` (
  `guns_id` INT NOT NULL,
  `guns_name` VARCHAR(45) NULL,
  `guns_type` VARCHAR(45) NULL,
  `guns_no_of_bullets_in_cartridge` INT NULL,
  `guns_type_of_scope` VARCHAR(45) NULL,
  PRIMARY KEY (`guns_id`));
  
  INSERT INTO `wolken`.`guns_details` (`guns_id`, `guns_name`, `guns_type`, `guns_no_of_bullets_in_cartridge`, `guns_type_of_scope`) VALUES ('3', 'AWM', 'Sniper', '20', '8x');
INSERT INTO `wolken`.`guns_details` (`guns_id`, `guns_name`, `guns_type`, `guns_no_of_bullets_in_cartridge`, `guns_type_of_scope`) VALUES ('4', 'kar95', 'sniper', '10', '8x');
INSERT INTO `wolken`.`guns_details` (`guns_id`, `guns_name`, `guns_type`, `guns_no_of_bullets_in_cartridge`, `guns_type_of_scope`) VALUES ('5', 'draganov', 'sniper', '15', '15x');
INSERT INTO `wolken`.`guns_details` (`guns_id`, `guns_name`, `guns_type`, `guns_no_of_bullets_in_cartridge`, `guns_type_of_scope`) VALUES ('6', 'tommy', 'handgun', '20', '2X');
INSERT INTO `wolken`.`guns_details` (`guns_id`, `guns_name`, `guns_type`, `guns_no_of_bullets_in_cartridge`, `guns_type_of_scope`) VALUES ('7', 'm9', 'pistol', '25', '3x');
INSERT INTO `wolken`.`guns_details` (`guns_id`, `guns_name`, `guns_type`, `guns_no_of_bullets_in_cartridge`, `guns_type_of_scope`) VALUES ('8', 'uzi', 'pistol', '25', '3x');


SELECT * FROM wolken.guns_details;
insert into guns_details ()
values(2,'M417','AR',30,'6X');
-- insert into guns_details () (2,'M416','AR',30,'6X'), 
--  (3,'AWM','Sniper',10,'8x'),
-- insert into guns_details () (4,'kar95','sniper',5,'8X'),
--  (5,'Dragonav','sniper',8,'15x');
select guns_name from guns_details;
select * from guns_details;
select distinct guns_no_of_bullets_in_cartridge from guns_details;
select * from guns_details where guns_no_of_bullets_in_cartridge = 30;
select * from guns_details where guns_id=1;
-- update
update guns_details
set guns_type = 'handgun'
where guns_name = 'uzi';
update guns_details
set guns_no_of_bullets_in_cartridge = 10
where guns_name = 'm9';
select guns_id as gi from guns_details as gd;
select gd.guns_name as gn , gd.guns_type as gt from guns_details as gd;
-- sort
select * from guns_details order by guns_id;
select * from guns_details order by guns_name;
select * from guns_details order by guns_name desc;
select * from guns_details group by guns_no_of_bullets_in_cartridge;
select * from guns_details group by guns_type_of_scope;
select count(guns_type) from guns_details;
select min(guns_no_of_bullets_in_cartridge) from guns_details;
select avg(guns_no_of_bullets_in_cartridge) from guns_details;

create table ammunition_details (
amm_id int primary key not null ,
amm_no_of_granedes int ,
amm_medkit varchar(45),
g_id int,
constraint g_id foreign key (g_id) references guns_details(guns_id)
);
insert into ammunition_details values(4, 3 , 'medkit1',5), (5, 5 , 'bandages', 2),(6,10, 'syringe', 3);
select * from guns_details left join ammunition_details on guns_details.guns_id = ammunition_details.amm_id;
select * from guns_details right join ammunition_details on guns_details.guns_id = ammunition_details.amm_id;
select * from guns_details left outer join ammunition_details on guns_details.guns_id = ammunition_details.amm_id;
select * from guns_details full join ammunition_details ;
select * from guns_details inner join ammunition_details on guns_details.guns_id = ammunition_details.amm_id;
select * from guns_details left join ammunition_details on guns_details.guns_id = ammunition_details.amm_id;
select * from guns_details right outer join  ammunition_details on guns_details.guns_id = ammunition_details.amm_id;
select * from ammunition_details left join guns_details on ammunition_details.amm_id = guns_details.guns_id;
select * from ammunition_details right join guns_details on ammunition_details.amm_id = guns_details.guns_id;
select * from ammunition_details left outer join guns_details on ammunition_details.amm_id = guns_details.guns_id;
select * from ammunition_details right outer join guns_details on ammunition_details.amm_id = guns_details.guns_id;








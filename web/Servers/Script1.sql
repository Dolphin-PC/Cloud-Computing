--<ScriptOptions statementTerminator=";"/>

insert into user (userid, passwd, username, gender, year, year2, year3,  email, phone) 
values ('ildo', '159159', '±Ë¿œµµ','≥≤¿⁄', '1994', '01', '25', 'ildo@naver.com','01050686175');

create table user (
	userid                  varchar(40)         NOT NULL  ,
	passwd              varchar(40)         NOT NULL  ,
	username                varchar(40)         NOT NULL  ,
	gender		        varchar(40)         NOT NULL  ,
	year                varchar(40)         NOT NULL      ,
	year2	            varchar(40)         NOT NULL      ,
	year3               varchar(40)         NOT NULL  ,
	email               varchar(40)         NOT NULL      ,
	phone               varchar(40)          NOT NULL      ,
	PRIMARY KEY ( userid )
);

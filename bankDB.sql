create database bankDB

use bankDB

/************************create table login*****************/
create  table login(
l_id varchar2(20) not null primary key,
m_password varchar2(20),
login_type varchar2(20),
reg_date date);

insert into login values('sanju','sanju','Administrator','10/Dec/2022');
insert into login values('yugal','yugal','Customer','10/Dec/2022');
insert into login values('nadir','nadir','Customer','10/Dec/2022');


/************************create table *****************/

create table Administrator (
Admin_ID number (8) primary key,
l_id varchar2(20),
FirstName varchar2(30),
MiddleName varchar2(30),
LastName varchar2(30),
cellno varchar2(15),
Email varchar2(50),
AddressLine1 varchar2(50),
AddressLine2 varchar2(50),
City varchar2(20),
States varchar2(20),
Country varchar2(20)
);

insert into Administrator values(11,'sanju','sanju','tomer','administrator','8860872708',
                'sanjanatomer@gmail.com','30/1/4','j.v.','gzb','up','india' );
				
/************************create table *****************/
				
create table customer (
ac_id number (8) not null,
accno varchar2(10)not null primary key,
cname1 varchar2(20),
cname2 varchar2(20),
cname3 varchar2(20),
vaddress1 varchar2(100),
ccity varchar2(50),
cstate varchar2(50),
ccountry varchar2(50),
cpincode varchar2(20),
l_id varchar2(20) not null ,
cpassword varchar2(20),
ccontactno varchar2(20),
cDOBdate varchar2(20),
cDOBmonth varchar2(20),
cDOByear varchar2(20),
cemail varchar2(100),
coccupation varchar2(20),
annualincome varchar2(20),
caccounttype varchar2(20),
cDDno varchar2(20),
DDamount number (8));		

insert into customer values(110001,'SB110001','yugal',' ','teotia','radhey house','meerut','u.p','india','250002','yugal','yugal','1234567891','24','09','1982','yugal_aggarwal1@yahoo.com','student','250000','savings','54632',50000);
insert into customer values(110002,'SB110002','nadir',' ','','krishna house','meerut city','u.p','india','250002','nadir','nadir','123456','22','11','1985','nadir@yahoo.com','student','500000','savings','54633',30000);

/************************create table *****************/

create  table information (
inf_id number (8) not null primary key,
l_id varchar2(20) not null ,
password varchar2(20),
accno varchar2(10) not null ,
balance number (8));

insert into information values(50001,'yugal','yugal','SB110001',50000);
insert into information values(50002,'nadir','nadir','SB110002',30000);

/************************create table *****************/

create table history (
h_id number (8) primary key,
dated varchar2(20),
type varchar2(20),
l_id varchar2(20) not null ,
accno1 varchar2(10) not null ,
amount number (8),
accno2 varchar2(10) not null ,
balance number (8));


insert into history values(10001,'20-Feb-2013','saving','yugal','SB110001',5000,'SB110002',50000);

/**************************************************************/


create table HackerInfo (
HIT number (8) primary key,
HID varchar2(50) not null,
LType varchar2(50),
Pass varchar2(50),
RequestMethod varchar2(100),
RequestURL varchar2(100),
RequestProtocol varchar2(100),
ServerName varchar2(100),
RequestPath varchar2(100),
ServerPort varchar2(100),
RemoteAddress varchar2(100),
RemoteHost varchar2(100),
Locale varchar2(100),
UserAgent varchar2(500),
Status varchar2(10),
Dated date
);


insert into HackerInfo values(10000,'xyz','Hacker','abc','aa','aa','aa','aa','aa','aa','aa','aa','aa','aa','NO',sysdate );


/*******************************************/
select * from Administrator

select *  from login
select * from customer
select * from information

select * from history
select * from information

select * from HackerInfo

/**********************************************************/

create database AddressBook_Service;
use AddressBook_Service;


create Table address_Book(id int identity (1,1) primary key, Firstname varchar(20), Lastname varchar (20), address varchar(20), City varchar (27), State varchar (15), Zip varchar (6), PhoneNumber varchar(15), Email varchar(35)); 
exec sp_help address_Book
select * from address_Book 


insert into address_Book(Firstname,Lastname,address,City,State,Zip,PhoneNumber,Email) Values
( 'Anitha', 'Satharajupalli', 'Gachibowli', 'Hyderabad', 'Telangana', '567894', '9010078153', 'anithasri123@bridgelabz.com' ),
( 'Narendra', 'Ghattamaneni', 'RNNagar', 'Nizamabad', 'Telangana', '568743', '8934563832', 'narendra799@bridgelabz.com' ),
( 'ChandraSekhar', 'Machineni', 'ClockTowerCenter', 'Bapatla', 'AndhraPradesh', '568756', '8943026437', 'chandra756@bridgelabz.com' ),
( 'PrabhuChandhan', 'Kota', 'MainRoad', 'Repalle', 'AndhraPradesh', '673829', '9038294056', 'prabhu999@bridgelabz.com' ),
( 'Sireesha', 'Vemulapalli', 'GandhiNagar', 'Kurnool', 'AndhraPradesh', '562134', '9876543210', 'siri9153@bridgelabz.com' ),
( 'NaveenChand', 'Moparthi', 'Chinaravuru', 'Tenali', 'AndhraPradesh', '568753', '8796054859', 'naveen799@bridgelabz.com' );


Update address_Book set PhoneNumber = '9848032919' where Firstname = 'NaveenChand';
Update address_Book set Email = 'naveen997@bridgelabz.com' where Firstname = 'NaveenChand';


Delete From address_Book where Firstname = 'Sireesha';
select * from address_Book 

Select City From address_Book Where Firstname = 'Anitha';
Select State From address_Book Where Firstname = 'Narendra'


Select COUNT(*) State From address_Book
Select COUNT(*) City From address_Book


Select * From address_Book Where City = 'Tenali' Order By Firstname


Alter Table address_Book Add ContactType varchar(27);
Update address_Book Set ContactType = 'Family' Where Firstname = 'Anitha';
Update address_Book Set ContactType = 'Family' Where PhoneNumber = '8934563832';
Update address_Book Set ContactType = 'Friends' Where Lastname = 'Machineni';
Update address_Book Set ContactType = 'Friends' Where Email = 'prabhu999@bridgelabz.com';
Update address_Book Set ContactType = 'Profession' Where Firstname = 'NaveenChand';
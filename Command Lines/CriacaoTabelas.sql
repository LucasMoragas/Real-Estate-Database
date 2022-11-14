create table Advertisement(
	AdvertisementId int,
	NewspaperName varchar(50),
	PropetyId int,
	AdvertisementDate date
);

alter table advertisement rename column propetyid to PropertyId;

create table Viewing(
	PropetyId int,
	ViewingDate date,
	RenterId int
);

alter table viewing rename column propetyid to PropertyId;

create table RenterPhone(
	RenterId int,
	AreaCode int,
	PhoneNumber varchar(15),
	RenterExtension date
);

alter table renterphone alter column areacode type varchar(5);
alter table renterphone alter column renterextension type varchar(5);


create table RenterEmail(
	RenterId int,
	EmailAdress varchar(100)
);

create table OwerEmail(
	OwerId int,
	EmailAdress varchar(100)
);

create table Newspaper(
	NewspaperName varchar(50)
);

create table OwerPhone(
	OwerId int,
	AreaCode varchar(5),
	PhoneNumber varchar(15),
	OwerExtension varchar(5)
);

create table RentalAgreement(
	PropertyId int,
	RentalId int,
	RenterId int,
	SigningDate date,
	StartingDate date,
	EndingDate date
);

create table Renter(
	RentalId int,
	FirstName varchar(50),
	MiddleName varchar(50),
	StreetNumber int,
	StreetName varchar(50),
	City varchar(50),
	Province varchar(50),
	PostalCode int,
	Business int
);

create table Ower(
	OwerId int,
	FirstName varchar(50),
	MiddleName varchar(50),
	StreetNumber int,
	StreetName varchar(50),
	City varchar(50),
	Province varchar(50),
	PostalCode int,
	Business int
);

create table Property(
	PropertyId int,
	OwnedBy int,
	OverseenBy int,
	StreetName varchar(50),
	City varchar(50),
	Province varchar(50),
	PostalCode int,
	PropertyType int
);

create table SraffPhone(
	StaffId int,
	AreaCode varchar(5),
	PhoneNumber varchar(15),
	StaffExtension varchar(5)
);

create table StaffEmail(
	StaffId int,
	EmailAdress varchar(100)
);

create table BranchEmail(
	BranchId int,
	EmailAdress varchar(100)
);

create table BranchPhone(
	BranchId int,
	AreaCode varchar(5),
	PhoneNumber varchar(15),
	BranchExtension varchar(5)
);

create table Staff(
	StaffId int,
	StaffBranch int,
	FirstName varchar(50),
	MiddleName varchar(50),
	StreetNumber int,
	StreetName varchar(50),
	City varchar(50),
	Province varchar(50),
	PostalCode int,
	Gender int,
	Salary numeric(8,2)
);

create table Branch(
	BranchId int,
	BranchManager int,
	StreetNumber int,
	StreetName varchar(50),
	City varchar(50),
	Province varchar(50),
	PostalCode int
);
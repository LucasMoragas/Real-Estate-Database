--TABELAS FUNDAMENTAIS (CHAVES PRIMÁRIAS)

alter table newspaper add primary key (newspapername);

alter table renter add primary key (rentalid);

alter table ower add primary key (owerid);

alter table property add primary key (propertyid);

alter table staff add primary key (staffid);

alter table branch add primary key (branchid);

--TABELAS FUNDAMENTAIS (CHAVES ESTRANGEIRAS)

alter table property add foreign key (ownedby) 
references ower (owerid);

alter table property add foreign key (overseenby) 
references staff (staffid);

alter table staff add foreign key (staffbranch)
references branch (branchid);

alter table branch add foreign key (branchmanager)
references staff (staffid);

-- TABELAS SECUNDÁRIAS (CHAVES PRIMARIAS)

alter table advertisement add primary key (advertisementid, newspapername);

alter table viewing add primary key (propertyid, viewingdate, renterid);

alter table renteremail add primary key (emailadress, renterid);

alter table renterphone add primary key (renterid, areacode, phonenumber);

alter table oweremail add primary key (emailadress, owerid);

alter table owerphone add primary key (owerid, areacode, phonenumber);

alter table rentalagreement add primary key (propertyid, renterid);

alter table sraffphone add primary key (staffid, areacode, phonenumber);

alter table staffemail add primary key (staffid, emailadress);

alter table branchemail add primary key (branchid, emailadress);

alter table branchphone add primary key (branchid, areacode, phonenumber);

--TABELAS SECUDÁRIAS (CHAVES ESTRANGEIRAS)

alter table advertisement add foreign key (newspapername)
references newspaper (newspapername);

alter table advertisement add foreign key (propertyid)
references property (propertyid);

alter table viewing add foreign key (propertyid)
references property (propertyid);

alter table viewing add foreign key (renterid)
references renter (rentalid);

alter table renterphone add foreign key (renterid)
references renter (rentalid);

alter table renteremail add foreign key (renterid)
references renter (rentalid);

alter table oweremail add foreign key (owerid)
references ower (owerid);

alter table owerphone add foreign key (owerid)
references ower (owerid);

alter table rentalagreement add foreign key (propertyid)
references property (propertyid);

alter table rentalagreement add foreign key (renterid)
references renter (rentalid);

alter table sraffphone add foreign key (staffid)
references staff (staffid);

alter table staffemail add foreign key (staffid)
references staff (staffid);

alter table branchemail add foreign key (branchid)
references branch (branchid);

alter table branchphone add foreign key (branchid)
references branch (branchid);
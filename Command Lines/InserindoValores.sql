--TABELAS PRIMÁRIAS

insert into newspaper values
('Jornal Local'),
('Jornal Nacional'),
('Times');

insert into renter values
(1, 'Lucas', 'Moragas', 8, 'Bem-te-vi', 'Patrocínio', 'Minas Gerais', 824, 4),
(2, 'Marcos', 'Oliveira', 1, 'Jacarandas', 'Lajinha', 'São Paulo', 46, 6),
(3, 'Renata', 'Melo', 14, 'Tijucana', 'Ituitaba', 'Catalunha', 22, 7);

insert into owner values
(1, 'Wesley', 'Rabelo', 10, 'Rosca Breada', 'Dorado', 'Minas Gerais', 33, 50),
(2, 'Matheus', 'Trevisanuto', 2, 'Nano', 'Pequena', 'Baixada', 94, 61),
(3, 'Giovanna', 'Amaral', 83, 'Fátima', 'Morada do Sol', 'Franca', 1879, 21);

insert into staff (staffid, firstname, middlename, streetnumber, streetname, city, province, postalcode, gender, salary) values
(1, 'Gilmar', 'Júnior', 11, 'Laica', 'Uberaba', 'Amazonas', 7652, 0, 3500),
(2, 'Bruno', 'Hiago', 45, 'Container', 'São Gotardo', 'Ceara', 8754, 0, 2980),
(3, 'Izabela', 'Iwanow', 17, 'Granto', 'Araxa', 'Rússia', 246, 1, 5600);

insert into property values
(1, 1, 2, 'Pitanga', 'Salada', 'Fruta', 3215, 4),
(2, 2, 3, 'Arroz', 'Feijão', 'Carne', 747, 1),
(3, 3, 1, 'Bisteca', 'Pão de Alho', 'Churrasco', 88, 3);

insert into branch  values
(1, 3, 20, 'Sorocaba', 'São Paulo', 'Maranhão', 555),
(2, 2, 69, 'Belo Horizonte', 'Saudade', 'Itália', 720),
(3, 1, 35, 'Japão', 'China', 'Coreia', 21);

update staff set staffbranch = 2 where staffid = 1;
update staff set staffbranch = 3 where staffid = 2;
update staff set staffbranch = 1 where staffid = 3;

--TABELAS SECUNDÁRIAS

insert into advertisement values
(1, 'Jornal Nacional', 2, '2022-11-07'),
(2, 'Times', 1, '2021-08-08'),
(3, 'Jornal Local', 3, '2022-08-05');

insert into branchemail values
(1, 'branch1@gamil.com'),
(2, 'branch2@gmail.com'),
(3, 'branch3@gmail.com');

insert into branchphone (branchid, areacode, phonenumber) values
(1, '34', '94362410'),
(2, '11', '34926140'),
(3, '21', '33654171');

insert into owneremail values
(1, 'owner1@gamil.com'),
(2, 'owner2@gmail.com'),
(3, 'owner3@gmail.com');

insert into ownerphone (owerid, areacode, phonenumber) values
(1, '34', '94368632'),
(2, '11', '34929374'),
(3, '21', '33651730');

insert into rentalagreement values
(2, 1, 3, '2020-02-28', '2020-03-28', '2022-02-28'),
(1, 2, 1, '2021-03-08', '2021-04-08', '2022-03-08'),
(3, 3, 2, '2022-08-08', '2022-09-08', null);

insert into renteremail values
(1, 'renter1@gamil.com'),
(2, 'renter2@gmail.com'),
(3, 'renter3@gmail.com');

insert into renterphone (renterid, areacode, phonenumber) values
(1, '34', '94368229'),
(2, '11', '34923193'),
(3, '21', '33659824');

insert into staffemail values
(1, 'staff1@gamil.com'),
(2, 'staff2@gmail.com'),
(3, 'staff3@gmail.com');

insert into staffphone (staffid, areacode, phonenumber) values
(1, '34', '94368351'),
(2, '11', '34920920'),
(3, '21', '33658152');

insert into viewing values
(1, '2020-01-15', 3),
(2, '2021-02-03', 2),
(3, '2022-07-10', 1);

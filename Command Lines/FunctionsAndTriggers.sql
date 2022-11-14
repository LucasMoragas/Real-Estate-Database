--LOG RENTER

create table RenterLog(
	Usuario varchar(50),
	Acao varchar(50),
	Hora_Acao timestamp
);

create or replace function Function_Insert_RenterLog()
returns trigger
as
$$
	begin
		insert into renterlog values (current_user, 'INSERT', now());
		return new;
	end;
$$
language plpgsql;

create trigger Trigger_Insert_Renter 
after insert on Renter for each row
execute procedure Function_Insert_RenterLog();

create or replace function Function_Update_RenterLog()
returns trigger
as
$$
	begin
		insert into renterlog values (current_user, 'UPDATE', now());
		return new;
	end;
$$
language plpgsql;

create trigger Trigger_Update_Renter 
after insert on Renter for each row
execute procedure Function_Update_RenterLog();

create or replace function Function_Delete_RenterLog()
returns trigger
as
$$
	begin
		insert into renterlog values (current_user, 'DELETE', now());
		return new;
	end;
$$
language plpgsql;

--TRIGGER TEM O OBJETIVO DE COLOCAR ALTUMATICAMENTE A DATA DE INÍCIO DO CONTRATO UM MÊS APÓS SER ASSINADO

create trigger Trigger_Delete_Renter 
after insert on Renter for each row
execute procedure Function_Delete_RenterLog();

create or replace function Function_Insert_RA_SigningDate()
returns trigger 
as
$$
	begin
		update rentalagreement set startingdate = new.signingdate + interval'1 month'
		where signingdate = new.signingdate;
		return new;
	end;
$$
language plpgsql;

create trigger Trigger_Insert_StartingDate
after insert on Rentalagreement for each row
execute procedure Function_Insert_RA_SigningDate();

--TRIGGER, ACIONADA AO INSERIR NA TABELA ADVERTISEMENTE, TEM O OBJETIVO DE INSERIR O JORNAL NA TABELA NEWSPAPER CASO ELE NÃO EXISTA

create or replace function Function_Insert_Newspaper()
returns trigger
as
$$
	begin
		if not exists (select * from Newspaper where newspapername = new.newspapername) then
			insert into Newspaper values (new.newspapername);
			return new;
		end if;
	end;
$$
language plpgsql;

create trigger Trigger_Insert_Advertisement 
before insert on Advertisement for each row
execute procedure Function_Insert_Newspaper();

--VALIDAÇÃO DE DATAS TABELA RETALAGREEMENT

create or replace function Function_ValidaDatas()
returns trigger
as
$$
	begin
		if (new.endingdate < (select startingdate from retalagreement where endingdate = new.endingdate)) then
			update rentalagreement set endingdate = current_date where endigndate = new.endingdate;
			raise notice 'CONFLITO DE DATAS, VERIFIQUE A TABELA RENTALAGREEMENT';
			return new;
		end if;
	end;
$$
language plpgsql;

create trigger Trigger_ValidaDatas
after insert on Rentalagreement for each row
execute procedure Function_ValidaDatas();

--TRIGGER TEM O BJETIVO DE LIMITAR O SALÁRIO DA STAFF EM 10000

create or replace function Function_LimitaSalario_Satff()
returns trigger
as
$$
	begin
		if(new.salary > 10000) then
			update staff set salary = 10000 where staffid = new.staffid;
			raise notice 'SALARIO SUPERIOR AO TETO';
			return new;
		end if;
	end;
$$
language plpgsql;

create trigger Trigger_LimitaSalario_Satff
after insert on Staff for each row
execute procedure Function_LimitaSalario_Satff();

--Procedure com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_pontuacao_cargo, Intid_cargo , Inttempo, Intpontuacao_cargo, Strsituacao_pontuacao_cargo]
--create procedure sp_listar_tipo_grupos(in Intid_pontuacao_cargo INTEGER, Intid_cargo, in Inttempo, in Intpontuacao_cargo)

delimiter $$
drop procedure if exists sp_listar_tipo_pontuacao_cargo

create procedure sp_listar_tipo_pontuacao_cargo(in opcao CHAR(3), in Intid_pontuacao_cargo INTEGER, Intid_cargo, in Inttempo, in Intpontuacao_cargo, in Strsituacao_pontuacao_cargo CHAR(1))
begin
  if opcao = 'obt' then --obter
     if Intid_pontuacao_cargo is not null then --obter pelo código do grupo
        select id_pontuacao_cargo, pont.id_cargo, car.nome_cargo, tempo, pontuacao_cargo, situacao_pontuacao_cargo from pontuacao_cargo pont
		inner join cargo car on  pont.id_cargo = car.id_cargo
		where id_pontuacao_cargo = Intid_pontuacao_cargo;
     else if Intid_cargo is not null then --obter por nome do grupo
        select id_pontuacao_cargo, pont.id_cargo, car.nome_cargo, tempo, pontuacao_cargo, situacao_pontuacao_cargo from pontuacao_cargo pont
		inner join cargo car on  pont.id_cargo = car.id_cargo
		where pont.id_cargo = Intid_cargo;
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_pontuacao_cargo, pont.id_cargo, car.nome_cargo, tempo, pontuacao_cargo, situacao_pontuacao_cargo from pontuacao_cargo pont
		inner join cargo car on  pont.id_cargo = car.id_cargo
		where situacao_pontuacao_cargo = 'A';
  end if;
end $$
delimiter ;
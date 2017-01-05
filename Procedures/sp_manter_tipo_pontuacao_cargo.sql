--Procedure com opções
--opcao [inc,alt,exc]
--parâmetros de entrada[Intid_pontuacao_cargo, Intid_cargo , Inttempo, Intpontuacao_cargo, Strsituacao_pontuacao_cargo]

delimiter $$
drop procedure if exists sp_manter_tipo_pontuacao_cargo --atualiza a execução do script

create procedure sp_manter_tipo_pontuacao_cargo(in opcao char(3), in Intid_pontuacao_cargo INTEGER, Intid_cargo, in Inttempo, in Intpontuacao_cargo, Strsituacao_pontuacao_cargo CHAR(1))
begin
  if opcao = 'inc' then --inclusão
      insert into pontuacao_cargo(id_cargo, tempo, pontuacao_cargo, situacao_pontuacao_cargo) values (Intid_cargo, Inttempo, Intpontuacao_cargo,Strsituacao_pontuacao_cargo);
  else
     if opcao = 'alt' then --alteração
         update pontuacao_cargo set
         id_cargo = Intid_cargo, 
		 tempo = Inttempo,
		 pontuacao_cargo = Intpontuacao_cargo,
         situacao_pontuacao_cargo = Strsituacao_pontuacao_cargo --caso parâmetro seja igual a "I", haverá uma exclusão lógica
         where id_pontuacao_cargo = Intid_pontuacao_cargo;
     end if;
  end if;
end $$
delimiter ;
--Procedure com op��es
--opcao [inc,alt,exc]
--par�metros de entrada[Intid_cargo, Strnome_cargo, Strsituacao_cargo]

delimiter $$
drop procedure if exists sp_manter_tipo_cargos --atualiza a execu��o do script

create procedure sp_manter_tipo_cargos(in opcao char(3), in Intid_cargo INTEGER, in Strnome_cargo CHAR(40), in Strsituacao_cargo CHAR(1))
begin
  if opcao = 'inc' then --inclus�o
      insert into cargo(nome_cargo, situacao_cargo) values (Strnome_cargo, Strsituacao_cargo);
  else
     if opcao = 'alt' then --altera��o
         update cargo set
         nome_cargo = Strnome_cargo, 
         situacao_cargo = Strsituacao_cargo --caso par�metro seja igual a "I", haver� uma exclus�o l�gica
         where id_cargo = Intid_cargo;
     end if;
  end if;
end $$
delimiter ;
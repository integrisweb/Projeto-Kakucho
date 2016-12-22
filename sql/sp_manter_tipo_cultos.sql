--Procedure com op��es
--opcao [inc,alt,exc]
--par�metros de entrada[Intid_culto, Strnome_culto, Strespecial, Strsituacao_culto]

delimiter $$
drop procedure if exists sp_manter_tipo_cultos --atualiza a execu��o do script

create procedure sp_manter_tipo_cultos(in opcao char(3), in Intid_culto INTEGER, in Strnome_culto CHAR(30), in Strespecial CHAR(1), in Strsituacao_culto CHAR(1))
begin
  if opcao = 'inc' then --inclus�o
      insert into culto(nome_culto, especial, situacao_culto) values (Strnome_culto, Strespecial, Strsituacao_culto);
  else if opcao = 'alt' then --altera��o
         update culto set
         nome_culto = Strnome_culto, 
         situacao_culto = Strsituacao_culto --caso par�metro seja igual a "I", haver� uma exclus�o l�gica
         where id_culto = Intid_culto;
  end if;
end $$
delimiter ;
--Procedure com opções
--opcao [inc,alt,exc]
--parâmetros de entrada[Intid_culto, Strnome_culto, Strespecial, Strsituacao_culto]

delimiter $$
drop procedure if exists sp_manter_tipo_cultos --atualiza a execução do script

create procedure sp_manter_tipo_cultos(in opcao char(3), in Intid_culto INTEGER, in Strnome_culto CHAR(30), in Strespecial CHAR(1), in Strsituacao_culto CHAR(1))
begin
  if opcao = 'inc' then --inclusão
      insert into culto(nome_culto, especial, situacao_culto) values (Strnome_culto, Strespecial, Strsituacao_culto);
  else if opcao = 'alt' then --alteração
         update culto set
         nome_culto = Strnome_culto, 
         situacao_culto = Strsituacao_culto --caso parâmetro seja igual a "I", haverá uma exclusão lógica
         where id_culto = Intid_culto;
  end if;
end $$
delimiter ;
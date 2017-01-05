--Procedure com opções
--opcao [inc,alt,exc]
--parâmetros de entrada[Intid_regiao, Strnome_regiao, Strsituacao_regiao]

delimiter $$
drop procedure if exists sp_manter_tipo_regiao --atualiza a execução do script

create procedure sp_manter_tipo_regiao(in opcao char(3), in Intid_regiao INTEGER, in Strnome_regiao CHAR(40), Strsituacao_regiao CHAR(1))
begin
  if opcao = 'inc' then --inclusão
      insert into regiao(nome_regiao, situacao_regiao) values (Strnome_regiao, Strsituacao_regiao);
  else
     if opcao = 'alt' then --alteração
         update regiao set
         nome_regiao = Strnome_regiao, 
         situacao_regiao = Strsituacao_regiao --caso parâmetro seja igual a "I", haverá uma exclusão lógica
         where id_regiao = Intid_regiao;
     end if;
  end if;
end $$
delimiter ;
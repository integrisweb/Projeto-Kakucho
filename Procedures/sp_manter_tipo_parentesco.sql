--Procedure com opções
--opcao [inc,alt,exc]
--parâmetros de entrada[Intid_parentesco, Strnome_parentesco, Strsituacao_parentesco]

delimiter $$
drop procedure if exists sp_manter_tipo_parentesco --atualiza a execução do script

create procedure sp_manter_tipo_parentesco(in opcao char(3), in Intid_parentesco INTEGER, in Strnome_parentesco CHAR(40), Strsituacao_parentesco CHAR(1))
begin
  if opcao = 'inc' then --inclusão
      insert into parentesco(nome_parentesco, situacao_parentesco) values (Strnome_parentesco, Strsituacao_parentesco);
  else
     if opcao = 'alt' then --alteração
         update parentesco set
         nome_parentesco = Strnome_parentesco, 
         situacao_parentesco = Strsituacao_parentesco --caso parâmetro seja igual a "I", haverá uma exclusão lógica
         where id_parentesco = Intid_parentesco;
     end if;
  end if;
end $$
delimiter ;
--Procedure com opções
--opcao [inc,alt,exc]
--parâmetros de entrada[Intid_templo, Strnome_templo, Strsituacao_templo]

delimiter $$
drop procedure if exists sp_manter_templos --atualiza a execução do script

create procedure sp_manter_templos(in opcao char(3), in Intid_templo INTEGER, in Strnome_templo CHAR(40), Strsituacao_templo CHAR(1))
begin
  if opcao = 'inc' then --inclusão
      insert into templo(nome_templo, situacao_templo) values (Strnome_templo, Strsituacao_templo);
  else
     if opcao = 'alt' then --alteração
         update templo set
         nome_templo = Strnome_templo, 
         situacao_templo = Strsituacao_templo --caso parâmetro seja igual a "I", haverá uma exclusão lógica
         where id_templo = Intid_templo;
     end if;
  end if;
end $$
delimiter ;
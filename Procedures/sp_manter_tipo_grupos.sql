--Procedure Grupos - com opções
--opcao [inc,alt,exc]
--parâmetros de entrada[Intid_grupo, Intid_templo, Strnome_grupo, Strsituacao_grupo]

delimiter $$
drop procedure if exists sp_manter_tipo_grupos --atualiza a execução do script

create procedure sp_manter_tipo_grupos(in opcao char(3), in Intid_grupo INTEGER, in Intid_templo INTEGER, in Intid_templo INTEGER, in Strnome_grupo CHAR(40), in Strsituacao_grupo CHAR(1))
begin
  if opcao = 'inc' then --inclusão
      insert into grupo(id_templo, nome_grupo, situacao_grupo) values (Intid_templo, Strnome_grupo, Strsituacao_grupo);
  else
     if opcao = 'alt' then --alteração
         update grupo set
         nome_cargo = Strnome_cargo,
		 id_templo  = Intid_templo
         situacao_grupo = Strsituacao_grupo --caso parâmetro seja igual a "I", haverá uma exclusão lógica
         where id_grupo = Intid_grupo;
     end if;
  end if;
end $$
delimiter ;
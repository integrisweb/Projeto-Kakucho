--Procedure com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_grupo, Intid_templo, Strnome_grupo, Strsituacao_grupo]
--create procedure sp_listar_tipo_grupos(in Intid_grupo INTEGER, Strnome_grupo VARCHAR(40))

delimiter $$
drop procedure if exists sp_listar_tipo_grupos

create procedure sp_listar_tipo_grupos(in opcao CHAR(3), in Intid_grupo INTEGER, in Intid_templo INTEGER, in Intid_templo INTEGER, in Strnome_grupo CHAR(40), in Strsituacao_grupo CHAR(1))
begin
  if opcao = 'obt' then --obter
     if Intid_grupo is not null then --obter pelo código do grupo
        select id_grupo, gr.id_templo, tem.nome_templo, nome_grupo, situacao_grupo from grupo gr
		inner join templo tem on gr.id_templo = tem.id_templo
		where id_grupo = Intid_grupo;
     else if Strnome_grupo is not null then --obter por nome do grupo
           select id_grupo, gr.id_templo, tem.nome_templo, nome_grupo, situacao_grupo from grupo gr
		   inner join templo tem on gr.id_templo = tem.id_templo
		   where nome_grupo like '%'+Strnome_grupo+'%';
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_grupo, gr.id_templo, tem.nome_templo, nome_grupo, situacao_grupo from grupo gr
		inner join templo tem on gr.id_templo = tem.id_templo 
		where situacao_grupo = 'A';
  end if;
end $$
delimiter ;

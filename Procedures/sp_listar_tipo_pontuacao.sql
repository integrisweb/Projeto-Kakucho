--Procedure com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_tipo_pontuacao, Strnome_tipo_pontuacao]
--create procedure sp_listar_tipo_tipo_pontuacao(in Intid_tipo_pontuacao INTEGER, Strnome_tipo_pontuacao VARCHAR(40))

delimiter $$
drop procedure if exists sp_listar_tipo_tipo_pontuacao

create procedure sp_listar_tipo_tipo_pontuacao(in opcao CHAR(3), in Intid_tipo_pontuacao INTEGER, in Strnome_tipo_pontuacao VARCHAR(40))
begin
  if opcao = 'obt' then --obter
     if Intid_tipo_pontuacao is not null then --obter pelo código do tipo_pontuacao
        select id_tipo_pontuacao, nome_tipo_pontuacao, situacao_tipo_pontuacao from tipo_pontuacao where id_tipo_pontuacao = Intid_tipo_pontuacao;
     else if Strnome_tipo_pontuacao is not null then --obter por nome do tipo_pontuacao
           select id_tipo_pontuacao, nome_tipo_pontuacao, situacao_tipo_pontuacao from tipo_pontuacao where nome_tipo_pontuacao like '%'+Strnome_tipo_pontuacao+'%';
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_tipo_pontuacao, nome_tipo_pontuacao, situacao_tipo_pontuacao from tipo_pontuacao where situacao_tipo_pontuacao = 'A';
  end if;
end $$
delimiter ;

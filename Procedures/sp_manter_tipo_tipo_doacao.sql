--Procedure com opções
--opcao [inc,alt,exc]
--parâmetros de entrada[Intid_tipo_doacao, Strnome_tipo_doacao, Strcentro_custo, Strsituacao_tipo_doacao]

delimiter $$
drop procedure if exists sp_manter_tipo_tipo_doacao --atualiza a execução do script

create procedure sp_manter_tipo_tipo_doacao(in opcao char(3), in Intid_tipo_doacao INTEGER, in Strnome_tipo_doacao VARCHARCHAR(40), in Strcentro_custo VARCHAR(20), in Strsituacao_tipo_doacao CHAR(1))
begin
  if opcao = 'inc' then --inclusão
      insert into tipo_doacao(nome_tipo_doacao, centro_custo, situacao_tipo_doacao) values (Strnome_tipo_doacao, Strcentro_custo, Strsituacao_tipo_doacao);
  else
     if opcao = 'alt' then --alteração
         update tipo_doacao set
         nome_tipo_doacao = Strnome_tipo_doacao, 
		 centro_custo = Strcentro_custo,
         situacao_tipo_doacao = Strsituacao_tipo_doacao --caso parâmetro seja igual a "I", haverá uma exclusão lógica
         where id_tipo_doacao = Intid_tipo_doacao;
     end if;
  end if;
end $$
delimiter ;
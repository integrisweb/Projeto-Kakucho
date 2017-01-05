--Procedure com opções
--opcao [inc,alt,exc]
--parâmetros de entrada[Intid_tipo_pontuacao, Strnome_tipo_pontuacao, Strsituacao_tipo_pontuacao]

delimiter $$
drop procedure if exists sp_manter_tipo_tipo_pontuacao --atualiza a execução do script

create procedure sp_manter_tipo_tipo_pontuacao(in opcao char(3), in Intid_tipo_pontuacao INTEGER, in Strnome_tipo_pontuacao CHAR(40), Strsituacao_tipo_pontuacao CHAR(1))
begin
  if opcao = 'inc' then --inclusão
      insert into tipo_pontuacao(nome_tipo_pontuacao, situacao_tipo_pontuacao) values (Strnome_tipo_pontuacao, Strsituacao_tipo_pontuacao);
  else
     if opcao = 'alt' then --alteração
         update tipo_pontuacao set
         nome_tipo_pontuacao = Strnome_tipo_pontuacao, 
         situacao_tipo_pontuacao = Strsituacao_tipo_pontuacao --caso parâmetro seja igual a "I", haverá uma exclusão lógica
         where id_tipo_pontuacao = Intid_tipo_pontuacao;
     end if;
  end if;
end $$
delimiter ;
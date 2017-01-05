--Procedure com opções
--opcao [inc,alt,exc]
--parâmetros de entrada[Intid_profissao_fiel, Strnome_profissao_fiel, Strsituacao_profissao_fiel]

delimiter $$
drop procedure if exists sp_manter_tipo_profissao_fiel --atualiza a execução do script

create procedure sp_manter_tipo_profissao_fiel(in opcao char(3), in Intid_profissao_fiel INTEGER, in Strnome_profissao_fiel CHAR(40), Strsituacao_profissao_fiel CHAR(1))
begin
  if opcao = 'inc' then --inclusão
      insert into profissao_fiel(nome_profissao_fiel, situacao_profissao_fiel) values (Strnome_profissao_fiel, Strsituacao_profissao_fiel);
  else
     if opcao = 'alt' then --alteração
         update profissao_fiel set
         nome_profissao_fiel = Strnome_profissao_fiel, 
         situacao_profissao_fiel = Strsituacao_profissao_fiel --caso parâmetro seja igual a "I", haverá uma exclusão lógica
         where id_profissao_fiel = Intid_profissao_fiel;
     end if;
  end if;
end $$
delimiter ;
--Procedure com opções
--opcao [inc,alt,exc]
--parâmetros de entrada[Intid_presenca, Strnome_presenca, Strsituacao_presenca]

delimiter $$
drop procedure if exists sp_manter_tipo_presenca --atualiza a execução do script

create procedure sp_manter_tipo_presenca(in opcao char(3), in Intid_presenca INTEGER, in Strnome_presenca CHAR(40), Strsituacao_presenca CHAR(1))
begin
  if opcao = 'inc' then --inclusão
      insert into presenca(nome_presenca, situacao_presenca) values (Strnome_presenca, Strsituacao_presenca);
  else
     if opcao = 'alt' then --alteração
         update presenca set
         nome_presenca = Strnome_presenca, 
         situacao_presenca = Strsituacao_presenca --caso parâmetro seja igual a "I", haverá uma exclusão lógica
         where id_presenca = Intid_presenca;
     end if;
  end if;
end $$
delimiter ;
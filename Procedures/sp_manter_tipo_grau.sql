--Procedure com opções
--opcao [inc,alt,exc]
--parâmetros de entrada[Intid_grau, Strnome_grau, Strsituacao_grau]

delimiter $$
drop procedure if exists sp_manter_tipo_grau --atualiza a execução do script
create procedure sp_manter_tipo_graus(in opcao char(3), in Intid_grau INTEGER, in Strnome_grau CHAR(30), Strsituacao_grau CHAR(1))

begin
  if opcao = 'inc' then --inclusão
      insert into grau(nome_grau, situacao_grau) values (Strnome_grau, Strsituacao_grau);
  else
     if opcao = 'alt' then --alteração
         update grau set
         nome_grau = Strnome_grau, 
         situacao_grau = Strsituacao_grau --caso parâmetro seja igual a "I", haverá uma exclusão lógica
         where id_grau = Intid_grau;
     end if;
  end if;
end $$
delimiter ;
<?php

	error_reporting(E_ALL);
	ini_set("display_errors", 1);

    include "inc/database.php";

	$acao     	= (isset($_POST['acao'])) ? $_POST['acao'] : '';
	$id 		= (isset($_POST['id'])) ? $_POST['id'] : '';
	$nome     	= (isset($_POST['nome'])) ? $_POST['nome'] : '';
	$situacao   = (isset($_POST['situacao'])) ? $_POST['situacao'] : '';

	if ($acao == 'inc'):
		$sql = "
			INSERT INTO 
				profissao_fiel (
					nome_profissao_fiel, 
					situacao_fiel
			)
			VALUES (
					'$nome', 
					'$situacao'
			)
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'alt'):
		$sql = "
			UPDATE 
				profissao_fiel
			SET 
				nome_profissao_fiel = '$nome', 
				situacao_fiel = '$situacao'
			WHERE 
				id_profissao_fiel = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'exc'):
		$sql = "
			DELETE FROM profissao_fiel
			WHERE id_profissao_fiel = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'list'):
		$sql = "
			SELECT id_profissao_fiel,nome_profissao_fiel,situacao_fiel
			FROM profissao_fiel
			ORDER BY nome_profissao_fiel
		";
		
      	foreach ($pdo->query($sql) as $row) {
	        $id = $row["id_profissao_fiel"];
	        $nome = $row["nome_profissao_fiel"];
	      	$situacao = ($row["situacao_fiel"] == "A") ? "Ativo" : "Inativo";

	        echo "
	        		<tr>
	        			<td style='display:none'>$id</td>
	        			<td><a class='tableLine' style='cursor: pointer;'>$nome</a></td>
	        			<td class='hidden-xs'>$situacao</td>
	        		</tr>
	        	";
	    }
	endif;
		
?>
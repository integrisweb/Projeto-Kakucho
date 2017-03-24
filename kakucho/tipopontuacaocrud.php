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
				tipo_pontuacao (
					pontuacao_fiel, 
					situacao_pontuacao_fiel
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
				tipo_pontuacao 
			SET 
				pontuacao_fiel = '$nome', 
				situacao_pontuacao_fiel = '$situacao'
			WHERE 
				id_tipo_pontuacao = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'exc'):
		$sql = "
			DELETE FROM tipo_pontuacao 
			WHERE id_tipo_pontuacao = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'list'):
		$sql = "
			SELECT id_tipo_pontuacao,pontuacao_fiel,situacao_pontuacao_fiel
			FROM tipo_pontuacao 
			ORDER BY id_tipo_pontuacao DESC
		";
		
      	foreach ($pdo->query($sql) as $row) {
	        $id = $row["id_tipo_pontuacao"];
	        $nome = $row["pontuacao_fiel"];
	      	$situacao = ($row["situacao_pontuacao_fiel"] == "A") ? "Ativo" : "Inativo";

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
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
				parentesco (
					parentesco, 
					situacao_parentesco
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
				parentesco 
			SET 
				parentesco = '$nome', 
				situacao_parentesco = '$situacao'
			WHERE 
				id_parentesco = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'exc'):
		$sql = "
			DELETE FROM parentesco 
			WHERE id_parentesco = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'list'):
		$sql = "
			SELECT id_parentesco,parentesco,situacao_parentesco
			FROM parentesco 
			ORDER BY parentesco
		";
		
      	foreach ($pdo->query($sql) as $row) {
	        $id = $row["id_parentesco"];
	        $nome = $row["parentesco"];
	      	$situacao = ($row["situacao_parentesco"] == "A") ? "Ativo" : "Inativo";

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
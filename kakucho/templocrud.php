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
				templo (
					nome_templo, 
					situacao_templo
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
				templo 
			SET 
				nome_templo = '$nome', 
				situacao_templo = '$situacao'
			WHERE 
				id_templo = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'exc'):
		$sql = "
			DELETE FROM templo 
			WHERE id_templo = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'list'):
		$sql = "
			SELECT id_templo,nome_templo,situacao_templo
			FROM templo 
			ORDER BY nome_templo
		";
		
      	foreach ($pdo->query($sql) as $row) {
	        $id = $row["id_templo"];
	        $nome = $row["nome_templo"];
	      	$situacao = ($row["situacao_templo"] == "A") ? "Ativo" : "Inativo";
			$situacao_templo = ($row["situacao_templo"] == "A") ? true : false;

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
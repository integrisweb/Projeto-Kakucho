<?php

	error_reporting(E_ALL);
	ini_set("display_errors", 1);

    include "inc/database.php";

	$acao     	= (isset($_POST['acao'])) ? $_POST['acao'] : '';
	$id 		= (isset($_POST['id'])) ? $_POST['id'] : '';
	$nome     	= (isset($_POST['nome'])) ? $_POST['nome'] : '';
	$especial  	= (isset($_POST['especial'])) ? $_POST['especial'] : '';
	$situacao   = (isset($_POST['situacao'])) ? $_POST['situacao'] : '';

	if ($acao == 'inc'):
		$sql = "
			INSERT INTO 
				culto (
					nome_culto,
					especial, 
					situacao_culto
			)
			VALUES (
					'$nome',
					'$especial',
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
				culto 
			SET 
				nome_culto = '$nome',
				especial = '$especial',
				situacao_culto = '$situacao'
			WHERE 
				id_culto = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'exc'):
		$sql = "
			DELETE FROM culto 
			WHERE id_culto = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'list'):
		$sql = "
			SELECT id_culto,nome_culto,especial,situacao_culto
			FROM culto 
			ORDER BY nome_culto
		";
		
      	foreach ($pdo->query($sql) as $row) {
	        $id = $row["id_culto"];
	        $nome = $row["nome_culto"];
	      	$especial = ($row["especial"] == "S") ? "Sim" : "Não";
	      	$situacao = ($row["situacao_culto"] == "A") ? "Ativo" : "Inativo";

	        echo "
	        		<tr>
	        			<td style='display:none'>$id</td>
	        			<td><a class='tableLine' style='cursor: pointer;'>$nome</a></td>
	        			<td class='hidden-xs'>$especial</td>
	        			<td class='hidden-xs'>$situacao</td>
	        		</tr>
	        	";
	    }
	endif;	
?>
<?php
	error_reporting(E_ALL);
	ini_set("display_errors", 1);

    include "inc/database.php";

	$acao     	= (isset($_POST['acao'])) ? $_POST['acao'] : '';
	$id 		= (isset($_POST['id'])) ? $_POST['id'] : '';
	$nome     	= (isset($_POST['nome'])) ? $_POST['nome'] : '';
	$sigla     	= (isset($_POST['sigla'])) ? $_POST['sigla'] : '';
	$situacao   = (isset($_POST['situacao'])) ? $_POST['situacao'] : '';

	if ($acao == 'inc'):
		$sql = "
			INSERT INTO 
				estado (
					nome_estado,
					estado,
					situacao_estado
			)
			VALUES (
					'$nome',
					'$sigla',
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
				estado 
			SET 
				nome_estado = '$nome',
				estado = '$sigla',
				situacao_estado = '$situacao'
			WHERE 
				id_estado = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'exc'):
		$sql = "
			DELETE FROM estado 
			WHERE id_estado = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'list'):
		$sql = "
			SELECT id_estado,nome_estado,estado,situacao_estado
			FROM estado 
			ORDER BY nome_estado
		";
		
      	foreach ($pdo->query($sql) as $row) {
	        $id = $row["id_estado"];
	        $nome = $row["nome_estado"];
	        $sigla = $row["estado"];
	      	$situacao = ($row["situacao_estado"] == "A") ? "Ativo" : "Inativo";

	        echo "
	        		<tr>
	        			<td style='display:none'>$id</td>
	        			<td><a class='tableLine' style='cursor: pointer;'>$nome</a></td>
	        			<td class='hidden-xs'>$sigla</td>
	        			<td class='hidden-xs'>$situacao</td>
	        		</tr>
	        	";
	    }
	endif;	
?>
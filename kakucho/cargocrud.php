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
				cargo (
					nome_cargo, 
					situacao_cargo
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
				cargo 
			SET 
				nome_cargo = '$nome', 
				situacao_cargo = '$situacao'
			WHERE 
				id_cargo = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'exc'):
		$sql = "
			DELETE FROM cargo 
			WHERE id_cargo = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'list'):
		$sql = "
			SELECT id_cargo,nome_cargo,situacao_cargo
			FROM cargo 
			ORDER BY nome_cargo
		";
		
      	foreach ($pdo->query($sql) as $row) {
	        $id = $row["id_cargo"];
	        $nome = $row["nome_cargo"];
	      	$situacao = ($row["situacao_cargo"] == "A") ? "Ativo" : "Inativo";

	        echo "
	        		<tr width='100%'>
	        			<td style='display:none'>$id</td>
	        			<td width='50%'><a class='tableLine' style='cursor: pointer;'>$nome</a></td>
	        			<td width='5%'>&nbsp;</td>
	        			<td class='hidden-xs'>$situacao</td>
	        			<td width='45%'>&nbsp;</td>						
	        		</tr>
	        	";
	    }
	endif;	
?>
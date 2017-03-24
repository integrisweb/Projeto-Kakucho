<?php
	error_reporting(E_ALL);
	ini_set("display_errors", 1);

    include "inc/database.php";

	$acao     	= (isset($_POST['acao'])) ? $_POST['acao'] : '';
	$id 		= (isset($_POST['id'])) ? $_POST['id'] : '';
	$nome     	= (isset($_POST['nome'])) ? $_POST['nome'] : '';
	$situacao   = (isset($_POST['situacao'])) ? $_POST['situacao'] : '';
	$c_custo 	= (isset($_POST['c_custo'])) ? $_POST['c_custo'] : '';

	if ($acao == 'inc'):
		$sql = "
			INSERT INTO 
				tipo_doacao (
					nome_tipo_doacao, 
					situacao_doacao, 
					centro_custo
			)
			VALUES (
					'$nome', 
					'$situacao', 
					'$c_custo'
			)
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'alt'):
		$sql = "
			UPDATE 
				tipo_doacao 
			SET 
				nome_tipo_doacao = '$nome', 
				situacao_doacao = '$situacao', 
				centro_custo = '$c_custo'
			WHERE 
				id_tipo_doacao = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'exc'):
		$sql = "
			DELETE FROM tipo_doacao 
			WHERE id_tipo_doacao = '$id'
		";
		
		$stm = $pdo->prepare($sql);
		$retorno = $stm->execute();

		echo $retorno;
	endif;

	if ($acao == 'list'):
		$sql = "
			SELECT id_tipo_doacao,nome_tipo_doacao,centro_custo,situacao_doacao
			FROM tipo_doacao 
			ORDER BY nome_tipo_doacao
		";
		
      	foreach ($pdo->query($sql) as $row) {
	        $id = $row["id_tipo_doacao"];
	        $nome = $row["nome_tipo_doacao"];
	        $c_custo =$row["centro_custo"];
	      	$situacao = ($row["situacao_doacao"] == "A") ? "Ativo" : "Inativo";

	        echo "
	        		<tr width='100%'>
	        			<td style='display:none'>$id</td>
	        			<td width='35%'><a class='tableLine' style='cursor: pointer;'>$nome</a></td>
	        			<td width='10%'>&nbsp;</td>
	        			<td>$c_custo</td>
	        			<td width='25%'>&nbsp;</td>						
	        			<td class='hidden-xs'>$situacao</td>
	        			<td width='30%'>&nbsp;</td>
	        		</tr>
	        	 ";
	    }
	endif;	
?>
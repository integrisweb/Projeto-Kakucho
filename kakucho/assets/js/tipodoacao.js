$(document).ready(function(){
	$('#salvar').on('click', 'salvarDoacao');
	$('#excluir').on('click', 'excluirDoacao');

	function salvarDoacao(){
		var dados = $('#formDoacao').serialize();
		dados += '&crud=C';

		alert('testando...');

		$.ajax({
			url: "tipodoacao_crud.php",
			type: 'POST',
			data: dados,
			beforeSend: function(){
				$('#formDoacao').html("<img src='../img/aguarde.gif'>");
			},
			success: function(retorno){
				if(retorno == "1"){
					$('#formDoacao').html("<h3>Inserido com sucesso!</h3>");
				}else{
					$('#formDoacao').html("<h2>Erro ao inserir dados!</h2>");
				}
			}
		});
	};

	function excluirDoacao(){
		var dados = $('#formDoacao').serialize();
		dados += '&crud=C';

		$.ajax({
			url: "tipodoacao_crud.php",
			type: 'POST',
			data: dados,
			beforeSend: function(){
				$('#formDoacao').html("<img src='../img/aguarde.gif'>");
			},
			success: function(retorno){
				if(retorno == "1"){
					$('#formDoacao').html("<h3>Inserido com sucesso!</h3>");
				}else{
					$('#formDoacao').html("<h2>Erro ao inserir dados!</h2>");
				}
			}
		});
	};

	/*
	$("#submit").click(function(){
		var crud = 'C';
		var id = $("#table_id").val();		
		var nome = $("#nome").val();
		var situacao = $("#situacao").val();
		var c_custo = $("#c_custo").val();

		var dataString = {
			crud : crud,
			id_tipo_doacao : id,
			nome_tipo_doacao : nome,
			situacao_doacao : situacao,
			centro_custo : c_custo
		};

		$.ajax({
			type: "POST",
			url: "tipodoacao_crud.php",
			data: dataString,
			cache: false,
			success: function(result){ alert(result); }
		});

		return false; 
	});
 
	$("#delete").click(function(){
		var crud = 'D';		
		var id = $("#table_id").val();

		var dataString = {
			crud : crud,
			id_tipo_doacao : id
		};

		$.ajax({
			type: "POST",
			url: "tipodoacao_crud.php",
			data: dataString,
			cache: false,
			success: function(result){ alert(result); }
		});

		return false;
	});	
	*/
});
<?php

  if (!isset($_SESSION)) session_start();

  if (!isset($_SESSION['UsuarioID'])) {
    session_destroy();
    header("location: login.php"); 
    exit;
  }

  include "inc/header.php";

?>

    <main class="ls-main">
	<style type="text/css">
		table.table-scroll-body {
		  position: relative;
		  height: 200px; }

		  table.table-scroll-body tbody {
			position: absolute;
			max-height: 200px;
			overflow: auto; }	
	</style>	
      <div class="container-fluid">
        <h1 class="ls-title-intro ls-ico-tree">Tipo de Doação</h1>

        <form action="" class="ls-form row" id="formDoacao">
          <input type="hidden" name="table_id" id="table_id" value="0"/>
        
          <fieldset>
            <label class="ls-label col-md-4">
              <b class="ls-label-text">Doação</b>
              <input type="text" name="nome" id="nome" placeholder="Tipo de Doação" required>
            </label>
          </fieldset>

          <fieldset>
            <label class="ls-label col-md-4">
              <b class="ls-label-text">Centro de Custo</b>
              <input type="text" name="c_custo" id="c_custo" placeholder="Centro de Custo" required>
            </label>
          </fieldset>

          <fieldset>
            <div class="ls-label col-md-5">
              <label class="ls-label-text">
                <input type="checkbox" name="situacao" id="situacao" checked>
                Ativo
              </label>
            </div>
          </fieldset>

          <input type="hidden" name="action" id="action" value="">
        </form>
        <div class="ls-actions-btn">
          <button class="ls-btn-primary" id="salvar">Salvar</button>
          <button class="ls-btn-primary-danger" id="excluir">Excluir</button>
          <button class="ls-btn" id="novo">Novo</button>
        </div>        

        <table class="ls-table ls-table-striped ls-bg-header table-scroll-body" id="table_list">
          <thead>
            <tr>
              <th>Doação</th>
              <th>Centro de Custo</th>
              <th class="hidden-xs">Situação</th>
            </tr>
          </thead>
          <tbody id='myRegList'></tbody>
        </table>
      </div>
    </main>

    <script type="text/javascript">

      $(document).ready(function(){
        $('#salvar').on('click', salvarRegistro);
        $('#excluir').on('click', excluirRegistro);
        $('#novo').on('click', prepararInclusao);

        $('.tableLine').live('click', preencherFormulario);

        listarRegistros();

        function salvarRegistro(){
          var vid = $('#table_id').val();
          var vnome = $('#nome').val();
          var vc_custo = $('#c_custo').val();
          var vsituacao = ($('#situacao').prop('checked') == true ? 'A' : 'I');
          var vacao = (vid == 0 ? 'inc' : 'alt');

          var dados = {
            id: vid,
            nome: vnome,
            c_custo: vc_custo,
            situacao: vsituacao,
            acao: vacao
          };

          if(vnome == "" || vc_custo == "" || vsituacao == ""){
            alert('Existem campos não preenchidos....');
          }else{
            $.ajax({
              url: 'tipodoacaocrud.php',
              type: 'POST',
              data: dados,
              success: function(data){
                listarRegistros();
                limparCampos();
              }
            });
          }
        };

        function excluirRegistro(){
          var vid = $('#table_id').val();

          var dados = {
            id: vid,
            acao: 'exc'
          };

          if(vid == 0){
            alert('Selecione o registro a ser excluído!');
          }else{
            $.ajax({
              url: 'tipodoacaocrud.php',
              type: 'POST',
              data: dados,
              success: function(retorno){
                if(retorno == 1){
                  limparCampos();
                  $("tr").remove(":contains('" + vid + "')");
                }else{
                  alert('Erro ao excluir dados!');
                }
              }
            });
          }
        };

        function preencherFormulario(){
          var novoStatus = $('#novo').text();

          if(novoStatus == 'Novo'){
            $('#table_id').val(($('td:eq(0)', $(this).parents('tr')).text()));
            $('#nome').val(($('td:eq(1)', $(this).parents('tr')).text()));
            $('#c_custo').val(($('td:eq(2)', $(this).parents('tr')).text()));

            var situacao = (($('td:eq(3)', $(this).parents('tr')).text()) == 'Ativo' ? true : false);
            $('#situacao').prop('checked', situacao);
          } 
        };

        function prepararInclusao(){
          limparCampos();

          var novoStatus = $('#novo').text();

          if (novoStatus == 'Cancelar'){
            $('#novo').text("Novo");
            $('#excluir').prop('disabled', false);        
          }
          else{
            $('#novo').text("Cancelar");
            $('#excluir').prop('disabled', true);
            $('#situacao').prop('checked', true);                        
            $('#nome').focus();
          }
        };

        function limparCampos(){
          $("#table_id").val(0);
          $("#nome").val("");
          $('#c_custo').val("");
          $("#situacao").prop('checked', true);
        };

        function listarRegistros(){
          var dados = {
            acao: 'list'
          };

          $.ajax({
            url: 'tipodoacaocrud.php',
            type: 'POST',
            data: dados,
            success: function(retorno){
              $('#myRegList').html(retorno);
            }
          });
        };

        function consistir(){
          $("#formDoacao input").blur(function(){
            if($(this).val() == ""){
              $(this).css({"border" : "1px solid #F00", "padding": "2px"});
              return false;
            }else{
              return true;
            }
          });          
        };

      });

    </script>
   </body>
</html>
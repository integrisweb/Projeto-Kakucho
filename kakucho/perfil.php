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
      <div class="container-fluid">
        <h1 class="ls-title-intro ls-ico-users">Perfil</h1>

        <form action="" class="ls-form row" id="formDoacao">
          <input type="hidden" name="table_id" id="table_id" value="0"/>

          <fieldset>
            <img src="assets/img/perfil.jpg" class="ls-ico-user" width="56" height="70" id="foto">
            <span id="btnAnexar" class="ls-ico-camera"></span>
            <input type="file" name="foto" id="impFoto">
          </fieldset>
        
          <fieldset>
            <label class="ls-label col-md-4">
              <b class="ls-label-text">Nome</b>
              <input type="text" name="nome" id="nome" placeholder="Nome de usuário" required>
            </label>
          </fieldset>

          <fieldset>
            <label class="ls-label col-md-4">
              <b class="ls-label-text">Email</b>
              <input type="text" name="email" id="email" placeholder="Email" required>
            </label>
          </fieldset>

          <fieldset>
            <label class="ls-label col-md-4">
              <b class="ls-label-text">Senha</b>
              <div class="ls-prefix-group">
                <input type="password" name="senha" id="senha" maxlength="6" placeholder="Senha [6 caracteres]" required>
                <a class="ls-label-text-prefix ls-toggle-pass ls-ico-eye" data-toggle-class="ls-ico-eye, ls-ico-eye-blocked" data-target="#senha" href="#">
                </a>
              </div>
            </label>
          </fieldset>

          <input type="hidden" name="action" id="action" value="">
        </form>
        <div class="ls-actions-btn">
          <button class="ls-btn-primary" id="salvar">Salvar</button>
        </div>
      </div>
    </main>

    <script type="text/javascript">

      $(document).ready(function(){
        $('#salvar').on('click', salvarRegistro);
        $('#excluir').on('click', excluirRegistro);
        $('#novo').on('click', prepararInclusao);

        $('.tableLine').live('click', preencherFormulario);

        listarRegistros();

        $('#impFoto').css('display', 'none');
        
        $('#btnAnexar').click(function() {
          $('#impFile').trigger('click');
        });   

        function salvarRegistro(){
          var vid = $('#table_id').val();
          var vnome = $('#nome').val();
          var vsigla = $('#sigla').val();
          var vsituacao = ($('#situacao').prop('checked') == true ? 'A' : 'I');
          var vacao = (vid == 0 ? 'inc' : 'alt');

          var dados = {
            id: vid,
            nome: vnome,
            sigla: vsigla,
            situacao: vsituacao,
            acao: vacao
          };

          if(vnome == "" || vsigla == "" || vsituacao == ""){
            alert('Existem campos não preenchidos....');
          }else{
            $.ajax({
              url: 'estadocrud.php',
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
              url: 'estadocrud.php',
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
            $('#sigla').val(($('td:eq(2)', $(this).parents('tr')).text()));

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
            $('#nome').focus();
          }
        };

        function limparCampos(){
          $("#table_id").val(0);
          $("#nome").val("");
          $('#sigla').val("");
          $("#situacao").prop('checked', false);
        };

        function listarRegistros(){
          var dados = {
            acao: 'list'
          };

          $.ajax({
            url: 'estadocrud.php',
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
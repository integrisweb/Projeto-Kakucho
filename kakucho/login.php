<!DOCTYPE html>
<html class="ls-theme-gray">
  <head>
    <title>Kakucho - Login</title>

    <meta charset="utf-8">
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    
    <link href="assets/css/locastyle.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <div class="ls-login-parent">
      <div class="ls-login-inner">
        <div class="ls-login-container">
          <div class="ls-login-box">
            <h2>Projeto Kakucho</h2>
            <br/>
            <form role="form" class="ls-form ls-login-form" action="validacao.php" method="POST">
              <fieldset>
                <label class="ls-label">
                  <b class="ls-label-text ls-hidden-accessible">Usuário</b>
                  <input name="user_name" class="ls-login-bg-user ls-field-lg" type="text" placeholder="Usuário" required autofocus>
                </label>

                <label class="ls-label">
                  <b class="ls-label-text ls-hidden-accessible">Senha</b>
                  <div class="ls-prefix-group ls-field-lg">
                    <input name="password" id="password_field" class="ls-login-bg-password" type="password" placeholder="Senha" required>
                    <a class="ls-label-text-prefix ls-toggle-pass ls-ico-eye" data-toggle-class="ls-ico-eye, ls-ico-eye-blocked" data-target="#password_field" href="#"></a>
                  </div>
                </label>
                <p><a class="ls-login-forgot" href="forgot-password">Esqueci minha senha</a></p>
                <input type="submit" value="Entrar" class="ls-btn-primary ls-btn-block ls-btn-lg">
              </fieldset>
            </form>
          </div>
        </div>
      </div>
    </div>

    <script src="assets/js/jquery.min.js" type="text/javascript"></script>
    <script src="assets/js/locastyle.js" type="text/javascript"></script>
  </body>
</html>
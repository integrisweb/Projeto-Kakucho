<?PHP 
 $avatar = "assets/img/avatar/" .  $_SESSION['UsuarioNome'] . ".jpg";
?>

<div class="ls-topbar">
	<div class="ls-notification-topbar">
		<div data-ls-module="dropdown" class="ls-dropdown ls-user-account">
			<a href="#" class="ls-ico-user">
				<span class="ls-name"><?PHP echo $_SESSION['UsuarioNome']; ?></span>
				<img src="<?PHP echo $avatar?>" alt="" />
			</a>

			<nav class="ls-dropdown-nav ls-user-menu">
				<ul>
					<li><a href="perfil.php">Meu Perfil</a></li>
					<li><a href="logout.php">Sair</a></li>
				</ul>
			</nav>
		</div>
	</div>

	<span class="ls-show-sidebar ls-ico-menu"></span>

	<a href="index.php" class="ls-go-next">
		<span class="ls-text">Voltar ao início</span>
	</a>

	<h1 class="ls-brand-name">	
		<div>
			<img src="assets/img/ico-boilerplate.png" style="height: 45px; margin: 0px; float:left; " /> <a style="word-wrap: break-word; ">&nbsp;&nbsp;&nbsp;&nbsp;Projeto Kakucho</a>
		</div>
		
	</h1>
</div>
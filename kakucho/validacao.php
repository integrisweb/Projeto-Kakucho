<?PHP

	include 'inc/database.php';

	if(!empty($_POST) and (empty($_POST['user_name']) or empty($_POST['password']))){
		header('location: login.php');
		exit();
	}

	$usuario = $_POST['user_name'];
	$senha = $_POST['password'];

	$sql = "
		SELECT * 
		FROM usuario
		WHERE nome_usuario = '$usuario' AND senha_usuario = '$senha' AND situacao_usuario = 'N'
		LIMIT 1
	";

	$stm = $pdo->prepare($sql);
	$retorno = $stm->execute();
	$linhas = $stm->rowCount ();

	if ($linhas != 1) {
		header("location: login.php"); 
		exit;
	} else {
	  	if(!isset($_SESSION)) session_start();

		foreach ($pdo->query($sql) as $row) {
			$_SESSION['UsuarioID'] = $row['id_usuario'];
			$_SESSION['UsuarioNome'] = $row['nome_usuario'];
			$_SESSION['UsuarioNivel'] = $row['nivel_usuario'];
		}

	  header("location: index.php");
	}

?>
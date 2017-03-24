<?php

  if (!isset($_SESSION)) session_start();

  if (!isset($_SESSION['UsuarioID'])) {
    session_destroy();
    header("location: login.php"); 
    exit;
  }

  include "inc/header.php";

?>

   </body>
</html>
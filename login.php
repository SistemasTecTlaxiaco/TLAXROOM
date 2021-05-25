<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login_TlaxRoom</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimun-scale=1.0">
	<!--Estilos-->
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet"  href="image/icon/style.css">
    
	<!--Jquery-->
</head>
<body>
<!--contenedor de formularios-->	
<div class="container-form">
	<div class="header">
		<div class="logo-title">
			<img src="image/logo_tlax_room.png" alt="">
		</div>
		<div class="menu">
			<a href="#login_inquilino.php"><li class="module-login active">Inquilino</li></a>
			<a href="#login_arrendador.php"><li class="module-logina">Arrendador</li></a>
		</div>
	</div>
	<div id="login_inquilino" >
			<form action="/" method="post" class="form">
				<div class="welcome-form"><h1>Bienvenido<h1></div>
				<div class="user line-input">
					<label class="lnr lnr-user"></label>
					<input type="email"required autocomplete="off" placeholder="Nombre de usuario" name="usuario"/>
				</div>
				<div class="password line-input">
					<label class="lnr lnr-lock"></label>
					<input type="password"required autocomplete="off" placeholder="Contraseña" name="clave"/>
				</div>
				<p class="forgot"><a href="#">Olvidaste la contraseña?</a></p>
					
				<button type="submit" class="button button-block">Iniciar Sesión</button>
			</form>
	</div>
</div>
<script src="js/jquery.js"></script>
<script src="js/script.js"></script>
<link href="css/style.css<?=date('Y-m-d H:i:s')?>" rel="stylesheet" type="text/css">
</body>
</html>
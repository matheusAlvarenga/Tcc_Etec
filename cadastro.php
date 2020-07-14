<!DOCTYPE html>
<html>
<head>
	<?php include('head.php') ?>
</head>
<body>

	<?php include('header.php') ?>

	<!-- Começo Código -->
	<div class="container  form-cad w3-container">
		<form method="post" action="cadastra_usuario.php" id="formlogin">
			<div class="img-form">
			<img src="img/logo_cima.png">
			</div>
			<h3>Cadastro</h3>
			<h4>Crie sua conta Horizon Star</h4>
			<div class="form-group  primeiro-input">
				<p>Usuário</p>
				<input class="w3-input" type="text" name="usuario">
			</div>
			<div class="form-group">
				<p>Email</p>
				<input class="w3-input" type="email" name="email">
			</div>
			<div class="form-group">
				<p>Senha</p>
				<input class="w3-input" type="password" name="senha">
			</div>
			<div class="form-group  ultimo-input">
				<p>Confirme a Senha</p>
				<input class="w3-input" type="password" name="senha2">
			</div>

			<button type="submit" class="btn btn-primary form-control" id="btn_login">Cadastrar</button>
			<br>
			<a href="login.php">Já tem uma conta?</a>
		</form>
	</div>




	<!-- Fim do Código -->

	<?php include('footer.php') ?>

</body>
</html>
<?php

	$erro = isset($_GET['erro']) ? $_GET['erro'] : 0;
?>
<!DOCTYPE html>
<html>
<head>
	<?php include('head.php') ?>

	<script>
			$(document).ready(function(){

				$('#btn_login').click(function(){

					var campo_vazio = false;

					if($('#email').val() == ''){
						$('#email').css({'border-color' : '#A94442'});
						campo_vazio = true;
					}else{
						$('#email').css({'border-color' : '#CCC'});
					}

					if($('#senha').val() == ''){
						$('#senha').css({'border-color' : '#A94442'});
						campo_vazio = true;
					}else{
						$('#senha').css({'border-color' : '#CCC'});
					}

					if(campo_vazio) return false;

				});

			});

		</script>

</head>
<body>
	
	<?php include('header.php') ?>

	<!-- Começo Código -->

	<div class="container form-cad w3-container"> 
		<form method="post" action="validar_acesso.php" id="formlogin">
			<div class="img-form">
			<img src="img/logo_cima.png">
			</div>
			<h3>Login</h3>
			<h4>Utilize sua conta Horizon Star</h4>
			<div class="form-group primeiro-input">
				<p>E-mail</p>
				<input class="w3-input" type="text" name="email" id="email">
			</div>
			<div class="form-group ultimo-input">
				<p>Senha</p>
				<input class="w3-input" type="password" name="senha" id="senha">
			</div>

			<button type="submit" class="btn btn-primary form-control" id="btn_login">Logar</button>
			<br>
			<a href="cadastro.php">Ainda não esta cadastrado?</a><br><br>
			<?php

				if($erro == 1){
				echo '<font color="#FF0000">Usuário e ou senha inválido(s)</font>';
					}

				if($erro == 2){
				echo '<font color="#FF0000">É necessário estar conectado a uma conta.</font>';
					}				

				?>
		</form>
		
	</div>


	<!-- Fim do Código -->

	<?php include('footer.php') ?>

</body>
</html>
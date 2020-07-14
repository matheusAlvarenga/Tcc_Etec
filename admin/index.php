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

					if($('#usuario').val() == ''){
						$('#usuario').css({'border-color' : '#A94442'});
						campo_vazio = true;
					}else{
						$('#usuario').css({'border-color' : '#CCC'});
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
	
	<?php include('header_bloq.php') ?>

	<!-- Começo Código -->

	<div class="container form-cad w3-container"> 
		<form method="post" action="validar_acesso_admin.php" id="formlogin">
			<div class="img-form">
			<img src="img/logo_form.png">
			</div>
			<h3>Login</h3>
			<h4>Acesso à Área do Administrador</h4>
			<div class="form-group primeiro-input">
				<p>Usuário</p>
				<input class="w3-input" type="text" name="usuario" id="usuario">
			</div>
			<div class="form-group ultimo-input">
				<p>Senha</p>
				<input class="w3-input" type="password" name="senha" id="senha">
			</div>

			<button type="submit" class="btn btn-primary form-control" id="btn_login">Logar</button>
			<br>
			<?php

				if($erro == 1){
				echo '<font color="#FF0000">Usuário e ou senha inválido(s)</font>';
					}

				?>
		</form>
		
	</div>


	<!-- Fim do Código -->
</body>
</html>
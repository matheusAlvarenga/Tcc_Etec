<!DOCTYPE html>
<html>
<head>
	<?php include('head.php') ?>
</head>
<body>
	<?php include('header.php') ?>

	<div class="container contato">	
		<div class="col-md-12">
			<h2>Entre em Contato pelo nosso email</h2>
			<form action="email.php" method="post">
				<div class="col-md-6 form-contato">
					<span class="texto-contato">Nome</span>
					<input class="form-control" type="text" name="name">
					<span class="texto-contato">Email</span>
					<input class="form-control" type="text" name="email">
					<span class="texto-contato">Assunto</span>
					<input class="form-control" type="text" name="assunto">
				</div>
				<div class="col-md-6">
					<span class="msg-title-form">Mensagem</span>
					<textarea class="form-control msg-cont" name="mensagem"></textarea>
					<button type="submit" class="btn btn-primary">Enviar</button>
				</div>
			</form>
		</div>
	</div>
	<?php include('pages/footer-fixed.php') ?>
</body>
</html>
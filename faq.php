<!DOCTYPE html>
<html>
<head>
	<?php include('head.php') ?>
</head>
<body>
	<?php include('header.php') ?>

	<div class="container">
		<div class="row faq">
			<h1>Perguntas Frequentes</h1>
			<div class="col-md-12 col-faq">
				<a class="btn-faq" data-toggle="collapse" href="#collapse1" role="button" aria-expanded="false" aria-controls="collapse1">
				  <h2>Pergunta 1</h2>
				</a>
				<div class="collapse resp" id="collapse1">
				  <h3>Resposta 1</h3>
				</div>
				</div>
			<div class="col-md-12 col-faq">
				<a class="btn-faq" data-toggle="collapse" href="#collapse2" role="button" aria-expanded="false" aria-controls="collapse2">
				  <h2>Pergunta 2</h2>
				</a>
				<div class="collapse resp" id="collapse2">
				  <h3>Resposta 2</h3>
				</div>
			</div>
			<div class="col-md-12 col-faq">
				<a class="btn-faq" data-toggle="collapse" href="#collapse3" role="button" aria-expanded="false" aria-controls="collapse3">
				  <h2>Pergunta 3</h2>
				</a>
				<div class="collapse resp" id="collapse3">
				  <h3>Resposta 3</h3>
				</div>
			</div>
		</div>
	</div>

	<?php include('pages/footer-fixed.php') ?>
</body>
</html>
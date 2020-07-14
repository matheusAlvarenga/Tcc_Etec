<!DOCTYPE html>
<html>
<head>
	<?php include("head.php") ?>
</head>
<body>
<?php include("header.php") ?>
<div class="container">
	<form action="boleto/boleto_itau.php" method="POST">
		<br>
		<input type="text" name="endereco" placeholder="Digite seu endereço"><br>
		<input type="text" name="cep" placeholder="Digite seu CEP"><br>

		<?php 
			$valor = $_GET['valor'];

			echo "<input type='text' name='valor' value='$valor'><br>";
		?>

		<input type="submit" value="Pagar com Boleto">
		<input type="submit" value="Pagar com Cartão (WIP)" disabled="disabled">
	</form>
</div>
<?php include("pages/footer-fixed.php") ?>
</body>
</html>
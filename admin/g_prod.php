<html>
<head>
	<?php include('head.php') ?>
</head>
<body>

	<?php include('header.php') ?>
	
	<?php

	$servername = "127.0.0.1";
	$username = "root";
	$password = "";
	$dbname = "horizon_star";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 

	?>

	<div class="container">
	<h2>Cadastro de Produtos</h2>
	<form method="post" action="add_produto.php" id="formlogin" enctype="multipart/form-data">
			<div class="form-group ultimo-input">
				Nome<input class="w3-input" type="text" name="nome" id="nome">
			</div>
			<div class="form-group ultimo-input">
				Preço<input class="w3-input" type="text" name="preco" id="preco">
			</div>
			<div class="form-group ultimo-input">
				Descriçao<input class="w3-input" type="text" name="desc" id="desc">
			</div>
			<p>Categoria</p>
			<select class="w3-select" name="categoria" id="categoria">
				<option value="1">Camisa</option>
				<option value="2">Caneca</option>
				<option value="3">Quadro</option>
				<option value="4">Poster</option>
			</select>
			<br><br>

			Fotos
			<ul>
				<li style="display: inline-block; width: 20%;"><input type="file" name="foto" /></li>
				<li style="display: inline-block; width: 20%;"><input type="file" name="foto2" /></li>
				<li style="display: inline-block; width: 20%;"><input type="file" name="foto3" /></li>
				<li style="display: inline-block; width: 20%;"><input type="file" name="foto4" /></li>
			</ul><br /><br />
			Thumbs
			<ul>
				<li style="display: inline-block; width: 20%;"><input type="file" name="foto5" /></li>
				<li style="display: inline-block; width: 20%;"><input type="file" name="foto6" /></li>
			</ul><br /><br />

			<button type="submit" name="cadastrar" class="btn btn-primary form-control" id="btn_login">Cadastrar Produto</button>
			<br>
			
		</form>
		</div>



		<div class="container">
	<h2>Desativação de Produtos</h2>
	<form method="post" action="del_produto.php" id="formlogin">
			<div class="form-group ultimo-input">
				ID<input class="w3-input" type="text" name="id" id="id">
			</div>
			<button type="submit" class="btn btn-primary form-control" id="btn_login">Desativar Produto</button>
			<br>
			
		</form>
		</div>

		<div class="container">
		<h2>Ativação de Produto</h2>
		<form method="post" action="ati_produto.php" id="formlogin">
			<div class="form-group ultimo-input">
				ID<input class="w3-input" type="text" name="id" id="id">
			</div>

			<button type="submit" class="btn btn-primary form-control" id="btn_login">Ativar Produto</button>
			<br>
			
		</form>
		</div>

			<div class="container">
		<h2>Alterar Produto</h2>
		<form method="post" action="alter_produto.php" id="formlogin">
			<div class="form-group ultimo-input">
				ID<input class="w3-input" type="text" name="id" id="id">
			</div>

			<button type="submit" class="btn btn-primary form-control" id="btn_login">Alterar Produto</button>
			<br>
			
		</form>
		</div>


		<div class="container">
		<h2>Tabela de Produtos</h2>
	<?php
	// TABELA PRODUTOS

	$sql = "SELECT idprodutos, nome, preco, Categorias_idCategorias, habilitado FROM produtos";
	$result = $conn->query($sql);

	$categ = "Categorias_idCategorias";

	if ($result->num_rows > 0) {
	    echo "<table border='2' style='margin-left: 15px; width: 98%; margin-bottom: 50px;'><tr><th>ID</th><th>Nome</th><th>Preço</th><th>Categoria</th><th>Habilitado</th></tr>";
	    // output data of each row
	    while($row = $result->fetch_assoc()) {
	        echo "<tr><td>".$row["idprodutos"]."</td><td>".$row["nome"]."</td><td>".$row["preco"]."</td><td>".$row["Categorias_idCategorias"]."</td><td>".$row["habilitado"]."</td></tr>";
	    }
	    echo "</table>";
	} else {
	    echo "0 resultados";
	}

	?>
	<!-- exibir produtos -->
</div>


<?php 
	include('footer.php');
?>
</body>
</html>
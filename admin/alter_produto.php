<html>
<head>
	<?php include('head.php') ?>
	<meta charset="utf-8">
</head>
<body>

	<?php include('header.php') ?>
	
	<?php

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "horizon_star";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 

	$id = $_POST['id'];

			$id1;
			$id2;
			$id3;
			$id4;
			$id5;

			$sql = "SELECT idprodutos, nome, preco, descricao, Categorias_idCategorias, habilitado FROM produtos WHERE idprodutos = '$id';";
			$result = $conn->query($sql);

			if ($result->num_rows > 0) {
	    		echo "<script> function mudarinfos(){";
	    		//output data of each row
	    	while($row = $result->fetch_assoc()) {
	        	echo "document.getElementById('id').value ='".$row["idprodutos"]."';";
	        	echo "document.getElementById('nome').value ='".$row["nome"]."';";
	        	echo "document.getElementById('preco').value ='".$row["preco"]."';";
	        	echo "document.getElementById('desc').value ='".$row["descricao"]."';";
	        	echo "document.getElementById('".$row["Categorias_idCategorias"]."').selected = 'selected';";
	        	$id1=$row["idprodutos"];
	        	$id2=$row["nome"];
	        	$id3=$row["preco"];
	        	$id4=$row["descricao"];
	        	$id5=$row["Categorias_idCategorias"];
	    	}
	    		echo "}</script>";
			} else {
	    		echo "O produto é inexistente";
			}

	?>
	<div onload="mudarinfos()" class="container">
		<h2>Alterar Produto</h2>
		<form method="post" action="prod_alter.php" id="formlogin">
			<div class="row">
				<div class="form-group ultimo-input col-md-2">
					ID<input class="w3-input" type="text" name="id" id="id" value=<?php echo "$id1"; ?> >
				</div>
				<div class="form-group ultimo-input col-md-3">
					Nome<input class="w3-input" type="text" name="nome" id="nome" value=<?php echo "$id2"; ?>>
				</div>
				<div class="form-group ultimo-input col-md-2">
					Preco<input class="w3-input" type="text" name="preco" id="preco" value=<?php echo "$id3"; ?>>
				</div>
				<div class="form-group ultimo-input col-md-3">
					Descricao<input class="w3-input" type="text" name="desc" id="desc" value=<?php echo "$id4"; ?>>
				</div>
				<div class="form-group ultimo-input col-md-2">
					Categoria<br><select name="categoria" class="w3-select" id="categoria">
								<?php
									if($id5 == ''){
										echo "<option value='1' selected>Camisetas</option>";
									}
									else{
										echo "<option value='1'>Camisetas</option>";
									}
									if($id5 == '2'){
										echo "<option value='2' selected>Canecas</option>";
									}
									else{
										echo "<option value='2'>Canecas</option>";
									}
									if($id5 == '3'){
										echo "<option value='3' selected>Quadros</option>";
									}
									else{
										echo "<option value='3'>Quadros</option>";
									}
									if($id5 == '4'){
										echo "<option value='4' selected>Posters</option>";
									}
									else{
										echo "<option value='4'>Posters</option>";
									}
								?>
							 </select>
				</div>

			<button type="submit" class="btn btn-primary form-control" name="alterar" id="btn_login">Alterar Produto</button>
			<br>
			
		</form>
	</div>



	<?php 	

	require_once('../db.class.php');

    $objDb = new db();
    $link = $objDb->conecta_mysql();
    
    $sql = "SELECT * FROM produtos WHERE idprodutos = $id";

    $resultado_id = mysqli_query($link, $sql); ?>


	<div class="container">
		<h2>Alterar Fotos</h2>
		<form method="post" action="alter_foto.php" id="formlogin" enctype="multipart/form-data">
			<div class="row">
				<div class="form-group ultimo-input col-md-12">
					ID<input class="w3-input" type="text" name="id" id="id" value=<?php echo "$id1"; ?> >
				</div>
				<div class="form-group ultimo-input col-md-12">
					NOME<input class="w3-input" type="text" name="nome" id="nome" value=<?php echo "$id2"; ?> >
				</div>
			</div>
			<div class="row">
				<?php if($resultado_id){
			 		while($registro = mysqli_fetch_array($resultado_id, MYSQLI_ASSOC)){

			 		echo"

					<div class='form-group ultimo-input col-md-2'>
							Foto 1<br><img width='150' src='img/produtos/".$registro['foto1']."'><br><input class='w3-input' type='file' name='foto1' id='foto1'>
					</div>
					<div class='form-group ultimo-input col-md-2'>
							Foto 2<br><img width='150' src='img/produtos/".$registro['foto2']."'><br><input class='w3-input' type='file' name='foto2' id='foto2'>
					</div>
					<div class='form-group ultimo-input col-md-2'>
							Foto 3<br><img width='150' src='img/produtos/".$registro['foto3']."'><br><input class='w3-input' type='file' name='foto3' id='foto3'>
					</div>
					<div class='form-group ultimo-input col-md-2'>
							Foto 4<br><img width='150' src='img/produtos/".$registro['foto4']."'><br><input class='w3-input' type='file' name='foto4' id='foto4'>
					</div>
				</div>
				<div class='row'>
					<div class='form-group ultimo-input col-md-2'>
							Thumb 1<br><img width='150' src='img/produtos/".$registro['thumb1']."'><br><input class='w3-input' type='file' name='foto5' id='foto5'>
					</div>
					<div class='form-group ultimo-input col-md-2'>
							Thumb 2<br><img width='150' src='img/produtos/".$registro['thumb2']."'><br><input class='w3-input' type='file' name='foto6' id='foto6'>
					</div>
				</div> ";

			}
			}
				?>
			<button type="submit" class="btn btn-primary form-control" name="alterar" id="btn_login">Alterar Fotos</button>
			<br>
		</form>
	</div>







	<div class="container">
	<?php
	//Tabela produto

	$id = $_POST['id'];

	$sql = "SELECT idprodutos, nome, preco, descricao, habilitado FROM produtos WHERE idprodutos = '$id';";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	    echo "<table border='2' style='margin-left: 15px; width: 98%; margin-bottom: 50px;'><tr><th>ID</th><th>Nome</th><th>Preço</th><th>Descrição</th><th>Habilitado</th></tr>";
	    // output data of each row
	    while($row = $result->fetch_assoc()) {
	        echo "<tr><td>".$row["idprodutos"]."</td><td>".$row["nome"]."</td><td>".$row["preco"]."</td><td>".$row["descricao"]."</td><td>".$row["habilitado"]."</td></tr>";
	    }
	    echo "</table>";
	} else {
	    echo "O produto é inexistente";
	}

	?>
</div>

<div class="container">
		<h2>Procurar Produto</h2>
		<form method="post" action="alter_produto.php" id="formlogin">
			<div class="form-group ultimo-input">
			ID<input class="w3-input" type="text" name="id" id="id">
			<button type="submit" class="btn btn-primary form-control" id="btn_login">Alterar Produto</button>
			<br>
</div>


</body>
</html>
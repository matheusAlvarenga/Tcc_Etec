<?php

 	require_once('db.class.php');

    $idcategoria = "3";

    $objDb = new db();
    $link = $objDb->conecta_mysql();
    
    $sql = "SELECT * FROM produtos WHERE Categorias_idCategorias = $idcategoria";

    $resultado_id = mysqli_query($link, $sql);

?>

<html>
<head>
	<?php include('head.php') ?>
</head>
<body class="list-prod">
	
	<?php include('header.php') ?>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 select-prod">
				<ul>
					<li><h3>Produtos</h3></li>
					<a href="lista-de-camisetas.php"><li class="prod">Camisetas</li></a>
					<a href="lista-de-canecas.php"><li class="prod">Canecas</li></a>
					<a href="lista-de-quadros.php"><li class="prod">Quadros</li></a>
					<a href="lista-de-posters.php"><li class="prod">Posters</li></a>
				</ul>
			</div>
			<div class="col-md-9">
				<h2>Quadros</h2>
				<div class="produtos">
				<ul>

<?php
    if($resultado_id){

        while($registro = mysqli_fetch_array($resultado_id, MYSQLI_ASSOC)){
        	//ALVARENGA <img src='admin/img/produtos/".$registro['foto2']."'>  ESTE É O CÓDIGO DE ADICIONAR A 2 FOTO
		   echo "<li class='proddd'><img src='admin/img/produtos/".$registro['foto1']."'><br><span class='prod-name'>".$registro['nome']."</span><br><span class='price' name='preco'>".$registro['preco']."</span><br><a href='produto.php?prod=".$registro['idprodutos']."'><button type='submit' class='btn-list btn btn-success'>Comprar</button></a></li>";

        }

    }else{
    
        echo 'Erro na consulta de tweets no banco de dados!';

    }




?>

			</ul>
			</div>
			</div>
		</div>
	</div>




	<?php include('footer.php') ?>

</body>
</html>
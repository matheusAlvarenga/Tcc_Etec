<!DOCTYPE html>
<html>
<head>
	<?php include('head.php') ?>
	<style type="text/css">
input[type=radio] {
  position: absolute;
  visibility: hidden;
  display: none;
}

label {
  color: #332f30;
  display: inline-block;
  cursor: pointer;
  font-weight: bold;
  padding: 7px 30px;
  margin-bottom: 0px;
  margin-right: 0px;
}

input[type=radio]:checked + label{
  color: white;
  background: #332f30;
}

.radio-group {
  border: solid 3px #332f30;
  display: inline-block;
  margin: 20px;
  margin-left: 70px;
  border-radius: 10px;
  overflow: hidden;
}

@import url('https://fonts.googleapis.com/css?family=Roboto');
	</style>
</head>
<body>
	<?php include('header.php') ?>

<?php
	 	require_once('db.class.php');

	 $idprod = $_GET['prod'];

	$objDb = new db();
    $link = $objDb->conecta_mysql();
    
    $sql = "SELECT * FROM produtos WHERE idprodutos='$idprod'";

    $resultado_id = mysqli_query($link, $sql);


if($resultado_id){
	while($registro = mysqli_fetch_array($resultado_id, MYSQLI_ASSOC)) { 

echo"

	<div class='container'>
		<div class='row produto'>
			<div class='col-md-6 img-produto'>
				<ul id='vertical'>
				  <li data-thumb='/site/admin/img/produtos/".$registro['foto1']."'>
				    <div class='crop'><img src='/site/admin/img/produtos/".$registro['foto1']."' /></div>
				  </li>
				  <li data-thumb='/site/admin/img/produtos/".$registro['foto2']."'>
				    <div class='crop'><img src='/site/admin/img/produtos/".$registro['foto2']."' /></div>
				  </li>
				  <li data-thumb='/site/admin/img/produtos/".$registro['foto3']."'>
				    <div class='crop'><img src='/site/admin/img/produtos/".$registro['foto3']."' /></div>
				  </li>
				  <li data-thumb='/site/admin/img/produtos/".$registro['foto4']."'>
				    <div class='crop'><img src='/site/admin/img/produtos/".$registro['foto4']."' /></div>
				  </li>
				</ul>		
       		</div>
       			<!-- Slider -->
				  <script type='text/javascript'>
				  	$(document).ready(function() {
				    $('#vertical').lightSlider({
				      gallery:true,
				      item:1,
				      vertical:true,
				      verticalHeight:400,
				      vThumbWidth:50,
				      thumbItem:4,
				      thumbMargin:4,
				      slideMargin:0
				    });  
				  });
				</script>
				<!-- Slider -->
			<div class='col-md-6 info-produto'>
				<h2 class='title-produto'>".$registro['nome']."</h2>
				<div class='compra-produto'>
					<div class='preco'>
						<p>R$".$registro['preco']."</sup></p>
					</div>
				</div>
				<form method='post' action='addcar.php?prod=$idprod' id='formprod'>
					<h3 class='title-tamanho'>Tamanho</h3>
					<div class='tamanho-produto'>
							<div class='radio-group'>
								<input type='radio' id='option-one' name='selector'><label for='option-one'>PP</label>
								<input type='radio' id='option-two' name='selector'><label for='option-two'>P</label>
								<input type='radio' checked id='option-three' name='selector'><label for='option-three'>M</label>
								<input type='radio' id='option-four' name='selector'><label for='option-four'>G</label>
								<input type='radio' id='option-five' name='selector'><label for='option-five'>GG</label>
 							</div>				
					</div>
					<h3 class='title-quant'>Quantidade</h3>
					<div class='prod-info-end'>
						<input class='quant' type='number' name='quant' max='15' min='1' value='1'/>
					</div>
					<div class='comprar row'>
						<input type='submit' name='btn-comprar' value='Comprar' style='padding-left: 10px;'/>
					</div> 
				</form>
			</div>
		</div>
		<div class='description row'>
			<div class='box-desc col-12-md'>
				<h2>".$registro['nome']."</h2>
				<p>".$registro['descricao']."</p>
			</div>
		</div>
	</div>

";
}}

?>

	<?php include('footer.php') ?>
</body>
</html>
<?php 
	include('head.php');
	include('header.php');
?>


<div class="container adm_home_corpo">
	
	<div class="row">
		<div class="col-md-6 adm_home_parte">
			<h1>GERENCIAMENTO <br> DE PRODUTOS</h1>
			<p>Página destinada ao cadastro, exclusão e modificação de produtos.</p>
			<a href="g_prod.php"><img src="img/btn.png"></a>
		</div>
		<div class="col-md-6 adm_home_parte">
			<h1>GERENCIAMENTO <br> DE CLIENTES</h1>
			<p>Página destinada a checagem, exclusão e modificação de clientes.</p>
			<a href="g_client.php"><img src="img/btn.png"></a>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6 adm_home_parte">
			<h1>GERENCIAMENTO <br> DE VENDAS</h1>
			<p>Página destinada a checagem, exclusão e modificação de vendas.</p>
			<a href="g_vend.php"><img src="img/btn.png"></a>
		</div>
		<div class="col-md-6 adm_home_parte">
			<h1>ADMIN<br> MASTER</h1>
			<p>Local destinado Apenas para admins principais</p>
			<a href="master_login.php"><img src="img/btn.png"></a>
		</div>
	</div>

</div>



<?php 
	include('footer.php');
?>
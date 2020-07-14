  <!-- CARRINHO --> 
    
<div style="display: none;" id="carrinho" class="container-fluid carrinho">
  <div class="row">
    <div id="carrinho_fundo" class="col-md-9 carrinho_fundo" onclick="abrir_carrinho()">
    </div>
    <div class="col-md-3 carrinho_divi">
      <div class="carrinho_cabeca">
        <div onclick="abrir_carrinho()" class="carrinho_close">
          <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>      
        </div>
        <div class="carrinho_titulo">
          <h2>Meu Carrinho</h2>
        </div>
      </div>
      <div class="list_prod">
        <ul>
          <li><div class="container-fluid carrinho_prod">
            <div class="col-md-3"><img width="60px" src="img/logo_cima.png"></div>
            <div class="col-md-7"><div class="carrinho_prod_title"><h3>Título Produto</h3></div>
              <div class="carrinho_prod_preco"><h4>Preço</h4></div></div>
            <div class="col-md-2 carrinho_prod_retirar"><span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></div>
          </div></li>
        </ul>
        <div class="carrinho_btn">
          <a href="#" class="carrinho_fin_btn">FINALIZAR A COMPRA</a>
        </div>
      </div>
    </div>
  </div>
</div>

 <!-- Menu Normal -->
<div id="menu_nml">
  <div class="container-fluid">
    <div class="row">
      <nav class="navbar navbar-default">
        <div class="col-md-5 col-sm-10 col-xs-10" >
          <div class="collapse navbar-collapse menu">
            <ul class="nav navbar-nav menu_cima">
              <li><a href="index.php">Home</a></li>
              <li><a href="faq.php">FAQ</a></li>
              <li><a href="sobre-nos.php">Sobre Nós</a></li>
              <li><a href="contato.php">Contatos</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-2">
           <div class="navbar-header logo menu">
             <a href="index.php" class="navbar-brand"><img src="img/logo_cima.png"></a>
           </div>
        </div>
        <div class="col-md-5 col-sm-10 col-xs-10">
          <ul class="nav navbar-nav navbar-right menu">
            <li><a href="#"><span class="glyphicon glyphicon-search menu-icon"></span></a></li>
            <li><a href="#"><span class="glyphicon glyphicon-heart menu-icon"></span></a></li>
            <li><a href="login.php"><span class="glyphicon glyphicon-user menu menu-icon"></span></a></li>
            <li><a style="cursor: pointer;" href="carrinho.php"><span class="glyphicon glyphicon-shopping-cart menu-icon"></span></a></li>
          </ul>
        </div>
      </nav> 
    </div>
  </div>
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-5"></div>
      <div class="col-md-2 logo_baixo"><img src="img/logo_tipo_cima.png"></div>
      <div class="col-md-5"></div>
    </div>
  </div>
  <div class="container-fluid">
    <div class="row menu">
        <ul class="nav navbar menu_baixo">
          <div class="col-md-2"><li><a href="lista-de-canecas.php">CANECAS</a></li></div>
          <div class="col-md-2"><li><a href="lista-de-camisetas.php"> CAMISETAS</a></li></div>
          <div class="col-md-2"><li><a href="lista-de-quadros.php"> QUADROS</a></li></div>
          <div class="col-md-2"><li><a href="lista-de-posters.php"> POSTERS</a></li></div>
          <div class="col-md-2"><li><a href="msa.php"> MONTE SUA ARTE</a></li></div>
          <div class="col-md-2"><li><a href="donation.php"> DOAÇÕES</a></li></div>
        </ul>
    </div>
  </div>
</div>


<!-- Menu Hamburguer -->

<div id="menu_hmb">
  <div class="container-fluid">
    <div class="row hmb_cabeca">
      <div class="col-md-1">
          <img class="hmb_image" src="img/hmb_img.png" onclick="abrir_menu()">
      </div>
      <div class="col-md-4"></div>
      <div class="col-md-2">
        <div class="navbar-header logo_hmb logo menu">
             <a href="#" class="navbar-brand"><img src="img/logo_cima.png"></a>
           </div>
      </div>
      <div class="col-md-5"></div>
    </div>
  </div>
</div>
<div style="display: none;" id="hmb_aberto">
  <div class="hmb_aberto_logo">
    <img src="img/logo_tipo_cima.png">
  </div>
  <div class="hmb_aberto_menu_um">
    <ul>
      <li><a>Home</a></li>
      <li><a>FAQ</a></li>
      <li><a>Sobre Nós</a></li>
      <li><a>Contatos</a></li>
    </ul>
  </div>
  <div class="hmb_aberto_menu_dois">
    <ul>
      <li><a>Pesquisar</a></li>
      <li><a>Favoritos</a></li>
      <li><a>Minha Conta</a></li>
      <li><a>Carrinho</a></li>
    </ul>
  </div>
  <div class="hmb_aberto_menu_tres">
    <ul>
      <li><a>Canecas</a></li>
      <li><a>Camisetas</a></li>
      <li><a>Quadros</a></li>
      <li><a>Monte Sua Arte</a></li>
      <li><a>Doações</a></li>
      <li><a>Informações</a></li>
    </ul>
  </div>
</div>
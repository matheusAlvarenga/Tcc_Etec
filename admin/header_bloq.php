<!-- Menu Normal -->
<div id="menu_nml">
  <div class="container-fluid">
    <div class="row ">
      <nav class="navbar navbar-default menuu">
        <div class="col-md-5 col-sm-10 col-xs-10" >
          <div class="collapse navbar-collapse menu">
            <ul class="nav navbar-nav menu_cima">
              <li><a href="../index.php"><--- Voltar para o site</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-2">
           <div class="navbar-header logo menu">
             <a href="index.php" class="navbar-brand"><img src="img/logo_grande.png"></a>
           </div>
        </div>
      </nav> 
    </div>
  </div>
</div>

<!-- Menu Hamburguer -->

<div id="menu_hmb">
  <div class="container-fluid">
    <div class="row hmb_cabeca">
      <div class="col-md-1">
          <img class="hmb_image" src="../img/hmb_img.png" onclick="abrir_menu()">
      </div>
      <div class="col-md-4"></div>
      <div class="col-md-2">
        <div class="navbar-header logo menu">
             <a href="#" class="navbar-brand"><img src="../img/logo_cima.png"></a>
           </div>
      </div>
      <div class="col-md-5"></div>
    </div>
  </div>
</div>
<div style="display: none;" id="hmb_aberto">
  <div class="hmb_aberto_logo">
    <img src="../img/logo_tipo_cima.png">
  </div>
  <div class="hmb_aberto_menu_um">
    <ul>
      <li><a>Home</a></li>
      <li><a>FAQ</a></li>
      <li><a>Sobre Nós</a></li>
      <li><a>Contatos</a></li>
    </ul>
  </div>
</div>

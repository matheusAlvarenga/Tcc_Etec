<?php
 

//Fabyo Guimaraes

 

//se existir o arquivo

if(isset($_FILES["arquivo"])){

 

$arquivo = $_FILES["arquivo"];

 

$pasta_dir = "arquivos/";//diretorio dos arquivos

//se nao existir a pasta ele cria uma

if(!file_exists($pasta_dir)){

mkdir($pasta_dir);

}

 

$arquivo_nome = $pasta_dir . $arquivo["name"];

 

// Faz o upload da imagem

move_uploaded_file($arquivo["tmp_name"], $arquivo_nome);

 

//conecta no banco

$cn = mysql_connect("127.0.0.1");

mysql_select_db("horizon_star");

 

//aqui salva no banco o path da foto

<font face="verdana">mysql_query("UPDATE produtos SET ('', '$arquivo_nome') WHERE idprodutos = '5'");
mysql_close($cn); </font>
 

}

 

?>
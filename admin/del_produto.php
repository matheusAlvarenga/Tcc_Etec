<?php
    require_once('../db.class.php');

    $id = $_POST['id'];

    $objDb = new db();
    $link = $objDb->conecta_mysql();

    $sql = "UPDATE produtos set habilitado = 'desabilitado' where idprodutos = '$id';";

    if ($link->query($sql) === TRUE) {
    include("g_prod.php");
} else {
    echo "Putz";
}


?>
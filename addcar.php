<?php
    session_start();

    if(!isset($_SESSION['idcliente'])){
        header('Location: login.php?erro=2');
    }

    require_once('db.class.php');

    $idcliente = $_SESSION['idcliente'];
    $idprod = $_GET['prod'];
    $quant = $_POST['quant'];
    $tamanho = $_POST['tam'];


    $objDb = new db();
    $link = $objDb->conecta_mysql();

    $sql = "INSERT INTO cart (iduser, idprodutos, tamanho, quant) VALUES ('$idcliente', '$idprod', '$tamanho', '$quant')";

    //executar a query
    if(mysqli_query($link, $sql)){
         header("Location:carrinho.php?prod=$idprod");
    }else{
        echo "Erro ao acessar o carrinho";
    }




?>
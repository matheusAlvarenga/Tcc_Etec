<?php

    session_start();

    require_once('db.class.php');

    $email = $_POST['email'];
    $senha = $_POST['senha'];

    $sql = "SELECT * FROM usuarios WHERE email = '$email' AND senha = '$senha'";

    $objDb = new db();
    $link = $objDb->conecta_mysql();

    $resultado_id = mysqli_query($link, $sql);

    if($resultado_id){

        $dados_email = mysqli_fetch_array($resultado_id);

        if(isset($dados_email['email'])){

            $_SESSION['idcliente'] = $dados_email['idcliente'];
            $_SESSION['email'] = $dados_email['email'];

            header('Location: index.php');

        }else{

            header('Location: login.php?erro=1');

        }

    }else{
        
        echo "Erro na execução da consulta, favor entrar em contato com o admin do site";

    }

?>
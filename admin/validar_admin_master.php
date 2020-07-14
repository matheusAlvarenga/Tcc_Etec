<?php

    require_once('../db.class.php');

    $admin = $_POST['admin'];
    $senha = $_POST['senha'];

    $sql = "SELECT * FROM master_admin WHERE admin = '$admin' AND senha = '$senha'";

    $objDb = new db();
    $link = $objDb->conecta_mysql();

    $resultado_id = mysqli_query($link, $sql);

    if($resultado_id){

        $dados_usuario = mysqli_fetch_array($resultado_id);

        if(isset($dados_usuario['admin'])){

            include("adminmasterpage.php");

        }else{

            header('Location: index.php?erro=1');

        }

    }else{
        
        echo "Erro na execução da consulta, favor entrar em contato com o admin do site";

    }

?>
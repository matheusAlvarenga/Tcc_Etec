<?php
    include('functions.php');
    require_once('db.class.php');

    $usuario = $_POST['usuario'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];
    $confsenha = $_POST['senha2'];

    if($senha !== $confsenha){
        echo "<script>alert('As senhas não coincidem.'); history.back(1);</script>";
        die;
    }

    if($usuario == "" or $email == "" or $senha == ""){
        echo "<script>alert('Você precisa preencher todos os campos.'); history.back(1);</script>";
        die;
    }

    $objDb = new db();
    $link = $objDb->conecta_mysql();

    $sql = "INSERT INTO usuarios (usuario, email, senha) VALUES ('$usuario', '$email', '$senha')";

    //executar a query
    if(mysqli_query($link, $sql)){
        echo "<script>
        alert('Usúario cadastrado com sucesso.');
        </script>";
        header("Location:login.php");
    }else{
        echo "Erro ao registrar o usuário!";
    }




?>
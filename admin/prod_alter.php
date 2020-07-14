<?php
    include('../functions.php');
    require_once('../db.class.php');

    $id = $_POST['id'];
    $nome = $_POST['nome'];
    $preco = $_POST['preco'];
    $desc = $_POST['desc'];
    $cate = $_POST['categoria'];

    $objDb = new db();
    $link = $objDb->conecta_mysql();

    $idsql = "SELECT * FROM produtos WHERE idprodutos = $id";

    $resultado_id = mysqli_query($link, $idsql);

    if($resultado_id){
        while($registro = mysqli_fetch_array($resultado_id, MYSQLI_ASSOC)){
            if($nome == ''){
                $nome == $registro['nome'];
            }
            if($preco == ''){
                $preco == $registro['preco'];
            }
            if($desc == ''){
                $desc == $registro['descricao'];
            }
            if($cate == '0'){
                $cate == $registro['Categorias_idCategorias'];
            }
        }
    }


    $sql = "UPDATE produtos SET nome='$nome', preco='$preco', descricao='$desc', Categorias_idCategorias='$cate' WHERE idprodutos = '$id';";

    //executar a query
    if(mysqli_query($link, $sql)){
        include("alter_produto.php");
    }else{
        echo "PUTZ!";
    }




?>
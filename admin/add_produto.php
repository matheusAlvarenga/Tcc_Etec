<?php
// Conexão com o banco de dados
   require_once('../db.class.php');
// Se o usuário clicou no botão cadastrar efetua as ações
if (isset($_POST['cadastrar'])) {
    
    // Recupera os dados dos campos
    $nome = $_POST['nome'];
    $preco = $_POST['preco'];
    $desc = $_POST['desc'];
    $cate = $_POST['categoria'];
    $foto = $_FILES["foto"];
    $foto2 = $_FILES["foto2"];
    $foto3 = $_FILES["foto3"];
    $foto4 = $_FILES["foto4"];
    $foto5 = $_FILES["foto5"];
    $foto6 = $_FILES["foto6"];
    $fotonum = 1;

    $objDb = new db();
    $link = $objDb->conecta_mysql();

        $sql = "INSERT INTO produtos (nome, preco, descricao, habilitado, Categorias_idCategorias) VALUES ('$nome', '$preco', '$desc', 'habilitado','$cate');";
        
             if ($link->query($sql) === TRUE) {
                include("g_prod.php");
                } else {
                    echo "Putz1";
                }

    function addFoto($foto, $coluna, $nome){
    $objDb2 = new db();
    $link2 = $objDb2->conecta_mysql();
    // Se a foto estiver sido selecionada
    if (!empty($foto["name"])) {
        
        // Largura máxima em pixels
        $largura = 500;
        // Altura máxima em pixels
        $altura = 500;
        // Tamanho máximo do arquivo em bytes
        $tamanho = 100000;
 
        $error = array();
 
        // Verifica se o arquivo é uma imagem
        if(!preg_match("/^image\/(pjpeg|jpeg|png|gif|bmp)$/", $foto["type"])){
           $error[1] = "Isso não é uma imagem.";
        } 
    
        // Pega as dimensões da imagem
        $dimensoes = getimagesize($foto["tmp_name"]);
    
        // Verifica se a largura da imagem é maior que a largura permitida
        if($dimensoes[0] > $largura) {
            $error[2] = "A largura da imagem não deve ultrapassar ".$largura." pixels";
        }
 
        // Verifica se a altura da imagem é maior que a altura permitida
        if($dimensoes[1] > $altura) {
            $error[3] = "Altura da imagem não deve ultrapassar ".$altura." pixels";
        }
        
        // Verifica se o tamanho da imagem é maior que o tamanho permitido
        if($foto["size"] > $tamanho) {
            $error[4] = "A imagem deve ter no máximo ".$tamanho." bytes";
        }
 
        // Se não houver nenhum erro
        if (count($error) == 0) {
        
            // Pega extensão da imagem
            preg_match("/\.(gif|bmp|png|jpg|jpeg){1}$/i", $foto["name"], $ext);
 
            // Gera um nome único para a imagem
            $nome_imagem = md5(uniqid(time())) . "." . $ext[1];
 
            // Caminho de onde ficará a imagem
            $caminho_imagem = "img/produtos/" . $nome_imagem;
 
            // Faz o upload da imagem para seu respectivo caminho
            move_uploaded_file($foto["tmp_name"], $caminho_imagem);
        
            // Insere os dados no banco
            $sql2 = "UPDATE produtos SET $coluna = '$nome_imagem' WHERE nome='$nome';";
        
             if ($link2->query($sql2) === TRUE) {
                echo "$nome_imagem , $coluna";
                } else {
                    echo "Putz";
                }
        }
    }
}

                

        if ($fotonum == 1) {
               addFoto($foto,'foto1',$nome);
               $fotonum++;
        }
        if ($fotonum == 2) {
               addFoto($foto2,'foto2',$nome);
               $fotonum++;
        }
        if ($fotonum == 3) {
               addFoto($foto3,'foto3',$nome);
               $fotonum++;
        }
        if ($fotonum == 4) {
               addFoto($foto4,'foto4',$nome);
               $fotonum++;
        }
        if ($fotonum == 5) {
               addFoto($foto5,'thumb1',$nome);
               $fotonum++;
        }
        if ($fotonum == 6) {
               addFoto($foto6,'thumb2',$nome);
               $fotonum++;
        }

    }
?>
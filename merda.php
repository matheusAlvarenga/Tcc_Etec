<?php
      session_start();
       if(!isset($_SESSION['carrinho'])){
         $_SESSION['carrinho'] = array();
      }
       //adiciona produto
       if(isset($_GET['acao'])){
          //ADICIONAR CARRINHO
         if($_GET['acao'] == 'add'){
            $codigo = intval($_GET['codigo']);
            if(!isset($_SESSION['carrinho'][$codigo])){
               $_SESSION['carrinho'][$codigo] = 1;
            }else{
               $_SESSION['carrinho'][$codigo] += 1;
            }
         }
          //REMOVER CARRINHO
         if($_GET['acao'] == 'del'){
            $codigo = intval($_GET['codigo']);
            if(isset($_SESSION['carrinho'][$codigo])){
               unset($_SESSION['carrinho'][$codigo]);
            }
         }
          //ALTERAR QUANTIDADE
         if($_GET['acao'] == 'up'){
            if(is_array($_POST['prod'])){
               foreach($_POST['prod'] as $codigo => $quantidade){
                  $codigo  = intval($codigo);
                  $quantidade = intval($quantidade);
                  if(!empty($quantidade) || $quantidade <> 0){
                     $_SESSION['carrinho'][$codigo] = $quantidade;
                  }else{
                     unset($_SESSION['carrinho'][$codigo]);
                  }
               }
            }
         }
       }
 ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>JapaFood</title>
</head>
 <body>
<table>
    <caption>Carrinho de Compras</caption>
    <thead>
          <tr>
            <th width="244">Produto</th>
            <th width="79">Quantidade</th>
            <th width="89">Pre&ccedil;o</th>
            <th width="100">SubTotal</th>
            <th width="64">Remover</th>
          </tr>
    </thead>
            <form action="?acao=up" method="post">
    <tfoot>
           <tr>
            <td colspan="5"><input type="submit" value="Atualizar Carrinho" /></td>
            <tr>
            <td colspan="5"><a href="index.php">Continuar Comprando</a></td>
    </tfoot>
     <tbody>
               <?php
                     if(count($_SESSION['carrinho']) == 0){
                        echo '<tr><td colspan="5">Não há produto no carrinho</td></tr>';
                     }else{
                        require("conexao.php");
                                                               $total = 0;
                        foreach($_SESSION['carrinho'] as $codigo => $quantidade){
                              $sql   = "SELECT *  FROM produto WHERE idprodutos = '$codigo'";
                              $qr    = mysql_query($sql) or die(mysql_error());
                              $produto    = mysql_fetch_assoc($qr);
                               $nome  = $produto['nome'];
                              $preco_unitario = number_format($produto['preco'], 2, ',', '.');
                              $sub   = number_format($produto['preco'] * $quantidade, 2, ',', '.');
                               $total += $produto['preco'] * $quantidade;
                            echo '<tr>
                                 <td>'.$nome.'</td>
                                 <td><input type="text" size="3" name="prod['.$codigo.']" value="'.$quantidade.'" /></td>
                                 <td>R$ '.$preco_unitario.'</td>
                                 <td>R$ '.$sub.'</td>
                                 <td><a href="?acao=del&codigo=<?php echo $codigo ?>">Remove</a></td>
                              </tr>';
                        }
                           $total = number_format($total, 2, ',', '.');
                           echo '<tr>
                                    <td colspan="4">Total</td>
                                    <td>R$ '.$total.'</td>
                              </tr>';
                     }
               ?>
      </tbody>
        </form>
</table>
 </body>
</html> 
<?php
$destinatario = "tcc3y2018@gmail.com";
$nome = $_REQUEST['nome'];
$email = $_REQUEST['email'];
$mensagem = $_REQUEST['mensagem'];
$assunto = $_REQUEST['assunto'];

$body = "===================================" . "\n";
$body = $body . "FALE CONOSCO - TESTE COMPROVATIVO" . "\n";
$body = $body . "===================================" . "\n\n";
$body = $body . "Nome: " . $nome . "\n";
$body = $body . "Email: " . $email . "\n";
$body = $body . "Mensagem: " . $mensagem . "\n\n";
$body = $body . "===================================" . "\n";

mail($destinatario, $assunto , $body, "From: $email\r\n");

header("location:enviado.php");

?>
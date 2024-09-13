<?php

$servidor = "localhost";
$banco = "lanchonete";
$usuariobd = "root";
$senhabd = "root";


$conect = new mysqli($servidor,$usuariobd,$senhabd, $banco);
if ($conect->connect_errno) {
	die("Falha ao conectar: ".$conect->connect_error);
}
	
	
	
	
?> 
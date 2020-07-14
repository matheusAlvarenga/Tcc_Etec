<?php

function equalCheck($um,$dois,$erro){
	if(!$um == $dois){
		echo "<script>alert($erro)</script>";
	}
}

?>
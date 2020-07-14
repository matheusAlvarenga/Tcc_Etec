var cont_menu=2;
var	cont_carrinho=2;

function aumentar(){
	document.getElementById('produto').style="transform: scale(1.1);";
}

function abrir_menu(){
	cont_menu++;
	div=cont_menu%2;
	if (div==1) {
		document.getElementById('hmb_aberto').style="animation: menu_abrir 0.5s;";
	}
	else{
		document.getElementById('hmb_aberto').style="animation: menu_fechar 0.5s;";
		setTimeout(
 			function() 
  				{
       				document.getElementById('hmb_aberto').style="display: none;";
  				}, 500);

	}
}

function abrir_carrinho(){
	cont_carrinho++;
	div_carr=cont_carrinho%2;
	if (div_carr==1) {
		document.getElementById('carrinho').style="animation: carrinho_abrir 0.5s;";
		document.getElementById('carrinho_fundo').style="animation: carrinho_abrir2 1s;";
	}
	else{
			document.getElementById('carrinho').style="animation: carrinho_fechar 0.5s;";
			document.getElementById('carrinho_fundo').style="opacity: 0;";

		setTimeout(
 			function() 
  				{
       				document.getElementById('carrinho').style="display: none;";
  				}, 500);

	}
}
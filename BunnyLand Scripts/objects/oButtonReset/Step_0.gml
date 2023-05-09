//se pressionado pelo jogador
if oButton.picada == false{
if place_meeting(x,y,oPlayer){state = 1;}else{state = 0;}

//Reseta os blocos para a posição original
if state == 1{with(oPushBlock){x = xstart; y = ystart;}}

//mostra se o botão esta pressionado
image_index = state;
}

if oButton.picada == true{image_index = 1;}
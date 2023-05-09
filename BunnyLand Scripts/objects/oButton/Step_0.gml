if place_meeting(x,y,oPushBlock) or place_meeting(x,y,oPlayer)
{state = 1;}else{state = 0;}
if state == 1 and !instance_exists(oCoin) and picada = false{
	repeat(3){instance_create_layer(x,y,"Instances",oCoin);}
	picada = true;
	global.coinpick = true;
	if !audio_is_playing(Desafio_concluido){audio_play_sound(Desafio_concluido,8,false);}
	global.qtdcoin += +3;}
image_index = state;
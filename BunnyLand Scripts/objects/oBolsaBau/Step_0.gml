
if image_index == 0 and !instance_exists(oCoin) and picada == false{
	instance_create_layer(x,y-6,"Instances",oBotBoot);
	repeat(3){instance_create_layer(x,y,"Instances",oCoin);}
	global.coinpick = true;
	picada = true;
	global.qtdcoin += +3;
	if !audio_is_playing(Desafio_concluido){audio_play_sound(Desafio_concluido,8,false);}
	}
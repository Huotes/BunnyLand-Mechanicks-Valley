if place_meeting(x,y,inst_70E8D0A3) and place_meeting(x,y,inst_287B579)
and place_meeting(x,y,inst_72EFF89B) and place_meeting(x,y,inst_5C2384D2)
and !place_meeting(x,y,oPlayer) and picada = false and distance_to_object(oPlayer) >= 14{
	instance_create_layer(103,467,"Instances",oBotHead);
instance_create_layer(103,497,"Instances",oFence);
repeat(3){instance_create_layer(x+120,y,"Instances",oCoin);}
global.coinpick = true;
global.qtdcoin += +3;
picada = true;
if !audio_is_playing(Desafio_concluido){audio_play_sound(Desafio_concluido,8,false);}
}
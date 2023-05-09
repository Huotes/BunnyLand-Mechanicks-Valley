// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_vakinha_colisao(){
//colisões
if place_meeting(x + xspd, y, oWall){xspd = 0;}
if place_meeting(x, y + yspd, oWall){yspd = 0;}

x += xspd;
y += yspd
}

function scr_vakinha_checar_personagem(){
	if distance_to_object(oPlayer)<= dist_aggro and global.macapick == true{
		estado = scr_vakinha_perseguindo;
	}
}

function scr_vakinha_escolher_estado(){
scr_vakinha_checar_personagem();
prox_estado = choose(scr_vakinha_andando, scr_vakinha_parado);

if prox_estado == scr_vakinha_andando{
	estado = scr_vakinha_andando;
	dest_x = random_range(0,room_width);
	dest_y = random_range(0, room_height);
}else if prox_estado == scr_vakinha_parado{
	estado = scr_vakinha_parado;
}
}

function scr_vakinha_andando(){
	scr_vakinha_checar_personagem();
	sprite_index = sVakinhaWalking;
	image_speed = 1;
	if distance_to_point(dest_x,dest_y) > veloc{
	var _dir = point_direction(x,y,dest_x,dest_y);
	xspd = lengthdir_x(veloc, _dir);
	yspd = lengthdir_y(veloc, _dir);
	
	scr_vakinha_colisao();
	}else{
		x = dest_x;
		y = dest_y;
	}
}

function scr_vakinha_parado(){
	scr_vakinha_checar_personagem();
	sprite_index = sVakinha;
	image_speed = 1;
}

function scr_vakinha_perseguindo(){
	sprite_index = sVakinhaWalking;
	image_speed = 1;
	
	dest_x = oPlayer.x;
	dest_y = oPlayer.y;  
	
	var _dir = point_direction(x,y,dest_x,dest_y);
	xspd = lengthdir_x(veloc_perseg, _dir);
	yspd = lengthdir_y(veloc_perseg, _dir);
	scr_vakinha_colisao();
	
	if distance_to_object(oPlayer) >= dist_desaggro or global.macapick == false{
		estado = scr_vakinha_escolher_estado;
		alarm[0] = irandom_range(120,240);}
}

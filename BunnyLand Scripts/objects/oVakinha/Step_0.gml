depth = -y
sexotimer = 0;
script_execute(estado);

//colisões
if place_meeting(x + xspd, y, oWall){xspd = 0;}
if place_meeting(x, y + yspd, oWall){yspd = 0;}


if modosexo == true{
	sexotimer++;
	sprite_index = sVakinhaWalking;
	image_speed = 1;
	
	dest_x = oVakinha.x;
	dest_y = oVakinha.y;  
	
	var _dir = point_direction(x,y,dest_x,dest_y);
	xspd = lengthdir_x(veloc_perseg, _dir);
	yspd = lengthdir_y(veloc_perseg, _dir);
	scr_vakinha_colisao();
	
	if modosexo == true and distance_to_object(oVakinha) <= 2{
	var instcorazon =  instance_create_layer(x,y,"Instances",oCoracao);
	repeat(6){instcorazon.image_xscale = choose(1,-1);}
	instance_create_layer(x,y,"Instances",oBabybife);
	modosexo = false;
	
	}
	
	}else{script_execute(estado);}



/*
var inst = instance_create_layer(random_range(x-5,x+5),y,"Instances",oCoracao);
if sexotimer = 600{
sexotimer = 0;

*/
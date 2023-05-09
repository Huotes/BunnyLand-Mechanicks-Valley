
	//teclas
	keyright = keyboard_check(vk_right) or keyboard_check(ord("D"));
	keyleft = keyboard_check(vk_left) or keyboard_check(ord("A"));
	keyup = keyboard_check(vk_up) or keyboard_check(ord("W"));
	keydown = keyboard_check(vk_down) or keyboard_check(ord("S"));
	interactkeypressed = keyboard_check_pressed(ord("Z"));
	
	//interagindo com os blocos
	if interactkeypressed == true{
		
		//busca o dentro de 360 graus algum bloco perto
		var _checkdir = face * 90;
		
		//verifica se encontrou algum bloco
		var _checkx = x + lengthdir_x(interactdist,_checkdir);
		var _checky = y + lengthdir_y(interactdist,_checkdir);
		var _pushblockinst = instance_place(_checkx,_checky,oPushBlock);
	
		
		//se existir um push block aponta sua direção
		if instance_exists(_pushblockinst) and _pushblockinst.sliding == false
		{
			_pushblockinst.sliding = true;
			_pushblockinst.facedir = face;
		}
	}
	
	//movimentação
	#region
	
	
	//variaveis para encurtar o codigo
	xaxis = keyright - keyleft;
	yaxis = keydown - keyup;
	
	
	//pause 
	
	if instance_exists(obj_pause)
	{xspd = 0; yspd = 0; movespd = 0;}
	
	if !instance_exists(obj_pause)
	{movespd = 1.2;  image_speed = 1;}
	
	//correndo
	if keyboard_check(ord("X")) and !instance_exists(obj_pause)
	{movespd = 2; image_speed = 2;}
	
	
	//point_direction simula um ponto em um plano cartesiano fazendo o jogador seu ponto central
	movedir = point_direction(0,0,xaxis,yaxis);
	//limita as velocidades 
	limiter = (xaxis != 0) or (yaxis != 0);

	//aplicando a velocidade de x e y
	xspd = lengthdir_x(limiter * movespd,movedir);
	yspd = lengthdir_y(limiter * movespd,movedir);
	
	
	//colisões
	if place_meeting(x + xspd, y, oWall){xspd = 0;}
	if place_meeting(x, y + yspd, oWall){yspd = 0;}
	
	
	
	//isso movimenta o jogador ao falar o que o X e o Y dele é igual as seguintes variaveis.
	x += xspd;
	y += yspd;
	
	
	
#endregion

	
	
	//controle de sprites
#region
	
	//da a certeza sobre o sprite correto e sua direção
	mask_index = sprite[DOWN];
	if yspd == 0
{
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};
}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd == 0
{
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};
}
if yspd > 0 and face == UP {face = DOWN};
if yspd < 0 and face == DOWN {face = UP};

//Define o sprite do jogador
sprite_index = sprite[face];
	
	//animando
	if xspd == 0 and yspd == 0{
	image_index = 0;	
	}
	
	//profundidade
	depth = -bbox_bottom;
	
#endregion
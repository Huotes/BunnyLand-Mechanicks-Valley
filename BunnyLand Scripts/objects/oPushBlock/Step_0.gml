depth = -bbox_bottom;

//qual o estado estamos?
	//parado
	if sliding == false{
	
	//aplica as coordenadas atuais
	startpointx = x;
	startpointy = y;
	
	//reseta as velocidades
	xspd = 0;
	yspd = 0;
	
	}
	//puxa o tipo de terreno que se encontra
	
		//se está em espaço autorizado a se movimentar
		if place_meeting(x,y,oPushBlockArea){pushblockarea = true;}
		else{pushblockarea = false;}
		
		//se está em espaço escorregadio
		if place_meeting(x,y,oSandedGround){onice = true;}
		else{onice = false;}
	
		
	//deslizando
	if sliding == true
	{
		//puxa a atual a direção para onde deve se mover
		var _realdir = facedir * 90;
		
		//puxa as coordenadas do alvo
		var _targetxdist = lengthdir_x(gridspace,_realdir);
		var _targetydist = lengthdir_y(gridspace,_realdir);
		targetx = startpointx + _targetxdist;
		targety = startpointy + _targetydist;
		
		//se onice estiver verdadeiro, faz o bloco deslizar até colidir com algo
		if onice == true{
			targetx = startpointx; 
			targety = startpointy;
			
			//verifica se o espaço a volta é área de movimentação ou parede
			while place_meeting(targetx + _targetxdist,targety + _targetydist,oSandedGround)
			and !place_meeting(targetx + _targetxdist,targety + _targetydist,oWall)
				{
				targetx += _targetxdist;
				targety += _targetydist;
				}
			
			}
		
		//aplica as velocidades
		var _targetdist = point_distance(x,y,targetx,targety);
		var _finalspd = min(movespd, _targetdist);
		xspd = lengthdir_x(_finalspd, _realdir);
		yspd = lengthdir_y(_finalspd, _realdir);
		
		//Cancela o movimento caso esteja em uma area de push block mas o player não
		if pushblockarea == true and !place_meeting(targetx,targety,oPushBlockArea)
		{xspd = 0; yspd = 0;}
		
		//não deixa o bloco se movimentar caso exista algum outro bloco
		if place_meeting(targetx,targety,oWall){xspd = 0; yspd = 0;}
	}
	
	//movimentaaaaa
	x += xspd;
	y += yspd;
	
	//conclui o deslizamento
	if xspd == 0 and yspd == 0 {sliding = false;}
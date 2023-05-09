depth = -bbox_bottom;
if parou == false{yspd++;}else{yspd = 0;}
y += yspd;

if distance_to_object(oPlayer) < 2 and keyboard_check_pressed(ord("Z")) 
and global.macapick == false{
mamacote = true;
global.macapick = true;
}
if mamacote = true{
x = lerp(x, oPlayer.x-3,1);
y = lerp(y, oPlayer.y+4,1);
global.qtdmaca = 1;
depth = -999;
}

if mamacote == true and keyboard_check_pressed(ord("C")) and global.macapick == true{
x = oPlayer.x;
y = oPlayer.y;
mamacote = false;
depth = -bbox_bottom;
global.macapick = false;
}

if distance_to_object(oVakinha) <= 4 and keyboard_check_pressed(ord("Z")) and global.macapick == true{
oVakinha.modosexo = true;
instance_destroy();
global.macapick = false;
mamacote = false;
}
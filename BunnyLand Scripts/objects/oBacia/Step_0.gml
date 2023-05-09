
if distance_to_object(oPlayer) < 2 and keyboard_check_pressed(ord("Z")){
mamacote = true;
depth = -999;
}
if mamacote = true{
x = lerp(x, oPlayer.x,1);
y = lerp(y, oPlayer.y-10,1);
global.cestapick = true;
}
if global.cestapick = true {
if global.qtdmaca == 0 {image_index = 0;}
if global.qtdmaca == 1 {image_index = 1;}
if global.qtdmaca == 2 {image_index = 2;}
if global.qtdmaca == 3 {image_index = 3;}
if global.qtdmaca >= 4 {image_index = 4; image_angle = random_range(3,-3)}
}

if distance_to_object(oBolsaBau) < 3 and keyboard_check_pressed(ord("Z")) 
and global.qtdmaca == 4 and oBolsaBau.image_index = 1{
global.qtdmaca = 0;
image_angle = 0;
oBolsaBau.image_index = 0;
}

if mamacote == true and keyboard_check_pressed(ord("C")) and global.cestapick == true{
x = oPlayer.x;
y = oPlayer.y;
mamacote = false;
depth = -bbox_bottom;
global.cestapick = false;
}

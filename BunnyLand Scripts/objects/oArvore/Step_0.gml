macarandom = irandom_range(0,15);
appletimer++;

if distance_to_object(oPlayer) < 3 and keyboard_check_pressed(ord("Z")) and noapple = false{
if sprite_index = sArvoreMacieira{image_angle = random_range(1,-1)}
repeat(3){
var inst =instance_create_layer(x+random_range(1,22),y+12,"Instances",oApple);
inst.image_xscale = choose(1,-1);
appletimer = 0;}
sprite_index = 	sArvore;
noapple = true;

}

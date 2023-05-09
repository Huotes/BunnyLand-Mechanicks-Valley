//pareia o estado ao objeto
if instance_exists(buttonobj){state = buttonobj.state;}

//fechado
if state == 0{mask_index = sprite_index;}

//aberto
if state == 1{mask_index = sNoCollison;}

//reflete o estado
image_index = state;
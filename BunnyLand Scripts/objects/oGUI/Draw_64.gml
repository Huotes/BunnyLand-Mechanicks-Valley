if global.macapick = true or global.cestapick = true{
draw_set_font(Font1);
draw_sprite(sGuiApple,sGuiApple,15,15);
draw_text(60,15,"X"+string(global.qtdmaca));
}

if global.coinpick = true{
draw_set_font(Font1);
draw_sprite(sCoinHud,sCoinHud,210,20);
draw_text(240,15,"X"+string(global.qtdcoin));
}

draw_set_font(fntText);

if global.missao1 = true{draw_sprite(sBotFot,sBotFot,730,55);}
if global.missao2 = true{draw_sprite(sBotBody,sBotBody,730,40);}
if global.missao3 = true{draw_sprite(sBotHead,sBotHead,730,25);}
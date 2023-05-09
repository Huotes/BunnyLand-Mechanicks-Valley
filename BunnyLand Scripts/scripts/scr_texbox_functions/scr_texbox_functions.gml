//função para realizar a quebra de linha corretamente
function scr_set_defaults_for_text() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	//função para definir o icone do personagem quando se interage com alguém
	txtb_spr[page_number] = sBunnyTextbox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = sndVoiceBunny;
}


/// @parametro texto
/// @parametro [carinhas]
function scr_text(_text){
	
	scr_set_defaults_for_text();
	
	text[page_number] = _text;
	
	//da informação ao icone 
	if argument_count > 1 {
	   switch(argument[1])
	   {
          //player		  
		  case "player":
		  // speaker_sprite[page_number] = sRetratoPlayer;
		   txtb_spr[page_number] = sBunnyTextbox;
		   snd[page_number] = sndVoiceBunny;
		   break;
		   
		   //lenny
		   case "cloud":
		   //speaker_sprite[page_number] = spr_lenny_spk;
		   txtb_spr[page_number] = sCloudTextbox;
		   speaker_side[page_number] = -1;
		   snd[page_number] = sndVoiceCloud;
		   break;
		   
		    //Roccy
		   case "egg":
		   speaker_sprite[page_number] = sEggGirlTalk;
		   txtb_spr[page_number] = sEgggirltextbox;
		   speaker_side[page_number] = -1;
		   snd[page_number] = sndEggvoice;
		   break;
		   
		   //roupa
		   case "placa":
		   txtb_spr[page_number] = sPlacatextbox;
		    snd[page_number] = sPlacaVoice;
		   break;
		   
		   //bob
		   case "bob":
		   speaker_sprite[page_number] = sRetratoBob;
		   txtb_spr[page_number] = spr_textbox;
		   speaker_side[page_number] = -1;
		   snd[page_number] = Retro_Single_v4_wav;
		   break;
		   
		   case "galen":
		   speaker_sprite[page_number] = spr_devota_talk;
		   txtb_spr[page_number] = spr_textbox_purple;
		   speaker_side[page_number] = -1;
		   break;
		   
		   case "zolin":
		   speaker_sprite[page_number] = spr_zolin_talk;
		   txtb_spr[page_number] = spr_textbox_gray;
		   speaker_side[page_number] = -1;
		   break;
		  
		   //narrador
		   case "narrador":
		   txtb_spr[page_number] = spr_textbox_black;
		   break;
		   
		   case "athos":
		   txtb_spr[page_number] = spr_textbox_yellow;
		   break;
		   
		    case "athos2":
		   txtb_spr[page_number] = spr_textbox_gray;
		   break;
		   
		    case "turtle":
		   txtb_spr[page_number] = spr_textbox_blue;
		   break;
		   
		   
	   }
	}
	
	//lado do personagem está ligado
	if argument_count > 2 {
		speaker_side[page_number] = argument[2];
	}
	
	page_number++;

}

///@parametro opções
///@parametro link_id
function scr_option(_option, _link_id) {
	
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
	
}


/// @parametro text_id
function create_textbox(_text_id) {
	
	
with (instance_create_depth(0, 0, -9999, obj_textbox))
	 {
	  scr_game_text(_text_id);
	 } 

}
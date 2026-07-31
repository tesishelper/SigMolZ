// Activar o desactivar el textbox al hacer clic dentro del textbox
if (mouse_check_button_pressed(mb_left)) {
    if (position_meeting(mouse_x, mouse_y, id)) {
        active = true;
    } else {
        active = false;
    }
}

// Si el textbox está activo, capturar el texto menos el ENTER



if (active) {
	
	//Letras de la A a la Z
   // for (var i = 65; i <= 90; i++) {
    //    if (keyboard_check_pressed(i)) {
            
	//		var letra = chr(i);
                        
      //      if (string_width(text) < sprite_width-30) {
       //         text = string_insert(letra, text, cursor_pos + 1);
        //        cursor_pos++;
        //    } }    }
		
	//Numeros del teclado de 0 a 9
	
	for (var i = 48; i <= 57; i++) {
        if (keyboard_check_pressed(i)) {
            
			var letra = chr(i);
                        
            if (string_length(text) < max_length) {
                text = string_insert(letra, text, cursor_pos + 1);
                cursor_pos++;
            } }    }
			
	//Numeros del numPad del 0 al 9
	
		for (var j = vk_numpad0; j <= vk_numpad9; j++) {
		if (keyboard_check_pressed(j)) {
			
		if (string_length(text) < max_length) {	
        var numero = string(j - vk_numpad0); // convierte a "0" a "9"
        text += numero;
        cursor_pos++;
    }}
}	
			
		


// Desactivar al presionar Enter
    if (keyboard_check_pressed(vk_enter)) {
		
		//show_debug_message("El texto del textBox es " + text);
        
        active = false;          // Desactivar el textbox
    }

// Borrar caracteres con Backspace y Delete

// BACKSPACE
if (keyboard_check_pressed(vk_backspace) && cursor_pos > 0) {
    text = string_delete(text, cursor_pos - 1, 1);
    cursor_pos--;
    keyboard_string = text;
}

// DELETE
if (keyboard_check_pressed(vk_delete) && cursor_pos < string_length(text)) {
    text = string_delete(text, cursor_pos, 1);
    keyboard_string = text;
}

// MOVER CURSOR
if (keyboard_check_pressed(vk_left) && cursor_pos > 0) {
    cursor_pos--;
}
if (keyboard_check_pressed(vk_right) && cursor_pos < string_length(text)) {
    cursor_pos++;
}


// Parpadeo del cursor
cursor_blink = (cursor_blink + 1) % 40;
cursor_visible = (cursor_blink < 20);
}
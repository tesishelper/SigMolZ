draw_self();

draw_set_color(c_white);


// dibujamos el eje de las x

//draw_set_color(c_white);

//draw_rectangle(x-20,y, x + 864, y + 584, false);

draw_set_color(c_black);

draw_rectangle(x_pos, y_120, x_pos+2,y_120+470, false);

draw_rectangle(x_pos, y_120 +470, x_pos+620,y_120 + 472, false);

draw_set_font(f_texto_chico);
draw_set_halign(fa_right);


// dibujamos los % de actividad en el eje y
var delta =0; 

for (var i =0; i <= 100; i+=10){
		
	draw_text(x +50, (y_120+460) - delta, string(i)+ " %-");
	
	delta = delta + 41.6;
	
}

 draw_set_halign(fa_center);

draw_text(x + 50 , y_120 -25 , "ACTIVITY (%)");
draw_text(x + 350 , y_120 -25 , "ACTIVITY (%) vs [AGONIST/ANTAGONIST]");



// dibujamos la leyenda del eje de las X

draw_text(x +400, y_120+500 , "[AGONIST/ANTAGONIST]");


// dibujamos las []
	
	draw_set_halign(fa_center);
    draw_set_valign(fa_top)
	
	
	
	draw_set_font(f_texto_chico);
	draw_text(x_0, y_120+480, string(0));
	
	var con = 500;
	var posicion = (con*(x_max-x_0)/4000)+x_0;
	draw_text(posicion, y_120+480, string(con));
	
	con = 1000;
	posicion = (con*(x_max-x_0)/4000)+x_0;
	draw_text(posicion, y_120+480, string(con));
	
	con = 1500;
	posicion = (con*(x_max-x_0)/4000)+x_0;
	draw_text(posicion, y_120+480, string(con));
	
	con = 2000;
	posicion = (con*(x_max-x_0)/4000)+x_0;
	draw_text(posicion, y_120+480, string(con));
	
	con = 2500;
	posicion = (con*(x_max-x_0)/4000)+x_0;
	draw_text(posicion, y_120+480, string(con));
	
	con = 3000;
	posicion = (con*(x_max-x_0)/4000)+x_0;
	draw_text(posicion, y_120+480, string(con));
	
	con = 3500;
	posicion = (con*(x_max-x_0)/4000)+x_0;
	draw_text(posicion, y_120+480, string(con));
	
	con = 4000;
	posicion = (con*(x_max-x_0)/4000)+x_0;
	draw_text(posicion, y_120+480, string(con));
	



//dibujamos los porcentajes_1

if (obj_checkbox_ago_con.chequeado) {

for (var i = 0; i < ds_list_size(obj_game.coordenadas_6); i++) {
     var punto = obj_game.coordenadas_6[| i];
    var x_valor = x_0 + escala_x*punto[0];
    var y_valor = y + delta_y - escala_y*punto[1];
	
	pos_final_x = x_valor; // esta es la referncia del ultimo punto de la lista
	segTotales = ds_list_size(obj_game.coordenadas_6)-1;
	
	draw_set_color(c_black);
	if(i>0){
		var anterior = obj_game.coordenadas_6[|(i-1)];
		var x1 =  x_0 + escala_x*anterior[0];
		var y1 = y + delta_y - escala_y*anterior[1];
		var actual = obj_game.coordenadas_6[|i];
		var x2 =  x_0 + escala_x*actual[0];
		var y2 = y + delta_y - escala_y*actual[1];
		
		draw_line(x1,y1,x2,y2)
	}	
	
	
	draw_set_color(c_green);
    draw_circle(x_valor, y_valor, 6, false); 
	// draw_circle(x_0, 400, 6, false); 
	draw_set_color(c_black);
	draw_circle(x_valor, y_valor, 6, true);
	
		
	
}

}


//dibujamos los porcentajes_2

if (obj_checkbox_antago_con.chequeado) {

for (var i = 0; i < ds_list_size(obj_game.coordenadas_7); i++) {
     var punto = obj_game.coordenadas_7[| i];
    var x_valor = x_0 + escala_x*punto[0];
    var y_valor = y + delta_y - escala_y*punto[1];
	
	pos_final_x = x_valor; // esta es la referncia del ultimo punto de la lista
	segTotales = ds_list_size(obj_game.coordenadas_7)-1;
	
	draw_set_color(c_black);
	if(i>0){
		var anterior = obj_game.coordenadas_7[|(i-1)];
		var x1 =  x_0 + escala_x*anterior[0];
		var y1 = y + delta_y - escala_y*anterior[1];
		var actual = obj_game.coordenadas_7[|i];
		var x2 =  x_0 + escala_x*actual[0];
		var y2 = y + delta_y - escala_y*actual[1];
		
		draw_line(x1,y1,x2,y2)
	}	
	
	
	draw_set_color(c_red);
    draw_circle(x_valor, y_valor, 6, false); 
	// draw_circle(x_0, 400, 6, false); 
	draw_set_color(c_black);
	draw_circle(x_valor, y_valor, 6, true);
	
		
	
}

}




//dibujamos la linea con el mouse


if (mouse_x-x >= 50 && mouse_x-x <=670 && mouse_y -y >= 32 && mouse_y - y <=505){
	
		draw_rectangle(mouse_x, y + 32,mouse_x+1,y + 505, false);
		draw_rectangle(x_0, mouse_y,x_0+620,mouse_y+1, false);

		// calcular % de y 

		var porcentaje = ((mouse_y-600)*(-1)/418)*100
		
		//calcular los segundos que indicax
		
		var rangoX = pos_final_x-x_pos;
		var deltaX = mouse_x-x_pos;
		
		draw_set_halign(fa_left);
        draw_set_valign(fa_top);
				
		var concentracion = round((mouse_x-x_0)*4000/(x_max-x_0));
		//concentracion = mouse_x;
		
		//draw_text(mouse_x+10,130, "Activity: "+ string(mouse_x)+ " %" + "\nTime: " +  string(mouse_y)+ " s");
		if(mouse_x-x<=450){	
		draw_text(mouse_x+20,130, "Activity: "+ string(porcentaje)+ " %\n[Agonis]: " +  string(concentracion));
	}
	else{draw_text(mouse_x-120,130, "Activity: "+ string(porcentaje)+ " %\n[Agonist]" +  string(concentracion));
	}
}

draw_set_color(c_white);
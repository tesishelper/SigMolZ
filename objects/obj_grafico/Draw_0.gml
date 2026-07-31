
draw_self()


//draw_set_color(c_black);

//draw_rectangle(x,y-200,x+2,y, false);

//draw_rectangle(x,y,x+400,y+2, false);

draw_set_color(c_white);




//dibujamos los porcentajes_0
for (var i = 0; i < ds_list_size(coordenadas); i++) {
    var punto = coordenadas[| i];
    var x_valor = x + x_0 + escala_x*punto[0];
    var y_valor = y + delta_y - escala_y*punto[1];
	
	draw_set_color(c_black);
	if(i>0){
		var anterior = coordenadas[|(i-1)];
		var x1 = x + x_0 + escala_x*anterior[0];
		var y1 = y + delta_y - escala_y*anterior[1];
		var actual = coordenadas[|i];
		var x2 = x + x_0 + escala_x*actual[0];
		var y2 = y + delta_y - escala_y*actual[1];
		
		draw_line(x1,y1,x2,y2);
	}	
	draw_set_color(c_white);
    draw_circle(x_valor, y_valor, 3, false); 
	draw_set_color(c_black);
	draw_circle(x_valor, y_valor, 3, true);
	
	
}

//dibujamos los porcentajes_1

for (var i = 0; i < ds_list_size(coordenadas_1); i++) {
    var punto = coordenadas_1[| i];
    var x_valor = x + x_0 + escala_x*punto[0];
    var y_valor = y + delta_y - escala_y*punto[1];
	
	draw_set_color(c_black);
	if(i>0){
		var anterior = coordenadas_1[|(i-1)];
		var x1 = x + x_0 + escala_x*anterior[0];
		var y1 = y + delta_y - escala_y*anterior[1];
		var actual = coordenadas_1[|i];
		var x2 = x + x_0 + escala_x*actual[0];
		var y2 = y + delta_y - escala_y*actual[1];
		
		draw_line(x1,y1,x2,y2);
	}	
	draw_set_color(c_green);
    draw_circle(x_valor, y_valor, 3, false); 
	draw_set_color(c_black);
	draw_circle(x_valor, y_valor, 3, true);
	
	
}

//dibujamos los porcentajes_2

for (var i = 0; i < ds_list_size(coordenadas_2); i++) {
    var punto = coordenadas_2[| i];
    var x_valor = x + x_0 + escala_x*punto[0];
    var y_valor = y + delta_y - escala_y*punto[1];
	
	draw_set_color(c_black);
	if(i>0){
		var anterior = coordenadas_2[|(i-1)];
		var x1 = x + x_0 + escala_x*anterior[0];
		var y1 = y + delta_y - escala_y*anterior[1];
		var actual = coordenadas_2[|i];
		var x2 = x + x_0 + escala_x*actual[0];
		var y2 = y + delta_y - escala_y*actual[1];
		
		draw_line(x1,y1,x2,y2);
	}	
	draw_set_color(c_red);
    draw_circle(x_valor, y_valor, 3, false); 
	draw_set_color(c_black);
	draw_circle(x_valor, y_valor, 3, true);
	
	
}

draw_set_color(c_white);
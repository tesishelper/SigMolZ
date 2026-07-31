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



// dibujamos la leyenda del eje de las X

draw_text(x +400, y_120+500 , "TIME (s)");



for ( var e =0; e < ds_list_size(listas); e++){

		var array = listas[| e];
		
		var coordenadas = array[0];
		var coordenadas_1 = array[1];
		var coordenadas_2 = array[2];
	
	
if(checkbox_listas[| e].chequeado) {	

// dibujamos los segundos
/*
for (var i = 0; i < ds_list_size(coordenadas); i++) {
    var punto = coordenadas[| i];
    var x_valor =  x + x_0 + escala_x*punto[0];
	
	if (i==0 ||i== 10 || i== 20 || i == 30 || i == 40 || i == 50 || i == 60|| i == 70|| i == 80|| i == 90|| i == 100
	   || i==110 ||i== 120 || i== 130 || i == 140 || i == 150 || i == 160 || i == 170 || i == 180|| i == 190|| i == 200|| i == 100){
		
		draw_set_font(f_texto_chico);
		draw_text(x_valor, y_120+480, string(i));
		
	}}
	*/
	
	


//dibujamos los porcentajes_0

if (obj_checkbox_free.chequeado) {

for (var i = 0; i < ds_list_size(coordenadas); i++) {
     var punto = coordenadas[| i];
    var x_valor = x + x_0 + escala_x*punto[0];
    var y_valor = y + delta_y - escala_y*punto[1];
	
	pos_final_x = x_valor; // esta es la referncia del ultimo punto de la lista
	segTotales = ds_list_size(coordenadas)-1;
	
	draw_set_color(c_black);
	if(i>0){
		var anterior = coordenadas[|(i-1)];
		var x1 = x + x_0 + escala_x*anterior[0];
		var y1 = y + delta_y - escala_y*anterior[1];
		var actual = coordenadas[|i];
		var x2 = x + x_0 + escala_x*actual[0];
		var y2 = y + delta_y - escala_y*actual[1];
		
		draw_line(x1,y1,x2,y2)
	}	
	//seleccionamos el color de las marcas
	if (e ==0){ draw_set_color(c_white);  }
	if (e ==1){ draw_set_color(#C0C0C0);  }
	if (e ==2){ draw_set_color(#A0A0A0);  }
	if (e ==3){ draw_set_color(#808080);  }
	if (e ==4){ draw_set_color(#606060);  }
	if (e ==5){ draw_set_color(#404040);  }
	if (e ==6){ draw_set_color(#202020);  }
	if (e ==7){ draw_set_color(#660066);  }
	if (e ==8){ draw_set_color(#330066);  }
	if (e ==9){ draw_set_color(c_black);  }
	
	
	//draw_set_color(c_white);
    draw_circle(x_valor, y_valor, 6, false); 
	draw_set_color(c_black);
	draw_circle(x_valor, y_valor, 6, true);
	
	// dibujamos los segundos 
	
	
	
	
	
	
}}

//dibujamos los porcentajes_1

if (obj_checkbox_agonists.chequeado) {

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
		
		draw_line(x1,y1,x2,y2)
	}	
	//seleccionamos el color de las marcas
	
	if (e ==0){ draw_set_color(#66FF66);  }
	if (e ==1){ draw_set_color(#00FF00);  }
	if (e ==2){ draw_set_color(#009900);  }
	if (e ==3){ draw_set_color(#006600);  }
	if (e ==4){ draw_set_color(#003300);  }
	if (e ==5){ draw_set_color(#003366);  }
	if (e ==6){ draw_set_color(#004C99);  }
	if (e ==7){ draw_set_color(#0000CC);  }
	if (e ==8){ draw_set_color(#0000FF);  }
	if (e ==9){ draw_set_color(#3333FF);  }
	
	
    draw_circle(x_valor, y_valor, 6, false); 
	draw_set_color(c_black);
	draw_circle(x_valor, y_valor, 6, true);
}}

//dibujamos los porcentajes_2

if (obj_checkbox_antagonists.chequeado) {

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
		
		draw_line(x1,y1,x2,y2)
	}	
	
	//seleccionamos el color de las marcas
	
	if (e ==0){ draw_set_color(#FF3333);  }
	if (e ==1){ draw_set_color(#FF0000);  }
	if (e ==2){ draw_set_color(#CC0000);  }
	if (e ==3){ draw_set_color(#990000);  }
	if (e ==4){ draw_set_color(#660000);  }
	if (e ==5){ draw_set_color(#663300);  }
	if (e ==6){ draw_set_color(#994C00);  }
	if (e ==7){ draw_set_color(#FF8000);  }
	if (e ==8){ draw_set_color(#FFB266);  }
	if (e ==9){ draw_set_color(#CCCC00);  }
	
	
    draw_circle(x_valor, y_valor, 6, false); 
	draw_set_color(c_black);
	draw_circle(x_valor, y_valor, 6, true);
	
	
	
	
}}}}

draw_set_halign(fa_top);
draw_set_halign(fa_left);

//dibujamos la linea con el mause


if (mouse_x-x >= 50 && mouse_x-x <=670 && mouse_y -y >= 32 && mouse_y - y <=505){
	
		draw_rectangle(mouse_x, y + 32,mouse_x+1,y + 505, false);
		draw_rectangle(x_pos, mouse_y,670,mouse_y+1, false);

		// calcular % de y 

		var porcentaje = ((mouse_y-600)*(-1)/418)*100
		
		//calcular los segundos que indicax
		
		var rangoX = pos_final_x-x_pos;
		var deltaX = mouse_x-x_pos;
						
		var tiempo = round((deltaX/rangoX)*segTotales);

		//draw_text(mouse_x+10,130, "Activity: "+ string(mouse_x)+ " %" + "\nTime: " +  string(mouse_y)+ " s");
		
	if(mouse_x-x<=550){	
		draw_text(mouse_x+10,130, "Activity: "+ string(porcentaje)+ " %" + "\nTime: " +  string(tiempo)+ " s");
	}
	else{draw_text(mouse_x-120,130, "Activity: "+ string(porcentaje)+ " %" + "\nTime: " +  string(tiempo)+ " s");
	}
	
	
}

draw_set_color(c_white);
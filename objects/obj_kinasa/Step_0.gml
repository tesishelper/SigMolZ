//move_wrap(1, 1, 10);
if(obj_game.gameRun==1){ speed= obj_game.velocidad;

var x_min = 380;
var x_max = 965;



	
	// Rebote horizontal
	if (x <= x_min || x >= x_max) {
	  //direction = (180 - direction + 360) mod 360;
		if (x <= x_min) {direction = (random_range(90, 270)+180) mod 360}
		if (x >= x_max ) {direction = (random_range(270, 90)) mod 360}
	
	 x = clamp(x, x_min,x_max); // prevenir que salga
	}

	// Rebote vertical
	if (y <= 0 || y >= room_height) {
	  // direction = (360 - direction) mod 360;
		if (y <= 0 ) {direction = (random_range(180, 360)) mod 360}
		if (y >= room_height ) {direction = (random_range(0, 180)) mod 360}
		
	  y = clamp(y, 0, room_height); // prevenir que salga
	}


if (modo ==1){	//modo 1 kinasa inactiva negra
	
	sprite_index = Sprite1_3;
	image_index = 0;
	depth = 0;
	
}

if (modo ==2){	//modo 2 es el modo activo
	
	sprite_index = Sprite1_6;
	image_index = 0;
	depth = -100;
	
	//vida media en el estado activo
	
	// Tiempo objetivo en segundos para alcanzar 50% de desaparición
	var tiempo = 5; //un segundo 
	// Calculamos la probabilidad de desaparición por frame
	var prob = 1 - power(0.5, 1 / (tiempo *obj_game.fps_speed));
	// Aplicamos esa probabilidad en cada frame
	if (random(1) < prob) {alarm[0] = 10;}
	 
	
}


if (modo ==3){	//modo 3 es el modo nuclear
	
	sprite_index = Sprite1_6;
	image_index = 0;
	depth = -100;
	
	//vida media en el estado activo
	
	// Tiempo objetivo en segundos para alcanzar 50% de desaparición
	var tiempo = 2; //un segundo 
	// Calculamos la probabilidad de desaparición por frame
	var prob = 1 - power(0.5, 1 / (tiempo *obj_game.fps_speed));
	// Aplicamos esa probabilidad en cada frame
	if (random(1) < prob) {alarm[0] = 10;}
	
	
	x_min = 1000;
	x_max = room_width;
	
// Rebote horizontal
if (x <= x_min || x >= x_max) {
    //direction = (180 - direction + 360) mod 360;
	if (x <= x_min) {direction = (random_range(90, 270)+180) mod 360}
	if (x >= x_max ) {direction = (random_range(270, 90)) mod 360}
	
    x = clamp(x, x_min,x_max); // prevenir que salga
}

// Rebote vertical
if (y <= 0 || y >= room_height) {
   // direction = (360 - direction) mod 360;
	if (y <= 0 ) {direction = (random_range(180, 360)) mod 360}
	if (y >= room_height ) {direction = (random_range(0, 180)) mod 360}
	
	
    y = clamp(y, 0, room_height); // prevenir que salga
}}
}
else {speed=0}

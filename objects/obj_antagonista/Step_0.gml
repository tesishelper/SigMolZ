if(obj_game.gameRun==1){ 
	
speed= obj_game.velocidad;

if (modo ==1){	//modo 1 para el simulador de receptor
	
	
// Rebote horizontal
if (x <= 0 || x >= room_width-400) {
    //direction = (180 - direction + 360) mod 360;
	if (x <= 0 ) {direction = (random_range(90, 270)+180) mod 360}
	if (x >= room_width-410 ) {direction = (random_range(270, 90)) mod 360}
	
    x = clamp(x, 0, room_width-400); // prevenir que salga
}

// Rebote vertical
if (y <= 60 || y >= room_height-100) {
   // direction = (360 - direction) mod 360;
	if (y <= 60 ) {direction = (random_range(180, 360)) mod 360}
	if (y >= room_height-55 ) {direction = (random_range(0, 180)) mod 360}
	
	
    y = clamp(y, 60, room_height-55); // prevenir que salga
}}

if (modo ==2){	//modo 2 es para el simulador de transduccion de sñales
	
// Rebote horizontal
if (x <= 0 || x >= 360) {
    //direction = (180 - direction + 360) mod 360;
	if (x <= 0 ) {direction = (random_range(90, 270)+180) mod 360}
	if (x >= 360 ) {direction = (random_range(270, 90)) mod 360}
	
    x = clamp(x, 0, 360); // prevenir que salga
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

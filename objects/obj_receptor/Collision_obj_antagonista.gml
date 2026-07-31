if(obj_game.gameRun && estado == 0){

if(other.modo==1){	
	//var x_pos = random_range(0,room_width-400);
	//var y_pos = random_range(0,room_height-100);
	
	//other.x = x_pos;
	other.y = other.y -10; //y_pos; 
	
	other.direction = (random_range(0, 180)) mod 360
		
	}
 
 if(other.modo == 2) {
	//var x_pos = random_range(0,355);
	//var y_pos = random_range(0,room_height);
		
	//other.x = other.x-10; //x_pos;
	//other.y = y_pos; 
	
	//direction = (random_range(270, 90)) mod 360
 }

	

if(obj_game.dinamic_model){
	
	var afinidad = (obj_game.afinidad_antagonista-1001)*(-1) 
	if (estado == 0) {estado=2;}
	
// Tiempo objetivo en segundos para alcanzar 50% de desaparición
var tiempo = afinidad/100000; 
// Calculamos la probabilidad de desaparición por frame
var prob = 1 - power(0.5, 1 / (tiempo *obj_game.fps_speed));
// Aplicamos esa probabilidad en cada frame
if (random(1) < prob) {alarm[0] = 10;}
	
}

if (obj_game.static_model){
	
	var afinidad = (obj_game.afinidad_antagonista-1001)*(-1)
	var num = random_range(0,1000);
	
	if (num <= afinidad){
		if (estado == 0) {estado=2;}
		
	}
		
}

if (!obj_game.static_model && !obj_game.dinamic_model){
	
	var afinidad = (obj_game.afinidad_antagonista-1001)*(-1)
	var num = random_range(0,1000);
	
	 if (num <= afinidad){
		
		if (estado == 0) {estado=2;}
		
		// Tiempo objetivo en segundos para alcanzar 50% de desaparición
		var tiempo = afinidad/100000; 
		// Calculamos la probabilidad de desaparición por frame
		var prob = 1 - power(0.5, 1 / (tiempo *obj_game.fps_speed));
		// Aplicamos esa probabilidad en cada frame
		if (random(1) < prob) {alarm[0] = 10;}
	
	
		}	





}}
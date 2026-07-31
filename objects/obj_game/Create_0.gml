
window_set_caption("SigMolZ_1.1.1");


// Resolución interna del juego
var internal_width = 1366;
var internal_height = 725;

// Obtener resolución del monitor
var screen_w = display_get_width();
var screen_h = display_get_height();

// Activar vistas
view_enabled = true;
view_visible[0] = true;

// Crear y asignar cámara
var cam = camera_create_view(0, 0, internal_width, internal_height, 0, -1, -1, -1, -1, 0);
view_set_camera(0, cam);

// Redimensionar viewport para que coincida con la pantalla
view_set_wport(0, screen_w);
view_set_hport(0, screen_h);

// Pantalla completa
window_set_fullscreen(true);









randomize(); //genera semillas al azar para los eventos aleatorios

if (instance_number(obj_game) > 1)

{
    instance_destroy(); // Este ya existe, destruimos el duplicado
}


ValorReferencia = 1400 //esto regula el valor de la señal nuclear en juego2
cantidad_agonista = 500;
cantidad_antagonista= 0;
cantidad_kinasa = 1000;
cantidad_fosfatasa =50;
afinidad_agonista = 200;
afinidad_antagonista= 200;

velocidad = 5; //velocidad de los objetos 
cantidad_receptor = 20;
gameRun = 1; // 1 = true , -1 = false
cantidad_maxima = 4000;
afinidad_maxima = 1000;
dinamic_model = false;
static_model = true;

porcentaje_0 = 0;
porcentaje_1 = 0;
porcentaje_2 = 0;

coordenadas = ds_list_create();
coordenadas_1 = ds_list_create();
coordenadas_2 = ds_list_create();


porcentaje_3 = 0;
porcentaje_4 = 0;
porcentaje_5 = 0;

coordenadas_3= ds_list_create();
coordenadas_4 = ds_list_create();
coordenadas_5 = ds_list_create();


porcentaje_6 =0;
coordenadas_6 = ds_list_create();//lista para ordenar los datos actividad vs cantidad agonista

porcentaje_7 =0;
coordenadas_7 = ds_list_create();//lista para ordenar los datos actividad vs cantidad antagonista

indice_listas = 0; //indica en numero de partida 
listas = ds_list_create();// guarda hasta 20 partidas
listas_1 = ds_list_create();// guarda hasta 20 partidas
listas_2 = ds_list_create();// guarda hasta 20 partidas

metadato = ""; //informacion de la corrida
fps_speed = game_get_speed(gamespeed_fps);

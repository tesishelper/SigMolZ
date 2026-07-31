// Contadores
var estado_2 = 0;
 var porcentaje_2 =0;


// Total de instancias del objeto
var total = instance_number(obj_kinasa_2);

// Evitamos división por cero
if (total > 0) {
    // Contar instancias por estado
    with (obj_kinasa_2) {
        if (modo == 3) estado_2 += 1;
       
    }

    // Calcular porcentajes
     porcentaje_2 = (estado_2 / 1000) * 100;
   

    // Mostrar resultados (por consola o en pantalla)
    texto = "Signal\n \n" + string(porcentaje_2) + "%";
   rectangle_h = porcentaje_2;
}
else {
  texto =  "Siganl\n \n" + string(porcentaje_2) + "%"; 
  rectangle_h = porcentaje_2;
}
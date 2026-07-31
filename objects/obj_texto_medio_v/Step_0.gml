// Contadores
var estado_1 = 0;
 var porcentaje_1 =0;


// Total de instancias del objeto
var total = instance_number(obj_receptor);

// Evitamos división por cero
if (total > 0) {
    // Contar instancias por estado
    with (obj_receptor) {
        if (estado == 1) estado_1 += 1;
       
    }

    // Calcular porcentajes
     porcentaje_1 = (estado_1 / total) * 100;
   

    // Mostrar resultados (por consola o en pantalla)
    texto = "Active\n Receptors\n" + string(porcentaje_1) + "%";
    rectangle_h = porcentaje_1;
}
else {
  texto =  "Active\n Receptors\n" + string(porcentaje_1) + "%"; 
   rectangle_h = porcentaje_1;
}


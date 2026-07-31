// Contadores
var estado_0 = 0;
 var porcentaje_0 =0;


// Total de instancias del objeto
var total = instance_number(obj_receptor);

// Evitamos división por cero
if (total > 0) {
    // Contar instancias por estado
    with (obj_receptor) {
        if (estado == 0) estado_0 += 1;
       
    }

    // Calcular porcentajes
     porcentaje_0 = (estado_0 / total) * 100;
   

    // Mostrar resultados (por consola o en pantalla)
    texto = "Free\n Receptors\n" + string(porcentaje_0) + "%";
	
	rectangle_h = porcentaje_0;
   
}
else {
  texto =  "Free\n Receptor\n" + string(porcentaje_0) + "%"; 
 
  rectangle_h = porcentaje_0;
}


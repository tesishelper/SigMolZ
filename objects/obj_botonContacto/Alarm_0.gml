event_inherited();


var res = get_string("¿Cómo querés enviar tu mensaje?\n1 - Cliente predeterminado (Outlook, Thunderbird)\n2 - Gmail\n3 - Outlook Web", "1");

if (res == "1") {
    url_open("mailto:tesishelper@gmail.com");
} else if (res == "2") {
    url_open("https://mail.google.com/mail/?view=cm&fs=1&to=tesishelper@gmail.com");
} else if (res == "3") {
    url_open("https://outlook.live.com/mail/deeplink/compose?to=tesishelper@gmail.com");
}



//instance_create_layer( 560, 400, "mensajes", obj_boton_SI);

//instance_create_layer( 810 , 400, "mensajes", obj_boton_NO);

//instance_create_layer(0, 0, "mensajes", obj_texto_confirmar);
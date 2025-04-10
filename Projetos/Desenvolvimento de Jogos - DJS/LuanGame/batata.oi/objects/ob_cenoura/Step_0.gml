//layer_create(2, "inimigo")

//var inimigo = instance_create_layer(cenoura_x, cenoura_y, "inimigo", Flecha);

// objetivo: fazer o inimigo paradar de andar quando chegar proximo da altura do player, para que futuramente ele possa acertar um projeto nele
if (player_y - cenoura_y < 0 && player_y - cenoura_y > -30) {
		inivelo = 0
		//instance_create_layer(cenoura_x, cenoura_y, "inimigo", Flecha);
		//alarm[0] = 60
}

//	if (cenoura_y - player_y > 0 && cenoura_y - player_y < 30) {
//		inivelo = 0

//}

if (cenoura_y - player_y < 0 && cenoura_y - player_y > -60) {
		inivelo = 0

}
var distancia_max_x = 100

if (instance_exists(Player)) {
	player_x = Player.x;
	player_y = Player.y;
	cenoura_x = ob_cenoura.x;
	cenoura_y = ob_cenoura.y;

	if (longe <= 260) {
		move_towards_point(player_x - 1, player_y - 1, inivelo)
		inivelo = 2
		global.player_x = Player.x;
		global.player_y = Player.y;
		cenoura_x = ob_cenoura.x;
		cenoura_y = ob_cenoura.y;
	}else
		longe = point_distance(cenoura_x, cenoura_y, player_x, player_y)
		global.player_x = Player.x;
		global.player_y = Player.y;
		cenoura_x = ob_cenoura.x;
		cenoura_y = ob_cenoura.y;
	if (longe >= 350) {
		move_towards_point(player_x - 1, player_y - 1, inivelo)
		inivelo = 0
		alarm[1] = 30
		global.player_x = Player.x;
		global.player_y = Player.y;
		cenoura_x = ob_cenoura.x;
		cenoura_y = ob_cenoura.y;
	}else
		longe = point_distance(cenoura_x, cenoura_y, player_x, player_y)
		global.player_x = Player.x;
		global.player_y = Player.y;
		cenoura_x = ob_cenoura.x;
		cenoura_y = ob_cenoura.y;
}	
show_debug_message("distancia" + string(longe)); {
}
show_debug_message("y ele" + string(cenoura_y)); {
}
show_debug_message("y eu" + string(player_y)); {
}










// Cria a flecha (Aqui você pode criar o objeto da flecha e configurá-la para atacar o player)
//    var flecha = instance_create_layer(x, y, "camada", Spike);
	
 //   flecha.direction = point_direction(x, y, Player.x, Player.y);  // Direção para o Player
//    flecha.speed = 10;  // Velocidade da flecha (ajuste conforme necessário)
if (instance_exists(Player)) {
	player_x = Player.x;
	player_y = Player.y;
	cenoura_x = o_cenoura.x;
	cenoura_y = o_cenoura.y;

	if (longe <= 260) {
		move_towards_point(player_x - 1, player_y - 1, inivelo)
		inivelo = 2
		global.player_x = Player.x;
		global.player_y = Player.y;
		cenoura_x = o_cenoura.x;
		cenoura_y = o_cenoura.y;
	}else
		longe = point_distance(cenoura_x, cenoura_y, player_x, player_y)
		global.player_x = Player.x;
		global.player_y = Player.y;
		cenoura_x = o_cenoura.x;
		cenoura_y = o_cenoura.y;
	if (longe >= 350) {
		move_towards_point(player_x - 1, player_y - 1, inivelo)
		inivelo = 0
		alarm[1] = 30
		global.player_x = Player.x;
		global.player_y = Player.y;
		cenoura_x = o_cenoura.x;
		cenoura_y = o_cenoura.y;
	}else
		longe = point_distance(cenoura_x, cenoura_y, player_x, player_y)
		global.player_x = Player.x;
		global.player_y = Player.y;
		cenoura_x = o_cenoura.x;
		cenoura_y = o_cenoura.y;
}	
show_debug_message("distancia" + string(longe)); {
}
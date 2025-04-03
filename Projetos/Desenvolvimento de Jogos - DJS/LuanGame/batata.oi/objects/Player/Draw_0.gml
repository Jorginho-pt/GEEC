
// Obtém a posição da câmera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Desenha o jogador ajustando a posição com base na câmera
draw_self(); // Desenha o sprite do objeto Player
//if barra_vida = true {
//	draw_sprite(Sprite3,Parada, cam_x, cam_y)
//	image_xscale = 10
//}
// Desenha a barra de vida na tela
// Desenha a base da barra de vida
draw_set_color(c_red);
draw_rectangle(cam_x + 10, cam_y + 10, cam_x + 210, cam_y + 30, false); // Base da barra de vida

// Desenha a barra de vida (verde)
draw_set_color(c_green);
var life_width = (health / max_health) * 200; // Largura da barra com base na vida restante
draw_rectangle(cam_x + 10, cam_y + 10, cam_x + 10 + life_width, cam_y + 30, false); // Barra de vida (verde)

// Exibe a quantidade de vida como texto
draw_set_color(c_white);
draw_text(cam_x + 220, cam_y + 10, string(health) + "/" + string(max_health)); // Exibe a vida atual

// Se o jogo acabou, desenha a mensagem "Você perdeu!" no centro da tela
if (health <= 0) {
    draw_set_color(c_red);  // Define a cor do texto como vermelha

    // Calcula a largura e a altura do texto
    var text_width = string_width("Voce perdeu!"); // Largura do texto
    var text_height = string_height("Voce perdeu!"); // Altura do texto

    // Exibe a mensagem centralizada na tela
	
	draw_text(cam_x + 470, cam_y + 384, string(
	"Voce Perdeu"));
	
   // draw_text(room_width / 2 - text_width / 2, room_height / 2 - text_height / 2, "Voce perdeu!");
}
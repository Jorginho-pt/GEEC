// Definindo a velocidade de movimento do personagem
var move_speed = 2.5;// Ajuste conforme necessário para aumentar ou diminuir a velocidade
var game_over = false
// Movimentação nas direções X e Y com base nas teclas pressionadas


// Verifica se a vida do jogador chegou a 0 ou abaixo
if (health <= 0) {
	levdano = 10
    health = 0;    // Garante que a vida não seja negativa
    move_speed = 0; // Define que o jogo acabou
}

if (keyboard_check(ord("O"))) {
	x = 768
	y = 416
	health = 100
	levdano = 0
}



// Movimento para a esquerda (A ou seta para a esquerda)
if (keyboard_check(vk_left) or keyboard_check(ord("A"))) {
    x -= move_speed; // Move para a esquerda
	sprite_index = Corrida_horizontal
	image_xscale = -1
} else


// Movimento para a direita (D ou seta para a direita)
if (keyboard_check(vk_right) or keyboard_check(ord("D"))) {
    x += move_speed; // Move para a direita
	sprite_index = Corrida_horizontal
	image_xscale = 1
} else
	sprite_index = Parada

// Movimento para cima (W ou seta para cima)
if (keyboard_check(vk_up) or keyboard_check(ord("W"))) {
    y -= move_speed; // Move para cima
}

// Movimento para baixo (S ou seta para baixo)
if (keyboard_check(vk_down) or keyboard_check(ord("S"))) {
    y += move_speed; // Move para baixo
}
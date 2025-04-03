// Se o personagem colidir com o espinho, ele recebe dano

// Verifica se o personagem não está invencível
if (!invincible) {
    health -= 20; // O personagem perde 20 pontos de vida ao colidir com o espinho
    invincible = true; // Torna o personagem invencível temporariamente

    // Alarme para que o personagem possa tomar dano novamente após um pequeno intervalo
    alarm[0] = 120; // O personagem ficará invencível por 30 steps (aproximadamente 1 segundo)
}


// Verificar se a health for <= 0, caso for, mantem o valor dela como zero, 
// impedindo a subtração de vida pelo spike
if (health <= 0) {
	health = 0

}
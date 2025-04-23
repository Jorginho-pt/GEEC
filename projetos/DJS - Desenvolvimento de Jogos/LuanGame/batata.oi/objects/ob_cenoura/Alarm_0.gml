// Quando o alarme 0 dispara (após 60 passos no Step Event)
// O alarme permite que o inimigo atire novamente após o intervalo definido.

// Verifica se o inimigo está na mesma altura do jogador
if (y == obj_jogador.y) {
    // Cria a flecha na posição do inimigo
    var flecha = instance_create_layer(x, y, "camada_flechas", obj_flecha);
    
    // Define a direção da flecha (exemplo: 1 para direita, -1 para esquerda)
    flecha.direcao = 1;  // Direção da flecha
    
    // Define a velocidade da flecha
    flecha.velocidade = 10;  // Ajuste conforme necessário
    
    // Reseta o alarme para que o inimigo atire novamente após 60 passos
    alarm[0] = 60;  // O alarme será ativado novamente após 60 passos
}

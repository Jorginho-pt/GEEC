
// Verificar se o alvo (jogador) ainda existe
if (!instance_exists(target_)) exit;

// Calcular a posição da câmera usando lerp para suavizar o movimento
x = lerp(x, target_.x, 0.1);
y = lerp(y, target_.y, 0.1); // Ajuste o 'height_/4' conforme necessário

// Ajustar a posição da câmera
camera_set_view_pos(view_camera[0], x - width_ / 2, y - height_ / 2);

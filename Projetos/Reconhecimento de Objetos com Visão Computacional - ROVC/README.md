# Detecção de Objetos em Tempo Real com Webcam usando YOLOv5

Este projeto realiza **detecção de objetos em tempo real** usando a webcam do computador e o modelo **YOLOv5 pré-treinado**.

##Documentacao
- https://github.com/ultralytics/yolov5
- https://docs.ultralytics.com/pt/yolov5/#what-environments-are-supported-for-running-yolov5-applications
- https://pytorch.org/hub/ultralytics_yolov5/

## Funcionalidades

- Detecção ao vivo com webcam  
- Classificação e marcação de objetos com bounding boxes  
- Contador de objetos  
- Salvamento de imagens com detecção  
- Código simples usando PyTorch e OpenCV  

## Requisitos

- Python 3.8+  
- Git  
- Webcam  
- pip (gerenciador de pacotes)

## Instalação

```bash
# Clone o repositório YOLOv5
git clone https://github.com/ultralytics/yolov5.git
cd yolov5

# Instale os requisitos
pip install -r requirements.txt
pip install opencv-python

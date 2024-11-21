#include <Servo.h>

// Definir los pines
const int boton1Pin = 2; // Botón para mover el servo a 140 grados
const int boton2Pin = 3; // Botón para mover el servo a la posición home (10 grados)

// Crear un objeto Servo
Servo miServo;

// Variables para el estado de los botones
int estadoBoton1 = 0;
int estadoBoton2 = 0;

void setup() {
  // Configurar los pines de los botones como entradas
  pinMode(boton1Pin, INPUT);
  pinMode(boton2Pin, INPUT);

  // Adjuntar el servo al pin 9
  miServo.attach(9);

  // Mover el servo a la posición inicial
  miServo.write(30); 
}

void loop() {
  // Leer el estado de los botones
  estadoBoton1 = digitalRead(boton1Pin);
  estadoBoton2 = digitalRead(boton2Pin);

  // Si el botón 1 está presionado, mover el servo a 90 grados
  if (estadoBoton1 == HIGH) {
    miServo.write(80);
    delay(500); // Retardo para evitar lecturas múltiples
  }

  // Si el botón 2 está presionado, mover el servo a la posición inicial (10 grados)
  if (estadoBoton2 == HIGH) {
    miServo.write(30);
    delay(500); // Retardo para evitar lecturas múltiples
  }
}

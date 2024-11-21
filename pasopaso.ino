#include <Servo.h>  // Incluye la librería del servo motor

// Pines para el motor paso a paso
const int motorPins[] = {2, 3, 4, 5};  
const int buttonPin = 7;               // Pin del botón para el motor paso a paso
const int buttonServoPin = 8;          // Pin del botón para el servo motor
const int buttonMotorDC_Pin = 9;       // Pin del botón para el motor DC
const int motorDC_Pin = 6;             // Pin para controlar el transistor del motor DC

// Variables de estado
bool motorState = false;               // Estado del motor paso a paso
bool servoState = false;               // Estado del servo motor (mueve o no mueve)
bool motorDCState = false;             // Estado del motor DC (encendido o apagado)

// Variables para control de antirrebote
unsigned long lastPressTimeMotor = 0;
unsigned long lastPressTimeServo = 0;
unsigned long lastPressTimeMotorDC = 0;
unsigned long debounceDelay = 200;  // 200 ms de antirrebote

// Definir el servo motor
Servo myServo;
int servoPos = 0;                      // Posición del servo (0-180 grados)

void setup() {
    // Configurar pines del motor paso a paso
    for (int i = 0; i < 4; i++) {
        pinMode(motorPins[i], OUTPUT);
    }
    
    pinMode(buttonPin, INPUT_PULLUP);   // Pin del botón del motor paso a paso
    pinMode(buttonServoPin, INPUT_PULLUP);  // Pin del botón del servo motor
    pinMode(buttonMotorDC_Pin, INPUT_PULLUP);  // Pin del botón del motor DC
    
    pinMode(motorDC_Pin, OUTPUT);      // Configurar pin para el motor DC
    
    myServo.attach(10);  // Conecta el servo al pin 10
    
    Serial.begin(9600); // Para depuración
}

void loop() {
    // Leer el estado de los botones
    bool buttonState = digitalRead(buttonPin) == LOW;  // Motor paso a paso
    bool buttonServoState = digitalRead(buttonServoPin) == LOW;  // Servo motor
    bool buttonMotorDCState = digitalRead(buttonMotorDC_Pin) == LOW;  // Motor DC

    // Control de antirrebote para el motor paso a paso
    if (buttonState && (millis() - lastPressTimeMotor) > debounceDelay) {
        motorState = !motorState;   // Cambiar estado del motor paso a paso
        lastPressTimeMotor = millis();  // Actualizar el tiempo de la última pulsación
        Serial.println(motorState ? "Motor paso a paso iniciado" : "Motor paso a paso detenido");
    }

    // Control de antirrebote para el servo motor
    if (buttonServoState && (millis() - lastPressTimeServo) > debounceDelay) {
        servoState = !servoState;   // Cambiar estado del servo motor
        lastPressTimeServo = millis();  // Actualizar el tiempo de la última pulsación
        Serial.println(servoState ? "Servo motor activado" : "Servo motor detenido");
    }

    // Control de antirrebote para el motor DC
    if (buttonMotorDCState && (millis() - lastPressTimeMotorDC) > debounceDelay) {
        motorDCState = !motorDCState;  // Cambiar estado del motor DC
        lastPressTimeMotorDC = millis();  // Actualizar el tiempo de la última pulsación
        Serial.println(motorDCState ? "Motor DC encendido" : "Motor DC apagado");
    }

    // Control del motor paso a paso
    if (motorState) {
        moverMotorPasoAPaso();
    } else {
        detenerMotorPasoAPaso();
    }

    // Control del servo motor
    if (servoState) {
        moverServo();
    } else {
        detenerServo();
    }

    // Control del motor DC
    if (motorDCState) {
        digitalWrite(motorDC_Pin, HIGH);  // Enciende el motor DC
    } else {
        digitalWrite(motorDC_Pin, LOW);   // Apaga el motor DC
    }
}

// Función para mover el motor paso a paso
void moverMotorPasoAPaso() {
    for (int i = 0; i < 4; i++) {
        digitalWrite(motorPins[i], HIGH);
        delay(100);  // Tiempo entre pasos
        digitalWrite(motorPins[i], LOW);
    }
}

// Función para detener el motor paso a paso
void detenerMotorPasoAPaso() {
    for (int i = 0; i < 4; i++) {
        digitalWrite(motorPins[i], LOW);  // Apagar todas las bobinas
    }
}

// Función para mover el servo motor
void moverServo() {
    // Cambiar la posición del servo (puedes agregar lógica para diferentes posiciones)
    servoPos = (servoPos == 0) ? 180 : 0;  // Alterna entre 0 y 180 grados
    myServo.write(servoPos);  // Mover el servo
    delay(500);  // Esperar medio segundo entre movimientos
}

// Función para detener el servo motor (no es necesario, solo por completitud)
void detenerServo() {
    myServo.write(90);  // Mueve el servo a la posición neutral (90 grados)
}

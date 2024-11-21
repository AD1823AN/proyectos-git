const int btn1 = 9;
const int btn2 = 10;
const int R1 = 4;
const int am1 = 3;
const int ver1 = 2;

const int R2 = 7;
const int am2 = 6;
const int ver2 = 5;

const int T1 = 1000;
const int TP1 = 500;

void setup() {
  pinMode(btn1, INPUT);
  pinMode(btn2, INPUT);

  pinMode(R1, OUTPUT);
  pinMode(am1, OUTPUT);
  pinMode(ver1, OUTPUT);

  pinMode(R2, OUTPUT);
  pinMode(am2, OUTPUT);
  pinMode(ver2, OUTPUT);
}

void loop() {
  int Encendido = digitalRead(btn1);
  int Apagado = digitalRead(btn2);

  if (Encendido == HIGH) {
    while (true) { // Ciclo infinito
      if (digitalRead(btn2) == HIGH) { // Verifica si se presiona btn2
        apagarTodo();
        break; // Sale del ciclo infinito
      }

      // LED ROJO 1
      digitalWrite(R1, HIGH);
      digitalWrite(R2, LOW);
      digitalWrite(am1, LOW);
      digitalWrite(am2, LOW);
      digitalWrite(ver1, LOW);
      digitalWrite(ver2, HIGH);
      delay(T1);

      if (digitalRead(btn2) == HIGH) {
        apagarTodo();
        break;
      }

      // LED Amarillo 1
      digitalWrite(R1, HIGH);
      digitalWrite(R2, LOW);
      digitalWrite(am1, LOW);
      digitalWrite(am2, HIGH);
      digitalWrite(ver1, LOW);
      digitalWrite(ver2, LOW);
      delay(TP1);

      if (digitalRead(btn2) == HIGH) {
        apagarTodo();
        break;
      }

      // LED VERDE 1
      digitalWrite(R1, LOW);
      digitalWrite(R2, HIGH);
      digitalWrite(am1, LOW);
      digitalWrite(am2, LOW);
      digitalWrite(ver1, HIGH);
      digitalWrite(ver2, LOW);
      delay(T1);

      if (digitalRead(btn2) == HIGH) {
        apagarTodo();
        break;
      }

      // LED Amarillo 2
      digitalWrite(R1, LOW);
      digitalWrite(R2, HIGH);
      digitalWrite(am1, HIGH);
      digitalWrite(am2, LOW);
      digitalWrite(ver1, LOW);
      digitalWrite(ver2, LOW);
      delay(TP1);

      if (digitalRead(btn2) == HIGH) {
        apagarTodo();
        break;
      }

      // LED VERDE 2
      digitalWrite(R1, HIGH);
      digitalWrite(R2, LOW);
      digitalWrite(am1, LOW);
      digitalWrite(am2, LOW);
      digitalWrite(ver1, LOW);
      digitalWrite(ver2, HIGH);
      delay(T1);

      if (digitalRead(btn2) == HIGH) {
        apagarTodo();
        break;
      }
    }
  }
  
  if (Apagado == HIGH) {
    apagarTodo();
  }
}

void apagarTodo() {
  digitalWrite(R1, LOW);
  digitalWrite(R2, LOW);
  digitalWrite(am1, LOW);
  digitalWrite(am2, LOW);
  digitalWrite(ver1, LOW);
  digitalWrite(ver2, LOW);
}



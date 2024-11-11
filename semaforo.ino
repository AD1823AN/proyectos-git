int Rojo1 = 5;
int Ambar1 = 6;
int Verde1 = 7;
int Rojo2 = 8;
int Ambar2 = 9;

int Verde2 = 10;

void setup() {
  pinMode(Rojo1,OUTPUT); 
  pinMode(Ambar1,OUTPUT);
  pinMode(Verde1,OUTPUT);
  pinMode(Rojo2,OUTPUT);
  pinMode(Ambar2,OUTPUT);
  pinMode(Verde2,OUTPUT);
}

void loop() {
  //Ciclo semaforo2
  digitalWrite(Rojo1,HIGH);
  digitalWrite(Ambar1,LOW);
  digitalWrite(Verde1,LOW);
  
  digitalWrite(Rojo2,LOW);
  digitalWrite(Ambar2,LOW);
  digitalWrite(Verde2,HIGH);
  delay(3000);

  //Parpadeo semaforo2
  digitalWrite(Verde2,LOW);
  delay(1000);
  digitalWrite(Verde2,HIGH);
  delay(1000);
  digitalWrite(Verde2,LOW);
  delay(1000);
  digitalWrite(Verde2,HIGH);
  delay(1000);
  
  //Cambio semaforo2
  digitalWrite(Ambar2,HIGH);
  digitalWrite(Verde2,LOW);
  delay(1000);
  
  //Ciclo semaforo1
  digitalWrite(Rojo1,LOW);
  digitalWrite(Ambar1,LOW);
  digitalWrite(Verde1,HIGH);
  
  digitalWrite(Rojo2,HIGH);
  digitalWrite(Ambar2,LOW);
  digitalWrite(Verde2,LOW);
  delay(3000);

  //Parpadeo semaforo1
  digitalWrite(Verde1,LOW);
  delay(1000);
  digitalWrite(Verde1,HIGH);
  delay(1000);
  digitalWrite(Verde1,LOW);
  delay(1000);
  digitalWrite(Verde1,HIGH);
  delay(1000);
  
  //Cambio semaforo1
  digitalWrite(Ambar1,HIGH);
  digitalWrite(Verde1,LOW);
  delay(1000);
  
}
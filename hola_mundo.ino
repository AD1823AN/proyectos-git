void setup() {
  pinMode(13, OUTPUT);//Inicializamos el led incorporado en la propia placa como una salida  
  Serial.begin(9600);//Inicializamos el puerto serie como salida para poder ver mensajes en el monitor del mencionado puerto serie a 9600 baudios
}

void loop() {
  digitalWrite(13, HIGH);//Encendemos el led, HIGH es el voltaje en alta
  delay(1000);//Pausamos la ejecución durante 1 segundo
  digitalWrite(13, LOW);//Apagamos el led haciendo que el voltaje pase a baja
  delay(1000);//Pausamos la ejecución durante 1 segundo
}

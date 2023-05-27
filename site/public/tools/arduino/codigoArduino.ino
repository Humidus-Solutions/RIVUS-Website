const int switch_pin = 7;
int randNumber;

void setup() {
  Serial.begin(9600);
  randomSeed(analogRead(0));
  pinMode(switch_pin, INPUT);
}

void loop() {
  if (digitalRead(switch_pin) == HIGH) { // Verifica se o sensor TCRT5000 detectou presença
    randNumber = random(5); // Gera um número aleatório entre 0 e 4

    Serial.println(randNumber);
  } else {
    Serial.println(0);
  }
  
  delay(2000);
}


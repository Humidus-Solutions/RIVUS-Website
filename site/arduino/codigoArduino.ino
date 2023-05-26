#include "DHT.h"
#define dht_type DHT11
int switch_pin = 7;
long randNumber;
long randNumber2;
long randNumber3;
void setup() {
  Serial.begin(9600);
  pinMode(pushButton, INPUT);
  randomSeed(digitalRead(0));
}

void loop() {
  if(digitalRead(switch_pin) == LOW){
    randNumber = rand()%2;
    randNumber2 = rand()%2;
    randNumber3 = rand()%2;
    if(randNumber2 <= randNumber && randNumber3 <= randNumber2 && randNumber3 <= randNumber){
      if(randNumber == 1 && randNumber2 == 0 && randNumber3 == 0){
        Serial.println("Baixo");
      } else if(randNumber == 1 && randNumber2 == 1 && randNumber3 == 0){
        Serial.println("Medio");
      } else if(randNumber == 1 && randNumber2 == 1 && randNumber3 == 1){
        Serial.println("Cheio");
      } else {
        return loop;
      }
        
    } else {
        return loop;
      }
      
  } else {
    Serial.println("Vazio");
  }
  delay(2000);
}


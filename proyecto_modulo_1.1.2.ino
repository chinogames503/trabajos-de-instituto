#include <LiquidCrystal_I2C.h>
#include<Wire.h>
LiquidCrystal_I2C lcd(0x27,16,2);
  int led=8;
  int Buzzer=7;
  int trigger=3 ;
  int trigger2=4;
  int echo=2;
  int echo2=5
  int tiempo=0;
  int distancia=0;
  int contador=0;
void setup() {
  Wire.begin();
  lcd.begin(16,2);
  lcd.backlight();
  lcd.clear();
  Serial.begin(9600);
  pinMode(led,OUTPUT);
  pinMode(Buzzer,OUTPUT);
  pinMode(trigger,OUTPUT);
  pinMode(echo,INPUT);
  pinMode(trigger2,OUTPUT);
  pinMode(echo2,INPUT);
}

void loop() {
  digitalWrite(trigger,LOW);
  delay(2);
  digitalWrite(trigger,HIGH);
  delay(10);
  digitalWrite(trigger,LOW);
  tiempo=pulseIn(echo,HIGH);
  distancia=(tiempo/2)/29;
    digitalWrite(trigger2,LOW);
  delay(2);
  digitalWrite(trigger2,HIGH);
  delay(10);
  digitalWrite(trigger2,LOW);
  tiempo=pulseIn(echo2,HIGH);
  distancia=(tiempo/2)/29;
//  Serial.println(distancia);
  if(distancia<9){
    digitalWrite(led,HIGH);
    digitalWrite(Buzzer,HIGH);
    delay(100);
    digitalWrite(Buzzer,LOW);
  }else{
    digitalWrite(led,LOW);
    contador=contador;
    digitalWrite(Buzzer,LOW);
  }
  if(digitalRead(led)==HIGH)
  {
    contador++;
    delay(300);
    
  }
  if(contador>10){
    contador=1;
    lcd.restart();
  }
  Serial.println(contador);
  Serial.print(" ");
  Serial.print(distancia);
  Serial.print(" cm ");
  lcd.setCursor(0,0);
  lcd.print("Contar PERSONAS");
  lcd.setCursor(0,1);
  lcd.print("PERSONAS: ");
  lcd.print(contador);

}

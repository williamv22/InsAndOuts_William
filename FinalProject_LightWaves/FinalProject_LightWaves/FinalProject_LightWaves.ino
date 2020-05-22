const int SENSOR = A0; 
int val = 0;


void setup() {
  Serial.begin(9600);
  pinMode(8,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(2,OUTPUT);
}

void loop() {
  val = analogRead(SENSOR);
  val = val / 4;
  delay(100);

    if(val>150) {
    digitalWrite(8,HIGH);
    digitalWrite(5,HIGH);
    digitalWrite(4,HIGH);
    digitalWrite(2, HIGH);
    //Serial.println("lED ON!");
   }

    else if(val>120) {
    digitalWrite(8,HIGH);
    digitalWrite(5,LOW);
    digitalWrite(4,LOW);
    digitalWrite(2,LOW);
    //Serial.println("1 LED ON!");
   }

    else if(val>100) {
    digitalWrite(8,HIGH);
    digitalWrite(5,HIGH);
    digitalWrite(4,LOW);
    digitalWrite(2,LOW);
    //Serial.println("2 LED ON!");
   }

   else {
    digitalWrite(8,LOW);
    digitalWrite(5,LOW);
    digitalWrite(4,LOW);
    digitalWrite(2,LOW);
    //Serial.println("LED OFF!");
   }

   Serial.write(val);
} 

int val;

#define controlPin 0
#define relayPin 1
#define tempPin 3

void setup() {
  
  pinMode(controlPin, OUTPUT);
  pinMode(relayPin, OUTPUT);
  pinMode(tempPin, INPUT);

  digitalWrite(controlPin, HIGH);
  
}

void loop() {

  val = analogRead(tempPin);
  float mv = (val/1024.0)*5000;
  float cel = mv/10;

  if (cel>25){
    digitalWrite(relayPin, HIGH);
    delay(300);
    digitalWrite(relayPin, LOW);
    delay(300);
  }
  else {
    delay(300);
  }
  
  
}

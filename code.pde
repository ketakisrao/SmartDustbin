int count,data;
int m1=3,m2=9;
int n1=4,n2=10;
int relay=5;
void setup()
{
  Serial.begin(9600);
  pinMode(m1,OUTPUT);
  pinMode(m2,OUTPUT);
  pinMode(n1,OUTPUT);
  pinMode(n2,OUTPUT);
  pinMode(relay,OUTPUT);
  digitalWrite(relay,LOW);
  
}
void loop()
{count=0;
  //digitalWrite(pin,HIGH);
  Serial.println("charging");
  delay(5000);
  
  while(true)
  {
    if(analogRead(A1)>120)
    //if(digitalRead(5)==HIGH)
    break;
  }
  Serial.println(analogRead(A1));

 digitalWrite(relay,HIGH);
   data=analogRead(A2);
  Serial.println("discharging");
  while(data>400)
  {
    data=analogRead(A2);
    Serial.println("while");
  delay(1000);
    count++;
    Serial.println(count);
  }
  Serial.println(count);
   if(count>0 && (count<16||count>99))
    {
      Serial.println("Check metal or plastic");
      analogWrite(m1,128);
      digitalWrite(m2,LOW);
      delay(400);
      digitalWrite(m1,LOW);
      digitalWrite(m2,LOW);
      delay(3000);
      digitalWrite(m1,LOW);
      digitalWrite(m2,HIGH);
      delay(150);
      digitalWrite(m1,LOW);
      digitalWrite(m2,LOW);
      Serial.println("Motor performed");
    }
    else
    {
      Serial.println("Check bio");
      analogWrite(n1,128);
      digitalWrite(n2,LOW);
      delay(200);
      digitalWrite(n1,LOW);
      digitalWrite(n2,LOW);
      delay(2000);
      digitalWrite(n1,LOW);
      digitalWrite(n2,HIGH);
      delay(175);
      digitalWrite(n1,LOW);
      digitalWrite(n2,LOW);
      Serial.println("Motor performed");
    }//digitalWrite(relay,LOW);  
}

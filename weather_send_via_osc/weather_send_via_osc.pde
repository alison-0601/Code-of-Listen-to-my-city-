import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;


JSONArray values;
/*int dt;
int humidity;
int temp;
int speed;
int all;
int id;*/

void setup()
{
  oscP5 = new OscP5(this,1234);
   myRemoteLocation = new NetAddress("127.0.0.1",5555);
  
  values = loadJSONArray("weather2014-15.json");

  for (int i = 0; i < values.size(); i++) {
    
    JSONObject whole = values.getJSONObject(i); 

    int dt = whole.getInt("dt");
    
    JSONObject main = whole.getJSONObject("main");
    int humidity = main.getInt("humidity");
    int temp = main.getInt("temp");
    
    JSONObject wind = whole.getJSONObject("wind");
    int speed = wind.getInt("speed");
    
    JSONObject clouds = whole.getJSONObject("clouds");
    int all = clouds.getInt("all");
    
    //int city_id = whole.getInt("city_id");
    
    
    JSONArray array = whole.getJSONArray("weather");
    
    JSONObject weather = array.getJSONObject(0);
    int id = weather.getInt("id");
    
    OscMessage myMessage = new OscMessage("/test");
    myMessage.add(new int[]{int(humidity)});
    myMessage.add(new int[]{int(temp)});
    myMessage.add(new int[]{int(speed)});
    myMessage.add(new int[]{int(all)});
    myMessage.add(new int[]{int(id)});
    oscP5.send(myMessage, myRemoteLocation); 
    delay(200);
    
   // println(dt+" "+humidity+" "+temp+" "+speed+" "+all+" "+id);
   
  }
}

void draw()
{
  
 }



void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
}

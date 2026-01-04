import static javax.swing.JOptionPane.*;
JSONObject json;

String ChildsAGE = showInputDialog ("Enter your child's age");
String ChildsFOOT = showInputDialog ("Enter your child's foot length");
float Childsage = float (ChildsAGE);
float FootLength = float (ChildsFOOT);

void setup() {
  json = new JSONObject();

  if (Childsage >= 0 && Childsage <= 3 && FootLength == 8.1) { 
    json.setInt("US", 0);
    json.setInt("UK", 1);
    json.setInt("EU", 16);
    
    saveJSONObject(json, "data/new.json");
  }
  
  json = loadJSONObject("data.json");

  int UsSize = json.getInt("US");
  int UkSize = json.getInt("UK");
  int EuSize = json.getInt("EU");

  println("US: " + UsSize + "K");
  println("US: " + UkSize + "K");
  println("US: " + EuSize);
}
void draw() { 
}

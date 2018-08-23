// Need G4P library
import g4p_controls.*;
import processing.serial.*;

static float[] LFO_FREQ = {3.98, 5.56, 6.02, 6.37, 6.88, 9.63, 48.1, 72.2};
Serial arduino;
byte ucLFOPrevValue = 9;
byte RegLFO = 0x00;
boolean bRegLFOChanged = true;

public void setup(){
  size(480, 320, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  
  String portName = Serial.list()[2];
  println(portName);
  arduino = new Serial(this, portName, 9600);
  
}

public void draw(){
  float fLFOValue = knbLFO.getValueF();
  byte ucLFOValue = byte (fLFOValue - 1);
  textLFO.setText ( str(LFO_FREQ [ucLFOValue]) );
  textfield1.setText ( str(RegLFO) );
  
  if ( abs ( float(ucLFOValue+1) - fLFOValue) <= 0.001) 
  {
    if (ucLFOPrevValue != ucLFOValue)
    {
      ucLFOPrevValue = ucLFOValue;
      RegLFO = byte( (RegLFO & 0xF8) | ucLFOValue);
      
      bRegLFOChanged = true;      
    }
  }

  if (bRegLFOChanged)
  {
    println ("Sending LFO Value of " + str (RegLFO));
    
    arduino.write(0x22);
    arduino.write(RegLFO);
    
    bRegLFOChanged = false;
  }
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}

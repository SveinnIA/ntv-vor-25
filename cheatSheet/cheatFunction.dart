import 'dart:io';

void main() {
  bool myLightSwitch = true;
  while (true) {
    myLightSwitch = turnOnOrOff(myLightSwitch);
    displayLightBulbStatus(myLightSwitch);
    print('Should we check again?');
    stdin.readLineSync();
  }
}
bool turnOnOrOff(bool lightSwitch) {
  return !lightSwitch;
bool result;
  if (lightSwitch == true){
    result = false;
  }else {
    result = true;
  }

  return false;
}
void displayLightBulbStatus (bool lightSwitch){
  if (lightSwitch == true) {
    print('Light is ON');
  } else {
    print('The light is OFF');
  }
  print('The light is ');
  print(lightSwitch ?'On' : 'Off');
}
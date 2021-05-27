/*
  Extension are the way to add functionality to existing libraries.
  For example, we can add our own functionality to String type.

  Example:
*/

extension ParsingNum on String {
  int parseToInt(){
    return int.parse(this);
  }
}

void main(){

  int val = '23'.parseToInt();
  print(val);
}
/*
  Stream provides the way to receive the sequence of events (data or error event).
  A stream is like a pipe, we put a value on the one end and if there’s a listener on the other end that listener will receive that value. A Stream can have multiple listeners and all of those listeners will receive the same value when it’s put in the pipeline.



*/


import 'dart:async';

void main(){

  StreamController<double> controller = new StreamController<double>();

}

// final myStream = NumberCreater